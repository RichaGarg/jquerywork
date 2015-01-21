//=require jquery.js
//=require jquery-ui.min.js
//=require bootstrap.min.js
//=require ajaxshow.js
if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}