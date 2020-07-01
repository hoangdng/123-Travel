using System;
using System.IO;
using System.Net;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http.Features;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using SemanticWeb.Data;
using SemanticWeb.Models;
using SemanticWeb.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using VDS.RDF.Query;
using VDS.RDF.Parsing;
using VDS.RDF;

namespace SemanticWeb.Controllers
{
    public class PostsController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<CustomUser> _userManager;

        private readonly IWebHostEnvironment _webHostEnvironment;
        public PostsController(ApplicationDbContext context, IWebHostEnvironment webHostEnvironment, UserManager<CustomUser> userManager)
        {
            _webHostEnvironment = webHostEnvironment;
            _context = context;
            _userManager = userManager;
        }

        // GET: Posts
        [Authorize(Roles = "Administrator")]
        public async Task<IActionResult> Index()
        {
            return View(await _context.Posts.ToListAsync());
        }

        // GET: Posts/FindByArea
        public ActionResult Theme()
        {
            return View();
        }

        // GET: Posts/PostsByArea/haichau
        public async Task<IActionResult> PostsByTheme(string theme)
        {
            var postsByTheme = new List<Post>();

            SparqlParameterizedString queryString = new SparqlParameterizedString();
            queryString.Namespaces.AddNamespace("has", new Uri("https://localhost:44331/Posts/"));
            string subject = "<https://localhost:44331/Posts/PostsByTheme?theme=" + theme + ">";
            queryString.CommandText = "SELECT ?post where {" + subject + " has:Details ?post} ";


            SparqlQueryParser parser = new SparqlQueryParser();
            SparqlQuery query = parser.ParseFromString(queryString);

            IGraph g = new Graph();
            FileLoader.Load(g, "C:\\Users\\nguye\\Desktop\\123-Travel-master\\Data\\danang.rdf");

            Object results = g.ExecuteQuery(query);
            if (results is SparqlResultSet)
            {
                SparqlResultSet rset = (SparqlResultSet)results;
                foreach (SparqlResult r in rset)
                {
                    var postTitle = r.ElementAt(0).Value.ToString();
                    var post = await _context.Posts.Where(p => p.Title == postTitle).FirstOrDefaultAsync();
                    postsByTheme.Add(post);
                }
            }

            return View(postsByTheme);
        }

        // GET: Posts/PostsByArea/haichau
        public async Task<IActionResult> SearchPosts(IFormCollection collection)
        {
            var searchString = collection["searchStringRDF"][0].ToString();
            var searchWords = searchString.Split(" ");
            var list = new List<Post>();

            SparqlParameterizedString queryString = new SparqlParameterizedString();
            queryString.Namespaces.AddNamespace("nr", new Uri("https://localhost:44331/"));
            if (searchWords.Contains("biển") || searchWords.Contains("núi"))
            {
                string keyword = searchWords.Where(w => w == "biển" || w == "núi").FirstOrDefault();
                queryString.CommandText = "SELECT ?area where {?area nr:Near '" + keyword + "'@vn}";
            }
            else if (searchWords.Contains("beach") || searchWords.Contains("mountain"))
            {
                string keyword = searchWords.Where(w => w == "beach" || w == "mountain").FirstOrDefault();
                queryString.CommandText = "SELECT ?area where {?area nr:Near '" + keyword + "'@en}";
            }
            else if (searchString == "")
            {
                queryString.Namespaces.AddNamespace("has", new Uri("https://localhost:44331/Posts/"));
                queryString.CommandText = "SELECT ?post where {?theme has:Details ?post} ";
            }

            SparqlQueryParser parser = new SparqlQueryParser();
            SparqlQuery query = parser.ParseFromString(queryString);
            IGraph g = new Graph();
            FileLoader.Load(g, "C:\\Users\\nguye\\Desktop\\123-Travel-master\\Data\\danang.rdf");

            Object results = g.ExecuteQuery(query);
            if (results is SparqlResultSet)
            {

                SparqlResultSet rset = (SparqlResultSet)results;
                foreach (SparqlResult r in rset)
                {
                    if (searchString == "")
                    {
                        var postTitle = r.ElementAt(0).Value.ToString();
                        var post = await _context.Posts.Where(p => p.Title == postTitle).FirstOrDefaultAsync();
                        list.Add(post);
                    }
                    else
                    {
                        int lastSlash = r.ToString().LastIndexOf('/');
                        string area = r.ToString().Substring(lastSlash + 1).ToLower();
                        var posts = await _context.Posts.Where(p => p.Area.Name == area).ToListAsync();
                        list.AddRange(posts);
                    }
                }
            }

            return PartialView("~/Views/Home/NewsFeedPartial.cshtml", list);
        }

        // GET: Posts/History
        public ActionResult ViewHistory()
        {
            var currentUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var postsOfCurrentUser = _context.Posts.Where(post => post.UserID == currentUserId);
            return View(postsOfCurrentUser.ToList());
        }

        // GET: Posts/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var post = await _context.Posts.FirstOrDefaultAsync(m => m.Id == id);
            var comments = await _context.Comments.Where(comment => comment.PostId == id).ToListAsync();

            CommentViewModel commentViewModel = new CommentViewModel()
            {
                Post = post,
                Comments = comments

            };

            return View(commentViewModel);
        }

        // GET: Posts/Create
        [Authorize]
        public IActionResult Create()
        {
            return View();
        }

        // POST: Posts/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Title,Content,AreaId,ImageURL")] PostViewModel vm)
        {
            var currentUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            vm.UserID = currentUserId;
            var area = _context.Areas.Where(a => a.AreaId == vm.AreaId).FirstOrDefault();
            string stringFileName = UploadFile(vm);
            var post = new Post()
            {
                Title = vm.Title,
                Content = vm.Content,
                DatePosted = vm.DatePosted,
                UserID = vm.UserID,
                AreaId = vm.AreaId,
                Area = area,
                ImageURL = stringFileName
            };
            if (ModelState.IsValid)
            {
                await _context.AddAsync(post);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(ViewHistory));
            }
            return View(vm);
        }

        private string UploadFile(PostViewModel vm)
        {
            string fileName = null;
            if (vm.ImageURL != null)
            {
                string uploadDir = Path.Combine(_webHostEnvironment.WebRootPath, "images");
                fileName = Guid.NewGuid().ToString() + "-" + vm.ImageURL.FileName;
                string filePath = Path.Combine(uploadDir, fileName);
                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    vm.ImageURL.CopyTo(fileStream);
                }
            }
            return fileName;
        }

        // GET: Posts/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var post = await _context.Posts.FindAsync(id);
            if (post == null)
            {
                return NotFound();
            }

            return View(post);
        }

        // POST: Posts/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Title,Content,AreaId,ImageURL")] Post post)
        {
            if (id != post.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    var currentUserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                    post.UserID = currentUserId;
                    _context.Update(post);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PostExists(post.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(ViewHistory));
            }
            return View(post);
        }
        // GET: Posts/Delete/5

        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var post = await _context.Posts
                .FirstOrDefaultAsync(m => m.Id == id);
            if (post == null)
            {
                return NotFound();
            }

            return View(post);
        }

        // POST: Posts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]

        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var post = await _context.Posts.FindAsync(id);
            _context.Posts.Remove(post);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(ViewHistory));
        }

        private bool PostExists(int id)
        {
            return _context.Posts.Any(e => e.Id == id);
        }

        public PartialViewResult AddComment(IFormCollection collection)
        {
            int postId = Convert.ToInt32(collection["postId"][0]);
            var currentPost = _context.Posts.Where(p => p.Id == postId).FirstOrDefault();
            string username = collection["userId"][0];
            Comment newComment = new Comment()
            {
                Content = collection["comment"][0],
                Username = username,
                PostId = currentPost.Id,
                Post = currentPost
            };
            _context.Add(newComment);
            _context.SaveChanges();

            CommentViewModel commentViewModel = new CommentViewModel()
            {
                Post = currentPost,
                Comments = currentPost.Comments
            };

            return PartialView("CommentPartial", commentViewModel);
            //return RedirectToAction("Details", new { id = postId });
        }
    }
}
