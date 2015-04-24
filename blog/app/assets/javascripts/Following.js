function followEvent (user_id, event_id) { 
$.ajax({ 
type: "post",
 url:"/follow?user_id=" + user_id + "&event_id=" + event_id, 
 success:function(data) { 
 	$("#follow-event").text('unfollow') 
 	$("#follow-event").addClass('unfollow-btn')
 	 }
 	  }); 
}
 $(document).on('click', '#follow-eventt', function(){
  followEvent($("#hidden-user-id").text(), $("#hidden-event-id").text()); 
});