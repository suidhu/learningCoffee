$('.button').click ->
	search = $('.go').val()
	if search
		$.getJSON '/search',{"words":search},(json)->
			document.write json.result
	else
		alert '请输入查找内容'
$(".go").keypress (event)->
	if event.keyCode is 13
		$(".button").triggerHandler 'click'
contentCenter = (element) ->
	hgt = $(element).outerHeight()
	wdt = $(element).outerWidth()
	$(element).css {position:'absolute',top:"50%",left:"50%",marginTop:String(-hgt/2)+"px",marginLeft:String(-wdt/2)+"px"}
topLayer = (content)->
	topLayer = $ ".topLayer"
	wdt = $(document).width()
	hgt = $(document).height()
	topLayer.height(hgt).width(wdt)
	topLayer.css {'background-color':'rgba(0,0,0,0.6)','position':'absolute',top:"0",left:"0","z-index":"100000"}
	if content
		div = $ "<div></div>"
		topLayer.append div
		div.height($(window).height()).width($(window).width())
		marginTop = $(window).scrollTop()
		div.css {position:"relative",marginTop:marginTop}
		_content = $(content).clone()
		div.append _content
		contentCenter _content
$(".login,.register").click ->
	topLayer()
$ ->
	whgt = $(window).height()
	wwdt = $(window).width()
	$(".wrap").height(whgt).width(wwdt)
	contentCenter $(".search")[0]
		
