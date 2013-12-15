mongoose = require 'mongoose'
mongoose.connect "mongodb://127.0.0.1:8080/test"


searchSchema = mongoose.Schema { keyword :String , result:String }
Search = mongoose.model 'Search' , searchSchema
exports.Search = Search


