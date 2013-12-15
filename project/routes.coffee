handlers = require "./handlers"


#set routes function
routes = (app)->
	app.get '/', handlers.home
	app.get '/search' , handlers.search

	return

#export routes	
module.exports = routes

