# FootBall
仿懂球帝小程序
## 技术栈
小程序开发 + Node.js + MySQL<br>
Node.js > 8
## 运行项目
    git clone https://github.com/Yoyeo98137/FootBall.git
    cd FootBall
    cd dqd_server  // 切换后端文件夹下载后端依赖
    npm install
    // 先打开服务器还有mysql(本人用的xampp)
    // 需要先导入数据库，dqd_server下的dqd.sql文件
    // 服务器端口3000
    // 小程序导入项目文件夹dqd
    // 可在app.js中的globalData更改原始默认ip地址
## 功能实现
√ 首页轮播图、右下角点击回到顶部<br>
√ 轮播图下的两条比赛信息根据比赛是否开始选择显示比分或者赛事日期<br>
√ 首页 新闻分页、上拉加载更多<br>
√ 比赛 根据赛事日期显示每日的赛事详情，每日的赛事数量不同<br>
√ 数据 中超页选项卡的内部嵌套选项卡切换功能<br>
√ 页面显示的数据和图片大部分从服务器请求过来，数据库搭建较完整<br>
× 数据页只在数据库中编写了中超页所需的数据，其他联赛选项卡的数据未编写
## 页面预览图片
![image](https://github.com/Yoyeo98137/FootBall/blob/master/img/01.png)
![image](https://github.com/Yoyeo98137/FootBall/blob/master/img/02.png)
![image](https://github.com/Yoyeo98137/FootBall/blob/master/img/03.png)
![image](https://github.com/Yoyeo98137/FootBall/blob/master/img/04.png)
![image](https://github.com/Yoyeo98137/FootBall/blob/master/img/05.png)
![image](https://github.com/Yoyeo98137/FootBall/blob/master/img/06.png)
## 制作目的
进一步熟悉小程序开发和弹性布局技巧
## 项目时间
2019年6月10日至6月15日
