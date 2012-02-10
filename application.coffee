#!/usr/bin/env coffee

express = require "express"

app = express.createServer()

app.use express.static(__dirname + '/public')

app.get '/', (req, res) ->
	res.render 'home.ejs'
	return
	
app.listen process.env.PORT or 5000
