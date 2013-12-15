models = require '../models'
exports.home = (req,res)->
	res.render 'home'
	return

Search = models.Search
exports.search = (req , res )->
	words =  req.query.words
	Search.findOne {keyword : words} , ( err , data )->
		if data
			res.send {result : data.result}
		else
			res.send {result :"sorry! we can't find "+"<em>"+words+"</em>"}
		return	


	

	
