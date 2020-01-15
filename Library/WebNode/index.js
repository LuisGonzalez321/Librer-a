'use strict'

var mssql=require('mssql');

var app=require('./app');

app.set('view engine','ejs');

var port = process.env.PORT || 5000;

var config={
    user:'sa',
    password:'sa',
    server:'GABRIEL-PC',
    port:'1433',
    database:'Library'
};

var connection=mssql.connect(config,function(err,res) {
	if(err){
       throw err;
	}else{
		console.log("Conexion exitosa");
		app.listen(port,function(){
            console.log("Api Rest Running http://localhost:"+port);
		});
	}
});

module.exports=app;