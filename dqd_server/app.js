const express = require("express");
const bodyParser = require("body-parser");
const index = require("./routes/home");
const match = require("./routes/match");
const data = require("./routes/data");
// 创建web服务器
var server = express();

//跨域配置
// const cors = require("cors");
// server.use(cors({
//   origin:["http://127.0.0.1:8080",
//   "http://localhost:8080"],
//   credentials:true
// }))

// 添加session功能
const session = require('express-session');
server.use(session({
  secret: "128位字符串",
  resave: false,
  saveUninitialized: true
}))

server.listen(3000);
// 托管静态资源到public目录下
server.use( express.static("public") );
// 使用body-parser中间件
server.use( bodyParser.urlencoded({
  extended: false
}));
// 挂载路由器,挂载到/index
server.use( "/index",index );
server.use( "/match",match );
server.use( "/data",data );


