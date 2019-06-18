// 
const express = require("express");
const pool = require("../pool")
// 创建路由器对象
var router = express.Router();
// 添加路由
// 比赛日期列表
router.get('/mdate',(req,res)=>{
  var sql = `
  select gid,gdata from dqd_game_data;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
      res.send({code:1,msg:result});
    }
  })
})

// 比赛数据列表
router.get('/mlist',(req,res)=>{
  // [{gid:'',gdata:'',data:}]
  // 定义新数组存放日期和指定数据
  var data=[];
  // 执行进度
  var progress=0;
  var sql = `
  select gid,gdata from dqd_game_data;
  `;
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    var arr = [];
    var arr2 = [];
    if(result.length>0){
      // console.log(result);
      // 数据去重
      for(var i=0;i<result.length;i++){
        arr.push(result[i].gdata);
      }
      for(var i=0;i<arr.length;i++){
        if(arr2.indexOf(arr[i])==-1){
          arr2.push(arr[i])
        }
      }
      // 遍历去重后的日期列表，有多少项就生成多少个空对象
      // 创建空对象方便后面添加属性来存放比赛数据的数组
      for(var i=0;i<arr2.length;i++){
        data.push({});
      }
      // 定义执行进度变量
      var listLength = arr2.length*10;
      // console.log(listLength)
      // console.log(data)
      // 给data添加属性存放日期
      for(var i=0;i<arr2.length;i++){
        data[i].dtime=arr2[i]
      }
      // console.log(arr2)
      // 筛选日期数据循环发送请求
      for(let i=0;i<arr2.length;i++){
        // console.log(arr2[i]);
        var sql=`select * from dqd_game_data where gdata='${arr2[i]}'`
        pool.query(sql,(err,result)=>{;
          data[i].aa=result;
          // console.log(data);
          progress+=10;
          // 去重后的日期数组长度为6
          // 进度到达60获取完所有数据，向前端返回数据
          if(progress==listLength){
            // console.log(data);
            res.send(data);
          }
        })
      }
    }
  })
})

// 导出路由器
module.exports = router;





