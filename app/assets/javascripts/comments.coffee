$(document).on "ajax:success", "form#comments-form", (ev,data) ->
	$(this).find("textarea").val("")
	$("#comments-box").append("<li class='comment'>#{data.body}-#{data.user}</li>")
