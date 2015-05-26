$(function () {
	var tosearch;
	var element = $("#app");
	$(".search-input").keyup(function (e) {
		tosearch = $(this).val();
		tosearch = tosearch.split(" ");
		
		element.find(".title-container").each(function (index, item) {
			var show = false;
			for(var i=0; i < tosearch.length; i++) {
				if($(item).html().toLowerCase().indexOf(tosearch[i].toLowerCase()) >= 0) {
					show = true;
				}
			}
			
			if (show) {
				$(item).parents(".notification").show();
			} else {
				$(item).parents(".notification").hide();
			}
		});
	});
	
});
