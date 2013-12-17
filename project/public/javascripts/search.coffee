$('.go-button').click ->
	search = $('.go').val()
	if search
		$.getJSON '/search',{"words":search},(json)->
			document.write json.result
	else
		alert '请输入查找内容'
$(".go").keypress (event)->
	if event.keyCode is 13
		$(".go-button").triggerHandler 'click'
contentCenter = (element) ->
	hgt = $(element).outerHeight()
	wdt = $(element).outerWidth()
	$(element).css {position:'absolute',top:"50%",left:"50%",marginTop:String(-hgt/2)+"px",marginLeft:String(-wdt/2)+"px"}
topLayer = (content)->
	_topLayer = $ ".topLayer"
	wdt = $(document).width()
	hgt = $(document).height()
	_topLayer.height(hgt).width(wdt)
	_topLayer.css {'background-color':'rgba(0,0,0,0.6)','position':'absolute',top:"0",left:"0","z-index":"100000"}
	if content
		div = $ "<div></div>"
		_content = $(content).clone(true)
		_topLayer.append div
		div.height($(window).height()).width($(window).width())
		marginTop = $(window).scrollTop()
		div.css {position:"relative",marginTop:marginTop}
		div.append _content
		_content.fadeIn 200
		contentCenter _content
$(".login-button").click ->
	topLayer $('.login')
$(".register-button").click ->
  topLayer $('.register')
$(".delete").click ->
  $('.topLayer').empty()
  $('.topLayer').height(0)
$(".register-submit").click ->
  account =$(".account").val()
  password = $(".password").val()
  $.post "/register",{account:account,password:password},(data)->
    alert data
$ ->
	whgt = $(window).height()
	wwdt = $(window).width()
	$(".wrap").height(whgt).width(wwdt)
	contentCenter $(".search")[0]
		
