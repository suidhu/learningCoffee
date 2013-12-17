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
    
exports.login = (req , res )->
 return

exports.register = (req , res )->
  User = models.User
  newUser=new User({account : req.body.account,password : req.body.password})
  newUser.save (err,user)->
    res.send("Wellcome to join us"+ user.account+"!!")

exports.logout = (req , res )->
  return

exports.persion = (req , res ) ->
  return




	

	
