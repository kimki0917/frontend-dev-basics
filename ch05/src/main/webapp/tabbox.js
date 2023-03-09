var TabBox = {
	_onTabClicked:	function(){
		$('.tab-box li.selected').removeClass("selected");
		$(this).addClass("selected");		
	},
		init: function(){
			console.log(this);
			//$(function(){
				/*$('.tab-box li').click(function(){
					$('.tab-box li.selected').removeClass("selected");
					$(this).addClass("selected");
					});*/
					console.log(this);
			//});
		}
}
