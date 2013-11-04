$(function() {
	$(window).scroll(function() {
		var url = $('.pagination .next_page').attr('href');
		if ( url && $(window).scrollTop() >= $(document).height() - $(window).height() ) {
			$(".pagination").text("Let's see more tweets...");
			return $.getScript(url);
		}
	});
	return $window.scroll();
});