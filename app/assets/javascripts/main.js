//main

$(document).ready(function() {
    $.ajax({
        method: "GET",
        url: "/genre/menu",
        success:function(data) {
            $('#genres-menu').html(data);
        },
        error: function(data) {
            console.log(data);
        }
    });

    $('.pagination li').each(function(){
        var pageCurrent = $(this).data('page');
        var classActive = $(this).attr('class');
        if (classActive == 'active') {
            $(this).html('<a href="#">' + pageCurrent + '</a>');
        }
    });

    var heights = ["0"];
    $('.thumbnail-games').each(function(){
        heights.push($(this).height());
    });
    var divHeight = Math.max.apply(null, heights);
    $('.thumbnail-games').css('height',divHeight);
});



$('.carousel').carousel({
    interval: 5000
})