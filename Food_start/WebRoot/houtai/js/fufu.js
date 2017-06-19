$(function() {
	// 桌子切换；
	$("#all").click(function() {
		$("#u4>li").show();
		$("#u8>li").show();
		$("#u10>li").show();
	});

	$("#four").click(function() {
		$("#u4>li").show();
		$("#u8>li").hide();
		$("#u10>li").hide();
	});
	$("#eight").click(function() {
		$("#u8>li").show();
		$("#u4>li").hide();
		$("#u10>li").hide();
	});
	$("#ten").click(function() {
		$("#u10>li").show();
		$("#u4>li").hide();
		$("#u8>li").hide();
	});
	// 桌子点击事件；
	$("#bb>ul>li>button").click(function(e) {
		$("#div-span").html($(e.target).val());
		$("#btm").width($(document).width());
		$("#btm").height($(document).height());
		$("#sr").css("background-color", "white");
		$("#btm").show();
		$("#sr").show();

	});
	$("#close1").click(function() {
		$("#btm").hide();
		$("#sr").hide();
	});

});
$(function(){});