// pages/news/news.js
// 引入app.js的默认服务器路径url
const app = getApp();

Page({
  /**
   * 页面的初始数据
   */
  data: {
    nullUrl: app.globalData.url,
    nid: 0,
    newsList: [],
  },
  // 请求服务器新闻详情数据
  load: function(i){
    var that = this;
    // 加载动画
    wx.showLoading({
      title: '数据加载中...',
    })
    wx.request({
      // url: 'http://127.0.0.1:3000/index/news?nid',
      url: app.globalData.url + 'index/news?nid',
      data: { nid:i },
      method: 'GET',
      success: function(res){
        // console.log(res.data.msg[0])
        // success
        that.setData({
          newsList: res.data.msg[0]
        });
        // 数据请求成功后卸载动画
        wx.hideLoading();
      }
    });
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    // console.log(options.nid);
    this.setData({
      nid: options.nid
    });
    this.load(options.nid);
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