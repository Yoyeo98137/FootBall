// pages/qdqIndex/qdqIndex.js
// 引入app.js的默认服务器路径url
const app = getApp();

Page({
  /**
   * 页面的初始数据
   */
  data: {
    nullUrl: app.globalData.url,
    // 轮播
    swiperList: [],
    indicatorDots: true,  // 是否显示指示点
    autoplay: true,
    interval: 3600,   // 自动切换时间间隔
    duration: 700,    // 滑动动画时长
    indicatorActive: '#ffffff',   // 当前选中的指示点的颜色
    circular: true,    // 是否采用衔接滑动
    // 首页列表
    gameList: [],
    // 新闻列表
    newsList: [],
    rotate: 'totop',
    listCount: 0,
    animationData: ''
  },
  // 新闻跳转
  jump:function(e){
    // currentTarget和target获得dataset的区别，前者只获取父元素
    // console.log(e.currentTarget.dataset);
    var id = e.currentTarget.dataset.nid;
    // console.log(e.target)
    wx.navigateTo({
      url: '/pages/news/news?nid='+id,
    })
  },
  // 旋转并回到顶部
  reload:function(){
    wx.pageScrollTo({
      scrollTop: 0,
      duration: 470
    });

    var animation = wx.createAnimation({
      duration: 700,
      timingFunction: "linear",
      delay: 0
    })
    animation.rotate(360).step();
    this.setData({
      animationData: animation.export()
    })
    setTimeout(() => {
      animation.rotate(0).step()
      this.setData({
        animationData: animation.export()
      })
    }, 700);
  },
  // 首页加载更多
  loadMore:function(i){
    var that = this;
    // 数据库内容最多到4
    this.data.listCount++;
    i = this.data.listCount;
    // console.log(i)
    // console.log(this.data.listCount)
    // 请求新闻列表
    if(that.data.listCount>=6){
      // console.log('没有更多了')
      wx.showToast({
        title: ' 没有更多数据了~~ ',
        icon: 'none',
        duration: 700,
        mask: true,
      })
    }else{
      wx.showLoading({
        title: '加载中...'
      });
      wx.request({
        // url: 'http://127.0.0.1:3000/index/allnews',
        url: app.globalData.url + 'index/allnews?pno',
        data: { pno:i },
        method: 'GET',
        success: function(res){
          // console.log(res.data.msg.length)
          // console.log(res.data.msg)
          var arr = that.data.newsList.concat(res.data.msg);
          // console.log(arr)
          // that.data.newsList.concat(res.data.msg)
          that.setData({
            newsList: arr
          });
          wx.hideLoading();
        }
      });
    }
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this;
    wx.request({
      // url: 'http://127.0.0.1:3000/index/carousel',
      url: app.globalData.url + 'index/carousel',
      data: {},
      method: 'GET',
      success: function(res){
        // console.log(res.data.msg)
        // success
        that.setData({
          swiperList: res.data.msg
        });
      }
    });
    // 请求比赛信息
    wx.request({
      // url: 'http://127.0.0.1:3000/index/infor',
      url: app.globalData.url + 'index/infor',
      data: {},
      method: 'GET',
      success: function(res){
        // console.log(res.data.msg)
        // success
        that.setData({
          gameList: res.data.msg
        });
      }
    });
    this.loadMore(this.data.listCount);
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
    this.loadMore(this.data.listCount);
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})