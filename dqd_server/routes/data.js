// 数据页
const express = require("express");
const pool = require("../pool")
// 创建路由器对象
var router = express.Router();
// 添加路由
// 中超->积分榜
router.get('/cslinteg',(req,res)=>{
  var sql = `
  select did,dimg,dclub,dgame,dwin,dfloat,lose,goal,throw,integral from dqd_csl_integral;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})
// dqd_csl_shooter
// 中超->射手榜
router.get('/cslshooter',(req,res)=>{
  var sql = `
  select sid,simg,sname,sclub,goals from dqd_csl_shooter;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})
// 中超->助攻榜
router.get('/cslassists',(req,res)=>{
  var sql = `
  select aid,aimg,aname,aclub,assists from dqd_csl_assists;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})
// 中超->黄牌
router.get('/cslyellow',(req,res)=>{
  var sql = `
  select yid,yimg,yname,yclub,yellow from dqd_csl_yellow;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})
// 中超->红牌
router.get('/cslred',(req,res)=>{
  var sql = `
  select rid,rimg,rname,rclub,red from dqd_csl_red;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})

// 中超->球队榜->进球
router.get('/cslteamgoal',(req,res)=>{
  var sql = `
  select gid,gimg,gclub,goals from dqd_csl_team_goal;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})
// 中超->球队榜->控球率
router.get('/cslteamcont',(req,res)=>{
  var sql = `
  select cid,cimg,cclub,dcontrol from dqd_csl_team_control;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})
// 中超->球队榜->净比赛时间
router.get('/cslteamtime',(req,res)=>{
  var sql = `
  select tid,timg,tclub,dtime from dqd_csl_team_time;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})
// 中超->球队榜->黄牌
router.get('/cslteamyel',(req,res)=>{
  var sql = `
  select yid,yimg,yclub,yellow from dqd_csl_team_yellow;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})
// 中超->球队榜->红牌
router.get('/cslteamred',(req,res)=>{
  var sql = `
  select rid,rimg,rclub,red from dqd_csl_team_red;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})

// 中超->赛程
router.get('/cslgame',(req,res)=>{
  // 分页参数 页码、一页多少数据
  var pno = req.query.pno;
  var ps = req.query.pageSize;
  // 默认值
  if(!pno){ pno=1 }
  if(!ps){ ps=8 }
  var sql = `
  select gid,gdata,gtime,gstate,lclub,limg,lscore,rscore,rimg,rclub from dqd_csl_game limit ?,?;
  `;
  // 解析数据
  // 因为数据库存的编号从1开始，limit的页码从0开始
  // 所以先减一再运算
  var offset = (pno-1)*ps;
  ps = parseInt(ps);
  pool.query(sql,[offset,ps],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})


// 底部->联赛规则文本
router.get('/datarule',(req,res)=>{
  var sql = `
  select lid,league,tone,olist,slist,tlist,oolist,sslist,ttlist,fflist,flist,tsec,tolist,tslist,stlist from dqd_league_rule;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})

// 导出路由器
module.exports = router;