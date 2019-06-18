// 首页路由
const express = require("express");
const pool = require("../pool")
// 创建路由器对象
var router = express.Router();
// 添加路由
// 轮播图
router.get('/carousel',(req,res)=>{
  // res.send('轮播图')
  var sql = `
  select cid,cimg,ctitle from dqd_carousel;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})

// 比赛信息 两条
router.get('/infor',(req,res)=>{
  // res.send('消息')
  var sql = `
  select fid,ftype,fstate,limg,lname,lscore,rscore,rimg,rname,fdata,ftime from dqd_information;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})

// 获取所有新闻数据 分页
router.get('/allnews',(req,res)=>{
  // 分页参数 页码、一页多少数据
  var pno = req.query.pno;
  var ps = req.query.pageSize;
  // 默认值
  if(!pno){ pno=1 }
  if(!ps){ ps=6 }
  var sql = `
  select nid,ntitle,simg,limg,comment,istop,nwriter,ndata,ntime,fircont,seccont from dqd_news limit ?,?;
  `;
  var offset = (pno-1)*ps;
  ps = parseInt(ps);
  pool.query(sql,[offset,ps],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})

// 获取单条新闻数据
router.get('/news',(req,res)=>{
  var nid =req.query.nid;
  // res.send('消息')
  var sql = `
  select ntitle,simg,limg,comment,istop,nwriter,ndata,ntime,fircont,seccont from dqd_news where nid=?;
  `;
  pool.query(sql,[nid],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})
// 导出路由器
module.exports = router;