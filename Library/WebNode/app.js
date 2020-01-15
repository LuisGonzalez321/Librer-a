'use strict'

var express=require('express');
var bodyParser=require('body-parser');

var mssql=require('mssql');

var http=require('http');
var path=require('path');

app.use(bodyParser.urlencoded({
    extended:false;
}));
app.use(bodyParser.json());
