﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using SemanticWeb.Data;
using SemanticWeb.Models;


namespace SemanticWeb.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _context.Posts.ToListAsync());
        }

        public IActionResult Contact()
        {
            return View();
        }

        public PartialViewResult FilterIndex(IFormCollection collection)
        {
            var filteredPosts = _context.Posts.Select(p => p);
            //Filtered by posted date
            var duration = collection.ContainsKey("duration") == false ? "all" : collection["duration"][0];
            switch (duration)
            {
                case "today":
                    filteredPosts = filteredPosts.Where(p => p.DatePosted.Date == DateTime.Now.Date);
                    break;
                case "3days":
                    filteredPosts = filteredPosts.Where(p => p.DatePosted.Date.AddDays(3) >= DateTime.Now.Date);
                    break;
                case "week":
                    filteredPosts = filteredPosts.Where(p => p.DatePosted.Date.AddDays(7) >= DateTime.Now.Date);
                    break;
                default:
                    break;
            }

            //Filter by area
            var area = collection.ContainsKey("area") == false ? "all" : collection["area"][0];
            if (area != "all")
                filteredPosts = filteredPosts.Where(p => p.Area.Name == area);
            
            //Search by title
            var search = collection.ContainsKey("searchcontent").ToString() == "" ? "all" : collection["searchcontent"][0];
            if (search != "all")
                filteredPosts = filteredPosts.Where(p => p.Title.Contains(search));

            return PartialView("NewsFeedPartial", filteredPosts.ToList());
        
        }

        public async Task<IActionResult> Subscribe()
        {
            string email = HttpContext.Request.Form["sub_email"];
            if (!_context.Subscribers.Any(s => s.Email == email))
            {
                Subscriber s = new Subscriber
                {
                    Email = email
                };
                _context.Subscribers.Add(s);
                await _context.SaveChangesAsync();
                return View();
            }
            else
            {
                return View();
            }
        }
        public async Task<IActionResult> Unsubscribe()
        {
            string mailid = HttpContext.Request.Query["mailid"].ToString();
            var mail = await _context.Subscribers.FirstOrDefaultAsync(m => m.Email == mailid);
            _context.Subscribers.Remove(mail);
            await _context.SaveChangesAsync();
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

    }
}
