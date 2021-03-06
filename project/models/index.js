// Generated by CoffeeScript 1.6.3
(function() {
  var Search, User, mongoose, searchSchema, userSchema;

  mongoose = require('mongoose');

  mongoose.connect("mongodb://127.0.0.1:8080/test");

  searchSchema = mongoose.Schema({
    keyword: String,
    result: String
  });

  Search = mongoose.model('Search', searchSchema);

  exports.Search = Search;

  userSchema = mongoose.Schema({
    account: {
      type: String,
      index: true,
      unique: true
    },
    password: String,
    date: {
      type: Date,
      "default": Date.now
    },
    profile: {
      name: String,
      sex: String,
      age: Number,
      state: String,
      bathday: Date,
      city: String,
      phone: Number,
      email: String,
      portral: String,
      cover: String,
      hobby: [String]
    },
    albums: [
      {
        numbers: Number,
        name: String,
        theme: String,
        describe: String,
        date: {
          type: Date,
          "default": Date.now
        },
        photoes: [
          {
            url: String,
            name: String,
            describe: String,
            date: {
              type: Date,
              "default": Date.now
            }
          }
        ],
        cover: {
          url: String
        }
      }
    ]
  });

  User = mongoose.model("User", userSchema);

  exports.User = User;

}).call(this);
