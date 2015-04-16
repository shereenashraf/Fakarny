function followIntrest (user_id, intrest_id) {
	
  $.ajax({
	type: "post",
    url:"/follow?user_id=" + user_id + "&intrest_id=" + intrest_id,  
    success:function(data) {
     
     $("#follow-intrest").text('unfollow')
     $("#follow-intrest").addClass('unfollow-btn')
    }
  });

}

$(document).on('click', '#follow-intrest', function(){
	followIntrest($("#hidden-user-id").text(), $("#hidden-intrest-id").text());
});
