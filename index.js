
//run socket.io
var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);
//run shell script
var sys = require('util')
var exec = require('child_process').exec;

app.get('/', function(req, res,next) {  
    res.sendFile(__dirname + '/index.html');
});


io.on('connection', function(socket){

//Mesage
    socket.on('Cmessage', function(msg){
    io.emit('Cmessage', msg);
    console.log('message: ' + msg);
//Mesage shell script
	function puts(error, stdout, stderr) {sys.puts(stdout)}
    exec("./helloworld.sh", puts);
  });

//TRX
    socket.on('TurnOnTRX', function(msg){
    io.emit('TurnOnTRX', msg);
    console.log('TRX: ON');
//TRX shell script
        function puts(error, stdout, stderr) {sys.puts(stdout)}
    exec("./TurnOnTRX.sh", puts);
  });

//TRX
    socket.on('TurnOnTRX', function(msg){
    io.emit('TurnOnTRX', msg);
    console.log('TRX: ON');
//TRX shell script
	function puts(error, stdout, stderr) {sys.puts(stdout)}
    exec("./TurnOnTRX.sh", puts);
  });


//BTS
    socket.on('TurnOnBTS', function(msg){
    io.emit('TurnOnBTS', msg);
    console.log("BTS is On");
//BTS shell script
    function puts(error, stdout, stderr) {sys.puts(stdout)}
    exec("./TurnOnBTS.sh", puts)
});



//BSC
    socket.on('TurnOnBSC', function(msg){
    io.emit('TurnOnBSC', msg);
    console.log('BSC: ON');
//BSC shell script
  function puts(error, stdout, stderr) {sys.puts(stdout)}
    exec("./TurnOnBSC.sh", puts);
  }); 
//USB0
    socket.on('TurnOnUSB0', function(msg){
    io.emit('TurnOnUSB0', msg);
    console.log('USB0: ON');
//USB0 shell script
  function puts(error, stdout, stderr) {sys.puts(stdout)}
    exec("./osmoUSB0.sh", puts);
  });
//USB1
    socket.on('TurnOnUSB1', function(msg){
    io.emit('TurnOnUSB1', msg);
    console.log('USB1: ON');
//USB0 shell script
  function puts(error, stdout, stderr) {sys.puts(stdout)}
    exec("./osmoUSB1.sh", puts);
  }); 


http.listen(3000, function(){
  console.log('listening on *:3000');
});
