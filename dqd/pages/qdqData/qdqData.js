// pages/qdqData/qdqData.js
// 引入app.js的默认服务器路径url
const app = getApp();

Page({
  /**
   * 页面的初始数据
   */
  data: {
    nullUrl: app.globalData.url,
    // 顶部导航栏
    navList: [
      '中超','英超','西甲','德甲'
    ],
    isActive: 0,
    // 内容区顶部
    titleList: [
      '积分','球员榜','球队榜','赛程'
    ],
    isTitleAct: 0,
    // 内容->积分区
    inteList: [],
    // 内容->球员榜
    isShoot: 0,
    playerNavList: [
      '射手榜','助攻榜','黄牌','红牌'
    ],
    // 射手榜
    playerShootList: [],
    // 助攻榜
    playerAssistsList: [],
    // 黄牌榜
    playerYellowList: [],
    // 红牌榜
    playerRedList: [],
    // 内容->球队榜
    isGoals: 0,
    teamNavList: [
      '进球','控球率','净比赛时间','黄牌','红牌'
    ],
    // 内容->球队->进球、控球率、净比赛时间... 
    teamGoals: [],
    teamCont: [],
    teamTime: [],
    teamYel: [],
    teamRed: [],
    // 内容->赛程
    scheList: [],
    // 赛程第几轮
    gameCount: 1,
    // 底部联赛规则文本
    ruleText: []
  },
  // 更改isActive
  changeIndex(e){
    console.log(e.currentTarget.dataset.id);
    // this.isActive == e.target.dataset.id;
    this.setData({
      isActive: e.currentTarget.dataset.id
    });
    // console.log(this.data.inteList)
    this.data.inteList = null;
    this.data.ruleText = null;
    this.data.playerShootList = null;
    this.data.teamGoals = null;
    this.data.gameCount = null;
  },
  // 更改isTitleAct
  chgTitIndex(e){
    var changeId = e.target.dataset.id;
    this.setData({
      isTitleAct: changeId
    });
  },
  // 更改isShoot
  changeNavList(e){
    var t = this;
    var that = e.target.dataset.id;
    var act = this.data.isActive;
    // console.log(act);
    this.setData({
      isShoot: that
    });
    // console.log(that);
    // console.log(t.data.isTitleAct);
    if(that==1 && t.data.isTitleAct==1 && act==0){
      // 切换到助攻榜
      // 加载动画
      wx.showLoading({
        title: '数据加载中...'
      });
      wx.request({
        // url: 'http://127.0.0.1:3000/data/cslassists',
        url: app.globalData.url + 'data/cslassists',
        method: 'GET',
        success: (res)=>{
          var str = res.data.msg;
          // str = str.split('`');
          // console.log(str)
          this.setData({
            playerAssistsList: str
          });
          // 数据请求成功后卸载动画
          wx.hideLoading();
        }
      })
    }else if(that==2 && t.data.isTitleAct==1 && act==0){
      // 切换到黄牌
      // 加载动画
      wx.showLoading({
        title: '数据加载中...'
      });
      wx.request({
        // url: 'http://127.0.0.1:3000/data/cslyellow',
        url: app.globalData.url + 'data/cslyellow',
        method: 'GET',
        success: (res)=>{
          var str = res.data.msg;
          // str = str.split('`');
          // console.log(str)
          this.setData({
            playerYellowList: str
          });
          // 数据请求成功后卸载动画
          wx.hideLoading();
        }
      })
    }else if(that==3 && t.data.isTitleAct==1 && act==0){
      // 切换到黄牌
      // 加载动画
      wx.showLoading({
        title: '数据加载中...'
      });
      wx.request({
        // url: 'http://127.0.0.1:3000/data/cslred',
        url: app.globalData.url + 'data/cslred',
        method: 'GET',
        success: (res)=>{
          var str = res.data.msg;
          // str = str.split('`');
          // console.log(str)
          this.setData({
            playerRedList: str
          });
          // 数据请求成功后卸载动画
          wx.hideLoading();
        }
      })
    }
  },
  // 更改isGoals
  changeTeamList(e){
    var t = this;
    var that = e.target.dataset.id;
    var act = this.data.isActive;
    // console.log(that)
    this.setData({
      isGoals: that
    });
    if(that==1 && t.data.isTitleAct==2 && act==0){
      // 切换到助攻榜
      // 加载动画
      wx.showLoading({
        title: '数据加载中...'
      });
      wx.request({
        // url: 'http://127.0.0.1:3000/data/cslassists',
        url: app.globalData.url + 'data/cslteamcont',
        method: 'GET',
        success: (res)=>{
          var str = res.data.msg;
          // str = str.split('`');
          // console.log(str)
          this.setData({
            teamCont: str
          });
          // 数据请求成功后卸载动画
          wx.hideLoading();
        }
      })
    }else if(that==2 && t.data.isTitleAct==2 && act==0){
      // 切换到黄牌
      // 加载动画
      wx.showLoading({
        title: '数据加载中...'
      });
      wx.request({
        // url: 'http://127.0.0.1:3000/data/cslyellow',
        url: app.globalData.url + 'data/cslteamtime',
        method: 'GET',
        success: (res)=>{
          var str = res.data.msg;
          // str = str.split('`');
          // console.log(str)
          this.setData({
            teamTime: str
          });
          // 数据请求成功后卸载动画
          wx.hideLoading();
        }
      })
    }else if(that==3 && t.data.isTitleAct==2 && act==0){
      // 切换到黄牌
      // 加载动画
      wx.showLoading({
        title: '数据加载中...'
      });
      wx.request({
        // url: 'http://127.0.0.1:3000/data/cslred',
        url: app.globalData.url + 'data/cslteamyel',
        method: 'GET',
        success: (res)=>{
          var str = res.data.msg;
          // str = str.split('`');
          // console.log(str)
          this.setData({
            teamYel: str
          });
          // 数据请求成功后卸载动画
          wx.hideLoading();
        }
      })
    }else if(that==4 && t.data.isTitleAct==2 && act==0){
      // 切换到黄牌
      // 加载动画
      wx.showLoading({
        title: '数据加载中...'
      });
      wx.request({
        // url: 'http://127.0.0.1:3000/data/cslred',
        url: app.globalData.url + 'data/cslteamred',
        method: 'GET',
        success: (res)=>{
          var str = res.data.msg;
          // str = str.split('`');
          // console.log(str)
          this.setData({
            teamRed: str
          });
          // 数据请求成功后卸载动画
          wx.hideLoading();
        }
      })
    }
  },
  // 上一轮点击事件
  lastRound: function(){
    // console.log(this.data.gameCount);
    var that = this;
    if(this.data.gameCount>1){ 
      var count = --this.data.gameCount;
      that.setData({
        gameCount: count
      });
      that.loadGame(count);
    }
  },
  // 下一轮点击事件
  nextRound: function(){
    // console.log(this.data.gameCount);
    var that = this;
    if(this.data.gameCount<3){ 
      var count = ++this.data.gameCount;
      that.setData({
        gameCount: count
      });
      that.loadGame(count);
    }
  },
  // 请求赛程数据
  loadGame: function(i){
    // 加载动画
    wx.showLoading({
      title: '数据加载中...'
    });
    wx.request({
      // url: 'http://127.0.0.1:3000/data/cslgame?pno',
      url: app.globalData.url + 'data/cslgame?pno',
      data: { pno:i },
      method: 'GET',
      success: (res)=>{
        // console.log(i);
        var str = res.data.msg;
        // str = str.split('`');
        // console.log(str)
        this.setData({
          scheList: str
        });
        // 数据加载完成卸载动画
        wx.hideLoading();
      }
    });
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var act = this.data.isActive;
    // console.log(act)
    if(act == 0){
      // 加载动画
      wx.showLoading({
        title: '数据加载中...',
      })
      // 请求中超积分榜
      wx.request({
        // url: 'http://127.0.0.1:3000/data/cslinteg',
        url: app.globalData.url + 'data/cslinteg',
        method: 'GET',
        success: (res)=>{
          // console.log(res.data.msg)
          this.setData({
            inteList: res.data.msg
          });
          // 数据请求成功后卸载动画
          wx.hideLoading();
        }
      });
      // 请求底部联赛规则文本
      wx.request({
        // url: 'http://127.0.0.1:3000/data/datarule',
        url: app.globalData.url + 'data/datarule',
        method: 'GET',
        success: (res)=>{
          var str = res.data.msg[0];
          // str = str.split('`');
          // console.log(str)
          this.setData({
            ruleText: str
          });
        }
      });
      // 切换到射手榜时请求数据
      wx.request({
        // url: 'http://127.0.0.1:3000/data/cslshooter',
        url: app.globalData.url + 'data/cslshooter',
        method: 'GET',
        success: (res)=>{
          var str = res.data.msg;
          // str = str.split('`');
          // console.log(str)
          this.setData({
            playerShootList: str
          });
        }
      });
      // 切换到球队榜时请求数据
      wx.request({
        // url: 'http://127.0.0.1:3000/data/cslshooter',
        url: app.globalData.url + 'data/cslteamgoal',
        method: 'GET',
        success: (res)=>{
          var str = res.data.msg;
          // str = str.split('`');
          // console.log(str)
          this.setData({
            teamGoals: str
          });
        }
      });
      // 请求赛程数据
      var count = this.data.gameCount;
      // console.log(this.data.gameCount)
      this.loadGame(count);
    }
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})