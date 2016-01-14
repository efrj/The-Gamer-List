//main

$(document).ready(function(){
  $.ajax({
    method: "GET",
    url: "/genre/menu",
    success:function(data){
      $('#genres-menu').html(data);
    },
    error: function(data){
      console.log(data);
    }
  });
});