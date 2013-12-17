handlers = require "./handlers"


#set routes function
routes = (app)->
	app.get '/', handlers.home
	app.get '/search' , handlers.search
	app.post '/login' , handlers.login
	app.post '/logout' , handlers.logout
	app.post '/register' , handlers.register
	app.get '/persion' , handlers.persion

	return

#export routes	
module.exports = routes

