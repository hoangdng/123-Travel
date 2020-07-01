$(".form-element").on("change", function () {
    var form = $("#filter-form").serialize();
    $.ajax({
        type: 'POST',
        url: "/Home/FilterIndex",
        data: form,
        success: function (data) {
            $('#newsfeed').html(data);
        }
    });
});

$(".form-element").on("input", function () {
    var form = $("#filter-form").serialize();
    $.ajax({
        type: 'POST',
        url: "/Home/FilterIndex",
        data: form,
        success: function (data) {
            $('#newsfeed').html(data);
        }
    });
});

$(".card").on("click", function () {
    var id = $(this).data('id') + '';
    var title = $(this).data('title');
    var image = $(this).data('image') + '';
    var date = $(this).data('date');
    $("#myModalLabel").text(title);
    $("#date").text(date);
    $("#detail-btn").attr("href", "Posts/Details/" + id);
    $("#image-thumbnail").attr("src", "/images/" + image);
});

$("#searchRDF-form").on('submit', function (event) {
    event.preventDefault();
    var form = $("#searchRDF-form").serialize();
    $.ajax({
        type: 'POST',
        url: "/Posts/SearchPosts",
        data: form,
        success: function (data) {
            $('#post-by-theme').html(data);
        }
    });
});