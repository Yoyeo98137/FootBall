// 引入app.js的默认服务器路径url
const app = getApp();

Page({
  /**
   * 页面的初始数据
   */
  data: {
    nullUrl: app.globalData.url,
    // 比赛日期列表
    matchDateList: [],
    // 比赛列表
    matchList: [],
    matchCount: {}
  },
  // 获取服务器比赛日期列表
  loadGame: function () {
    var that = this;
    // console.log(this.data.matchDateList)
    // 请求比赛日期列表信息
    wx.request({
      url: app.globalData.url + 'match/mlist',
      data: {},
      method: 'GET',
      success: function(res){

        console.log(res.data);
        // for(var key in res.data){
        //   console.log(res.data[key].aa);
        //   // console.log(that.data.matchCount)
        //   that.data.matchCount.oc = res.data[key].aa;
        // }
        // console.log(that.data.matchCount.oc)
        that.setData({
          matchList: res.data
        });
      }
    });
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.loadGame();
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