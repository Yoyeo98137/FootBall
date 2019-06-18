# FootBall
仿懂球帝小程序
## 技术栈
小程序开发 + Node.js + MySQL<br>
Node.js > 8
## 运行项目
    git clone https://github.com/Yoyeo98137/luckin_coffee.git
    cd luckin_coffee
    cd luck_server  // 切换后端文件夹下载后端依赖
    npm install
    cd ..
    cd luckin  // 切换前端文件夹下载前端依赖
    npm install
    // 先打开服务器还有mysql(本人用的xampp)
    // 需要先导入数据库，luck_server下的luck.sql文件
    // 服务器端口8787
    npm run serve
    访问 http://localhost:8080
