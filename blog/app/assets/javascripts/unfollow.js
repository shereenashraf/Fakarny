function unfollowIntrest (user_id, intrest_id) {
	
  $.ajax({
	type: "post",
    url:"/unfollow?user_id=" + user_id + "&intrest_id=" + intrest_id,  
    success:function(data) {
     
     $("#unfollow-intrest").text('unfollow')
     $("#unfollow-intrest").addClass('unfollow-btn')
    }
  });

}

$(document).on('click', '#unfollow-intrest', function(){
	unfollowIntrest($("#hidden-user-id").text(), $("#hidden-intrest-id").text());
});
