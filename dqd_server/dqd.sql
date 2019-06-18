set names utf8;
drop database if exists dqd;
create database dqd charset=utf8;
use dqd;
-- 首页部分
-- 首页->轮播图
create table dqd_carousel(
  cid int primary key auto_increment,
  cimg varchar(128) not null,
  ctitle varchar(256) not null
);
insert into dqd_carousel values(null,
  'img/index/banner1.jpg',
  '三年后再夺冠！葡萄牙1-0荷兰夺首届欧国联冠军，格德斯制胜'
);
insert into dqd_carousel values(null,
  'img/index/banner2.jpg',
  '足协可能推出新政策：外援可上四人，U23只用保留一人在场'
);
insert into dqd_carousel values(null,
  'img/index/banner3.jpg',
  '巴西7-0狂胜十人洪都拉斯，热苏斯梅开二度，阿图尔伤退'
);
insert into dqd_carousel values(null,
  'img/index/banner4.jpg',
  '英格兰四中门框+绝杀被吹，点球大战6-5瑞士获欧国联季军'
);
insert into dqd_carousel values(null,
  'img/index/banner5.jpg',
  'U22国足0-1墨西哥无缘出线，小组赛1胜2负，将与智利争夺第7'
);
-- 首页->两条比赛信息
create table dqd_information(
  fid int primary key auto_increment,
  ftype varchar(32) not null,
  fstate boolean not null,
  limg varchar(128) not null,
  lname varchar(64) not null,
  lscore int not null,
  rscore int not null,
  rimg varchar(128) not null,
  rname varchar(64) not null,
  fdata varchar(64) not null,
  ftime varchar(64) not null
);
insert into dqd_information values(null,
  '友谊赛',1,'img/country/05.png',
  '巴西',7,0,'img/country/06.png','洪都拉斯',
  '06-10','03:00'
);
insert into dqd_information values(null,
  '美洲杯',0,'img/country/09.png',
  '阿根廷',0,0,'img/country/08.png','哥伦比亚',
  '06-16','06:00'
);
-- 首页->新闻列表
create table dqd_news(
  nid int primary key auto_increment,
  ntitle varchar(256) not null,
  simg varchar(128) not null,
  limg varchar(128) not null,
  comment int not null,
  istop boolean not null,
  nwriter varchar(64) not null,
  ndata varchar(64) not null,
  ntime varchar(64) not null,
  fircont varchar(1024) not null,
  seccont varchar(1024) not null
);

insert into dqd_news values(null,
  '早报：你笑得真好看',
  'img/new/25.jpg',
  'img/new/25_lg.jpg',
  4728,true,'瑞雪翎天','2019-06-14','07:05',
  '大家早上好呀，欢迎收看6月14日的懂球帝早报！',
  '在今天凌晨的法国女足世界杯中，中国女足1-0战胜南非女足取得赛事首胜，也将出线主动权掌握在了自己手上，6月18日中国女足将在与西班牙女足的比赛中全力争胜，看呐，获胜后的姑娘们笑的是真好看。而在和法国不远的西班牙，阿扎尔正式降临伯纳乌，弗洛伦蒂诺和现场5万多名球迷对他表示了热烈地欢迎，他自己也动情表示，加盟皇马是儿时的梦想，希望开启新的时代。据多家权威媒体报道，切尔西已经同意让萨里离队，迪马济奥确认了这一消息，并透露双方会在当地时间周五解约。

  头条新闻
  【中国女足1-0南非女足取首胜，李影制胜球，18日决战西班牙】
  北京时间6月14日凌晨3时，中国女足迎来世界杯第二个对手南非女足。上半场古雅沙错失良机，张睿助攻李影为中国队取得领先，王珊珊头球中楣；下半场娄佳惠替补登场迎来个人国家队百场里程碑，替补登场的杨丽再次错失单刀机会。最终，中国女足1-0战胜南非女足，取得小组赛首胜。中国队将于18日0时与西班牙队决一死战。
  
  【阿扎尔：从没怀疑过有一天会为皇马效力，希望开启皇马新时代】
  阿扎尔在加盟皇马后的首次发布会上打开了话匣子，他谈到了自己的皇马情节、对新赛季的一些展望以及关于球衣号码的趣事。

  【迪马济奥：切尔西同意萨里离队执教尤文，双方周五解约】
  意大利天空体育记者法布里奇奥-罗马诺确认，切尔西已经同意让萨里离队，俱乐部还在与尤文就赔偿金问题进行谈判。迪马济奥确认了这一消息，并透露双方会在当地时间周五解约。英国BBC、天空体育也报道了同样的消息。

  【阿扎尔：想要穿上皇马球衣赢得冠军，这是我儿时的梦】
  阿扎尔在皇马亮相仪式上再次表明了自己的“儿皇梦”。

  【弗洛伦蒂诺欢迎阿扎尔：我们知道皇马是你的梦想，现在你来了】
  皇马主席弗洛伦蒂诺在阿扎尔的亮相仪式上发言，他感谢了切尔西俱乐部，同时表达了对比利时人的欢迎。
  '
);
insert into dqd_news values(null,
  '中国女足1-0南非女足取首胜，李影制胜球，18日决战西班牙',
  'img/new/26.jpg',
  'img/new/26_lg.jpg',
  2893,true,'普通文青','2019-06-14','04:52',
  '北京时间6月14日凌晨3时，中国女足迎来世界杯第二个对手南非女足。上半场古雅沙错失良机，张睿助攻李影为中国队取得领先，王珊珊头球中楣；下半场娄佳惠替补登场迎来个人国家队百场里程碑，替补登场的杨丽再次错失单刀机会。最终，中国女足1-0战胜南非女足，取得小组赛首胜。中国队将于18日0时与西班牙队决一死战。',
  '比赛刚开场第2分钟，王焱在争顶时与林宇萍相撞，王焱受伤倒地，在经过队医短暂处理后王焱回到场上。第8分钟，古雅沙在防守拉马勒佩时出现了手牵手的情况，主裁判判罚古雅沙犯规。
  第21分钟，刘杉杉左路斜长传到禁区内，李影原地起跳头球攻门，球顶偏了。第30分钟，韩鹏禁区前偏右位置接王霜传球后直接尝试一脚远射，皮球高出门楣。
  1分钟后，南非队左路送出直塞，克加特拉纳插上得球切入禁区左侧小角度射门，球打偏了。第33分钟，王焱中场断球后直传王霜，王霜禁区前沿横向扯动带开防守后起脚远射，皮球偏出左门柱。
  1分钟后，王霜中路将球分给左路插上的古雅沙，古雅沙禁区左侧扣过拉马勒佩，范韦克补防时摔倒，古雅沙无人盯防情况下射门打偏了。第40分钟，中国队打破僵局！张睿右路45度起球传中，李影抢前点凌空垫射将球打入球门近角！中国1-0南非！
  第42分钟，中国队获得右侧角球机会，王霜传球到门前，王珊珊前点头球攻门，皮球击中横梁弹下后砸在球门线上，门线技术显示皮球没有整体越过球门线。
  易边再战。第55分钟，南非队前场断球，马哈巴内禁区前偏左位置直接尝试一脚远射，球打飞了。1分钟后，南非队获得右侧角球机会，球传到禁区内，马特卢后点头球攻门，皮球偏出左门柱。
  第78分钟，中国队再次换人，姚伟上场换下抽筋的李影。第85分钟，中国队获得左侧角球机会，球传到禁区内，韩鹏后点头球攻门，球被斯瓦特扑出底线。第90分钟，娄佳惠右路低平球传给中路无人盯防的杨丽，杨丽单刀打门，球被斯瓦特扑出。
  
  全场比赛结束，中国女足1-0小胜南非女足，取得小组赛首胜。'
);
insert into dqd_news values(null,
  '多家媒体：萨里24小时内与切尔西解约去尤文；兰帕德将接手',
  'img/new/27.jpg',
  'img/new/27_lg.jpg',
  1726,true,'大波儿','2019-06-14','05:34',
  '意大利天空记者法布里奇奥-罗马诺确认，切尔西已经同意让萨里离队，俱乐部还在与尤文就赔偿金问题进行谈判。迪马济奥确认了这一消息，并透露双方会在当地时间周五解约。英国BBC、天空体育也报道了同样的消息。',
  '罗马诺在推特写道：“萨里将成为尤文图斯新帅，已经确认。尤文图斯与切尔西已经达成一致，萨里将重返意大利。帕拉蒂奇和格拉诺夫斯卡娅(两队高层)还在就赔偿金问题进行谈判，不过可以确认的是切尔西将允许萨里前往尤文。”
  
  意大利转会专家迪马济奥也确认了这一消息，此外他还表示，兰帕德将成为蓝军新帅。当地时间周五，萨里将与切尔西解约，随后他会与尤文签约三年。
  
  football-italia援引意大利天空消息，尤文图斯将向切尔西支付350万欧元，这和兰帕德合同中的违约金相等。不过英媒《晚旗报》对此有不同的报道，他们表示尤文会支付500万-1000万英镑。
  
  英国权威媒体天空体育、BBC也确认了这一消息，切尔西将在24小时内宣布萨里解约的消息，而兰帕德将成为蓝军新帅。'
);
insert into dqd_news values(null,
  'ESPN：曼联将提高德赫亚薪酬待遇，希望他继续留队',
  'img/new/28.jpg',
  'img/new/28_lg.jpg',
  629,false,'EM','2019-06-14','09:45',
  '根据ESPN的报道，德赫亚目前的合同到明年夏天就将到期，但曼联仍然无意出售门神德赫亚，并且打算给他更高周薪的合同，希望他继续留在球队。',
  '据报道，此前曼联曾给德赫亚开出过35万镑周薪的合同，但是德赫亚却拒绝了这份合同。续约谈判已经持续了一年半时间，但似乎没有什么进展。
  
  此前还有消息称，曼联为避免德赫亚明年合同到期自由离队，选择今年就出售他。但根据相关人士透露，曼联视德赫亚为非卖品，任何价格都不打算出售他。不过，巴黎圣日耳曼似乎是有可能签下德赫亚的球队，他们能够满足转会费和薪水要求。'
);
insert into dqd_news values(null,
  '阿扎尔戴价值6万欧的新表亮相皇马，表上日期还没调好',
  'img/new/29.jpg',
  'img/new/29_lg.jpg',
  479,false,'老白的船牌车','2019-06-14','09:33',
  '皇马新援阿扎尔昨晚正式在伯纳乌亮相，眼尖的《马卡报》发现阿扎尔腕上戴着一块价值在6万到6.8万欧元间的瑞士名表，不过这块表显然是新表，因为表上的时间还没来得及校准。',
  '这块镶金带钻的手表是Richard Mile的RM016，据不同网站的报价，这款手表的价值在6万到6.8万欧元。不过，当阿扎尔昨天带着它亮相时，表上的日期(在表盘的数字7处显示)还停留在“8”上，而正确的日期应该是6月13日。'
);
insert into dqd_news values(null,
  '“世界杯已售百万球票”说法有误，FIFA澄清',
  'img/new/30.jpg',
  'img/new/30_lg.jpg',
  326,false,'懒熊体育','2019-06-14','09:33',
  '',
  'FIFA表示之前宣布的“女足世界杯已售出100万张球票”的说法有误，已经删除了周二发布的宣布这一消息的推特。
  
  此前，国际足联在其官网宣布，2019年女足世界杯已经卖出了超过100万张球票，而当时距离世界杯开幕仅仅过去了4天。
  
  美联社6月12日从FIFA得到消息，已经出票的这100万张球票并非全部来源于出售，还包括提供给球迷的免费票，提供给VIP、球队代表团、商业分支机构、球探、医护人员和技术人员的预留票。
  
  FIFA也澄清了国际足联主席因凡蒂诺“52场球赛有20场球票已卖光”的说法，表示目前只有14场球赛球票已全部售出。'
);


insert into dqd_news values(null,
  '英超19/20赛季赛程出炉：8月10日开战，曼联首轮对阵切尔西',
  'img/new/20.jpg',
  'img/new/20_lg.jpg',
  4327,false,'大波儿','2019-06-13','16:01',
  '英超19/20赛季赛程出炉，8月10日揭幕战利物浦vs诺维奇，曼联首轮对阵切尔西！',
  '揭幕战将在北京时间8月10日3:00打响，利物浦主场对阵诺维奇。第一轮还将迎来焦点战，这一轮最后进行的比赛是曼联主场对阵切尔西。
  
  英超官方还公布，2月英超联赛将迎来冬歇期，这也是英超历史上第一次引入冬歇期。从2019/20赛季开始，每一家英超俱乐部都会获得一周的休息时间，将会在两周内分批次休息，10支球队先在第一个周末休息，而另外10支球队在随后的周末休息。
  
  英超首轮赛程(北京时间)
  8月10日
  3:00 利物浦vs诺维奇
  19:30 西汉姆联vs曼城
  22:00 伯恩茅斯vs谢菲尔德联
  22:00 伯恩利vs南安普顿
  22:00 水晶宫vs埃弗顿
  22:00 莱斯特城vs狼队
  22:00 沃特福德vs布莱顿
  8月11日
  0:00 托特纳姆热刺vs阿斯顿维拉
  21:00 纽卡斯尔联vs阿森纳
  23:30 曼联vs切尔西
  BIG 6完整赛程稍后带来。'
);
insert into dqd_news values(null,
  '奥斯卡颁奖&专访：上港有希望打进亚冠决赛；期待武磊多进球',
  'img/new/19.jpg',
  'img/new/19_lg.jpg',
  863,false,'Mr卡卜斯','2019-06-13','12:00',
  '中超联赛第11轮，上海上港在主场战胜了当时已经十连胜的北京国安。在比赛中，奥斯卡用一传一射的惊艳表现帮助球队战胜强敌。这位上港的中场核心也获得了当轮的懂球帝中超MVP。本周，我们来到了上港的训练基地，为奥斯卡颁奖，并且进行了专访。',
  '中超前十轮，北京国安取得了历史性的十连胜战绩，而卫冕冠军上海上港则在第四轮输给了重庆，第6轮被天津天海逼平，十轮之后他们落后国安5分。面对着气势正盛、风头正劲的国安，上港凭借着奥斯卡的出色发挥，送给国安联赛首败的同时也将积分差距缩小到了两分。
  
  强强对话往往胜在细节，一场90分钟的高对抗比赛，需要球员对比赛进程保持高度的警觉。奥斯卡的说法也印证了这一点，当被问及球队取胜的关键时，虽然他的回答很简短，但也点出了球员在比赛中最重要的品质之一：“我认为球队的注意力很集中，表现都很出色，我们也知道是在主场迎战一支强队，我们踢得很好，赢下了比赛。”
  
  专注力带来的结果就是处理球时冷静、沉着，奥斯卡的进球和助攻也充分体现了这一点。在国安的禁区内，奥斯卡接到胡尔克的传球后冷静地摆脱、起脚射门，打进了一粒漂亮的进球。
  
  三年的时间，让中国球迷认识了这位来自巴西的魔术师，也让奥斯卡逐渐喜欢上了中超联赛和上海这座城市。希望未来他可以带给中国足球更多的精彩。'
);
insert into dqd_news values(null,
  '记者：中超新政有望第16轮执行，始终保持1名U23在场',
  'img/new/18.jpg',
  'img/new/18_lg.jpg',
  2472,false,'雷杰深','2019-06-13','13:24',
  '据记者袁野消息：中超新政有望在第16轮开始执行，具体细则为球队须始终保持1名U23在场，第4外援可进替补席，但替补出场时必须换下外援。',
  '袁野表示：7月1日转会窗口就开了，就可以调整了。正好7月1日也是马上下半程联赛开始，如果不出意外，新政策将在第16轮开始执行。
  
  具体怎么执行？不是像大家说的恢复外援3+1，有一个亚外。那不是又减少了一个国内球员上场名额么？现在每个队不都注册了4个外援了吗，以后每场比赛外援可以报名4个，在场上保持3个外援。3个外援如果有谁表现不好，可以用替补席的外援去换一下。第4外援可以替补出场了，不像过去连18人名单都进不了。
  
  同时，U23球员必须有一个要在场上，不能像过去一样打两分钟就换下来对付事。
  
  最后袁野也表示，此后这种政策的调整，最好还是在年初进行。'
);
insert into dqd_news values(null,
  '米体：萨里与尤文的肥皂剧可能在今天画上句号',
  'img/new/21.jpg',
  'img/new/21_lg.jpg',
  1012,false,'Mesaldo','2019-06-13','16:16',
  '据意大利媒体《米兰体育报》表示，萨里离开切尔西前往尤文的肥皂剧可能将在今天尘埃落定。',
  '谈判的焦点是蓝军想要获得600万欧元的赔偿金。帕拉蒂奇昨天已经飞抵伦敦，准备与切尔西进行进一步的磋商。而萨里的经纪人拉马达尼与蓝军CEO格拉诺夫斯卡娅也在继续谈判。《米体》称，双方已经就谈判结束的日期达成了共识，而这个日子就是今天。切尔西无疑还掌握着主动权，斯坦福桥可以决定什么时候或者是否释出萨里，以及赔偿金的相关条款。
  
  切尔西并不愿意在赔偿金条款上做出让步，尤文可能最后依然不得不选择支付这600万欧元。'
);
insert into dqd_news values(null,
  '佩雷拉：队内还有一些伤病没恢复，打完恒大再考虑亚冠',
  'img/new/22.jpg',
  'img/new/22_lg.jpg',
  237,false,'rigeman','2019-06-13','16:15',
  '北京时间6月13日下午，上海上港召开了对阵广州恒大的赛前新闻发布会，主教练佩雷拉和球员胡尔克出席。',
  '佩雷拉介绍球队备战
  明天的比赛，我们需要尊重对手的实力，要踢出最好的水平，我们也要尊重球迷和裁判，像这样一场关注度极高的比赛，希望明天有非常精彩的水准，我们双方为大家奉献一场精彩的比赛。
  对于恒大有哪些针对性的准备
  我们对恒大进行了研究，同时针对性地对自己进行备战来面对比赛，在间歇期，球队进行了恢复和提高，在前场穿插跑位上做了一些训练和提高，同时也对攻防两端的跑位做了训练和提高，这也是我们之前一直在做的事情。
  球队现在伤病情况如何
  队内还有一些伤员需要时间来恢复，但明天我们肯定会派出最好的11人去比赛，其他球员也会和我们一起以充足的精神，投入到比赛当中，大家像一个团队一样去战斗。
  你认为球队的优势是什么
  我们是主场作战，我们的球迷会来支持我们，双方都是有实力的球队，拥有出色的球员，我们会尽全力去拿下比赛，但我不会把这些视为是优势。此外，明天我们会在一片非常好的场地上去比赛，场地条件非常不错，当然，如果我们想要赢下比赛的话，就必须比对手表现得更好。
  下周还有一场亚冠的比赛
  明天和亚冠属于不同的赛事，明天是中超联赛中一场非常关键的比赛，打完这场比赛后，我们才会去准备下一场亚冠，明天我们会派出最好的11人去努力赢下比赛，因为这场胜利对我们来说非常重要。'
);
insert into dqd_news values(null,
  '意媒：AC米兰即将与恩波利中场克鲁尼奇签下一份4年合约',
  'img/new/23.jpg',
  'img/new/23_lg.jpg',
  171,false,'空门君','2019-06-13','16:12',
  '据意大利媒体《足球市场》独家报道，AC米兰即将与恩波利中场克鲁尼奇签下一份4年合约。',
  '该媒体表示，AC米兰已经敲定了克鲁尼奇的转会。这名波黑中场将与俱乐部签下一份4年合约，将于下周接受体检。
  在莱昂纳多仍担任体育总监时，克鲁尼奇就已经被AC米兰视为了引援目标。马尔蒂尼同样对这名价格实惠的中场青睐有加。所有的事情都已敲定，除非球队新帅拒绝引进这名球员。
  新帅人选詹保罗并没有向球队具体提出引进克鲁尼奇的要求，但俱乐部已向他就克鲁尼奇一事进行了沟通，他表示愿意接受这笔引援。除此之外，克鲁尼奇被视为博班就任体育总监后的第一笔引援。
  博班将会很快回到米兰，出任体育总监一职。该媒体表示，下周俱乐部就将正式宣布这一决定。相关链接：【晚邮报：博班可能回AC米兰担任体育总监】
  值得一提的是，AC米兰已经对于克鲁尼奇进行了长达六个月的观察，包括观看比赛与训练。他的特点已经得到了俱乐部的认可：勇敢、渴望、技术、韧性。昨天，克鲁尼奇本人还给家人通了电话，他说道：“我实现了我的梦想，我不敢相信这是真的。”
  波黑中场克鲁尼奇今年25岁，上赛季共为恩波利出场34次，奉献5球6助攻。他身高1米84，可以胜任中场与进攻型中场的位置。目前，他在转会市场上的身价为800万欧元。'
);
insert into dqd_news values(null,
  '利物浦19/20赛季英超赛程：首轮迎诺维奇，10月连战曼联热刺',
  'img/new/24.jpg',
  'img/new/24_lg.jpg',
  171,false,'空门君','2019-06-13','16:09',
  '北京时间2019年6月13日下午，英超官方公布了2019/20赛季的完整赛程，利物浦将在首轮迎战升班马诺维奇，而在10月与次年1月，利物浦又将两度连续迎战热刺与曼联两大强敌。',
  '完整赛程如下(北京时间)
  第1轮  8月10日 3:00  利物浦vs诺维奇
  第2轮  8月17日 22:00  南安普顿vs利物浦
  第3轮  8月24日  22:00  利物浦vs阿森纳
  第4轮  8月31日  22:00  伯恩利vs利物浦
  第5轮  9月14日  22:00  利物浦vs纽卡斯尔联
  第6轮  9月21日  22:00  切尔西vs利物浦
  第7轮  9月28日  22:00  谢菲尔德联vs利物浦
  第8轮  10月5日  22:00  利物浦vs莱斯特城
  第9轮  10月19日  22:00  曼联vs利物浦
  第10轮  10月26日  22:00  利物浦vs热刺
  第11轮  11月2日  22:00  阿斯顿维拉vs利物浦
  第12轮  11月9日  22:00  利物浦vs曼城
  第13轮  11月23日  22:00  水晶宫vs利物浦
  第14轮  11月30日  22:00  利物浦vs布莱顿
  第15轮  12月5日  3:00  利物浦vs埃弗顿
  第16轮  12月7日  22:00  伯恩茅斯vs利物浦
  第17轮  12月14日  22:00  利物浦vs沃特福德
  第18轮  12月21日  22:00  西汉姆联vs利物浦
  第19轮  12月26日  22:00  莱斯特城vs利物浦
  第20轮  12月28日  22:00  利物浦vs狼队
  第21轮  1月1日  22:00  利物浦vs谢菲尔德联
  第22轮  1月11日  22:00  热刺vs利物浦
  第23轮  1月18日  22:00  利物浦vs曼联
  第24轮  1月22日  2:45  狼队vs利物浦
  第25轮  2月1日  22:00  利物浦vs南安普顿
  第26轮  2月8日  22:00  诺维奇vs利物浦
  第27轮  2月22日  22:00  利物浦vs西汉姆联
  第28轮  2月29日  22:00  沃特福德vs利物浦
  第29轮  3月7日  22:00  利物浦vs伯恩茅斯
  第30轮  3月14日  22:00  埃弗顿vs利物浦
  第31轮  3月21日  22:00  利物浦vs水晶宫
  第32轮  4月4日  22:00  曼城vs利物浦
  第33轮  4月11日  22:00  利物浦vs阿斯顿维拉
  第34轮  4月18日  22:00  布莱顿vs利物浦
  第35轮  4月25日 22:00  利物浦vs伯恩利
  第36轮  5月2日  22:00  阿森纳vs利物浦
  第37轮  5月9日  22:00  利物浦vs切尔西
  第38轮  5月17日  22:00  纽卡斯尔联vs利物浦'
);
insert into dqd_news values(null,
  '阿根廷媒体：2020年美洲杯决赛可能采用两回合赛制',
  'img/new/14.jpg',
  'img/new/14_lg.jpg',
  233,false,'给您点个赞','2019-06-13','11:22',
  '阿根廷足协与哥伦比亚足协已经达成协议，明年美洲杯的揭幕战将在阿根廷进行。决赛则有可能采取两回合赛制，首回合在阿根廷举行，次回合在哥伦比亚举行，最终决定将于当地时间6月13日公布。',
  '2020年美洲杯将采用新赛制，将分为南区和北区进行，南区比赛举办地在阿根廷，北区比赛举办地为哥伦比亚。
  
  南区参赛球队为：阿根廷、智利、乌拉圭、巴拉圭、玻利维亚和一个受邀国。北区参赛球队为：哥伦比亚、巴西、委内瑞拉、厄瓜多尔、秘鲁和一个受邀国。两支受邀球队可能是卡塔尔与澳大利亚。
  
  此前根据巴西媒体报道，南美足协此前一直在与中国足协协商，希望中国队可以参加2020年由阿根廷和哥伦比亚共同举办的美洲杯，但是中国足协的态度似乎并不积极，这迫使南美足协转而决定邀请澳大利亚队参加。'
);
insert into dqd_news values(null,
  '伊布年薪曝光：720万美元为美职联历史最高薪',
  'img/new/15.jpg',
  'img/new/15_lg.jpg',
  723,false,'like9287','2019-06-13','11:17',
  '伊布今年37岁，但是状态保持的很好。本赛季代表洛杉矶银河首发出战12场，打入11个进球并且获得3次助攻。而上赛季，伊布出战27场，打入22个进球并获得6次助攻，荣膺美职联银靴。',
  '本赛季，洛杉矶银河排名西部第二，伊布仍然是球队不可或缺的核心球员。'
);
insert into dqd_news values(null,
  '德尼斯-苏亚雷斯：为了寻求更多的出场机会，我想要离开巴萨',
  'img/new/16.jpg',
  'img/new/16_lg.jpg',
  462,false,'WuLeinaldo','2019-06-13','11:11',
  '冬窗被巴萨租借至阿森纳的德尼斯-苏亚雷斯在近日接受了塞尔电台《El Larguero》节目的采访，他表示自己想要离开巴塞罗那，瓦伦西亚可能是他的下一站。',
  '德尼斯-苏亚雷斯说：“我想要离开巴塞罗那获得更多的出场机会，我的目标是留在西甲。我已经回到巴塞罗那两个月了，我一直在努力恢复，这一期间我与巴萨的任何人都没有交流。
  
  Goal表示，瓦伦西亚有意引进德尼斯-苏亚雷斯。瓦伦西亚总经理马泰乌-阿列玛尼在五月底曾表示德尼斯是他们的转会目标之一。
  
  德尼斯-苏亚雷斯说：“马塞利诺（瓦伦西亚主教练）是我见过的最好的教练，我经常和他交流。我拒绝瓦伦西亚不是真的，他们现在非常想要签下我。”'
);
insert into dqd_news values(null,
  '难兄难弟？格列兹曼建议欧文去篮网',
  'img/new/17.jpg',
  'img/new/17_lg.jpg',
  1273,false,'FrancisDrake','2019-06-13','11:11',
  '众所周知，法国前锋格列兹曼是一位不折不扣的篮球迷，曾多次飞往美国观看NBA比赛，与NBA球星合影，互赠球衣。近日，他在个人社交媒体上表达了自己希望欧文下个赛季去篮网的愿望。',
  '有消息称欧文已经拒绝了执行与凯尔特人下赛季的合同，将会试水自由市场，两人的情况可以说是非常相似，不知道谁将先确定自己的下家。'
);

insert into dqd_news values(null,
  '早报：我来，我见，我征服',
  'img/new/01.jpg',
  'img/new/01_lg.jpg',
  4769,false,'ForzaBan','2019-06-10','07:00',
  '大家早上好呀，欢迎收看6月10日的懂球帝早报',
  '昨日晚间至今日凌晨，欧国联两场决赛相继开球。三四名决赛中，英格兰在点球大战中6-5险胜瑞士夺得季军，皮克福德扑点又亲自主罚命中点球。
  
  随后的决赛在葡萄牙和荷兰之间展开，最终凭借B席脚后跟助攻格德斯的进球，葡萄牙夺得首届欧国联冠军，C罗捧起个人生涯第31座冠军奖杯。'
);
insert into dqd_news values(null,
  '三年后再夺冠！葡萄牙1-0荷兰夺首届欧国联冠军，格德斯制胜',
  'img/new/02.jpg',
  'img/new/02_lg.jpg',
  2352,false,'普通文青','2019-06-10','04:34',
  '北京时间6月10日凌晨2:45，欧洲国家联赛决赛在巨龙球场举行，由葡萄牙对阵荷兰。上半场双方均无建树；
  下半场伯纳多-席尔瓦助攻格德斯为葡萄牙打破僵局，德佩近距离头球被帕特里西奥神勇化解。
  最终，葡萄牙1-0战胜荷兰，夺得首届欧洲国家联赛冠军！',
  '全场比赛结束，葡萄牙1-0战胜荷兰，夺得首届欧洲国家联赛冠军！'
);
insert into dqd_news values(null,
  '法媒：博格巴下家三选一，皇马、尤文和巴黎',
  'img/new/03.jpg',
  'img/new/03_lg.jpg',
  3245,false,'visonr','2019-06-10','10:52',
  '法国媒体Le10Sport指出，博格巴在今夏离开曼联的可能性与日俱增，皇马、尤文和巴黎圣日耳曼都可能成为法国人的下一站。',
  '博格巴上赛季在英超上阵35次打进了13球，他还入选了PFA年度最佳阵容，但曼联和球迷对他在一些比赛不够努力以及糟糕的肢体语言感到不满，他被传已经准备好转会。

  皇马在夏季转会市场已经引进了阿扎尔和约维奇等人，齐达内还希望引进一名中前卫，博格巴和热刺的埃里克森都是他的目标。

  尤文也有兴趣回购博格巴，法国人曾在2012年到2016年为斑马军团效力，这四年博格巴都帮助尤文顺利赢得意甲冠军。随着阿莱格里离队，尤文目前仍未任命新主帅，不过切尔西主帅萨里很可能成为尤文新帅，他上任后应该会加速引进博格巴的步伐。'
);
insert into dqd_news values(null,
  '米体：帕尔马想把伊图尔韦从墨西哥带回意甲',
  'img/new/04.jpg',
  'img/new/04_lg.jpg',
  176,false,'Diavel_aDRy','2019-06-10','10:44',
  '来自《米兰体育报》的报道宣称，帕尔马今年夏天将会再次尝试把伊图尔韦带回意甲赛场。',
  '现年26岁的伊图尔韦目前效力于墨西哥球队美洲狮，帕尔马今年一月就曾经试图引进这位巴拉圭国脚，但谈判最终没有成功。

  伊图尔韦2013-14赛季曾经代表维罗纳在意甲拿出过抢眼的表现，在2014年夏天他以意甲标王的身份转会罗马，但随后他的表现就出现了滑坡。

  本赛季在美洲狮阵中，伊图尔韦出场38次，14次担任首发，打进8球助攻2次。'
);
insert into dqd_news values(null,
  '土媒：冰岛用种族歧视来欢迎土耳其队，队长被人用马桶刷侮辱',
  'img/new/05.jpg',
  'img/new/05_lg.jpg',
  103,false,'Mesaldo','2019-06-10','10:40',
  '土耳其队近日抵达了冰岛，两队将在周二晚上进行一场2020年欧洲杯预选赛的比赛。
  但是据土耳其媒体TRT（土耳其广播电视公司）报道，土耳其队在冰岛机场遭受了“种族歧视”、“粗鲁”、“无礼”的对待。',
  '在冰岛凯夫拉维克机场着陆后，土耳其队被禁止离开三个多小时，冰岛机场官员没有给出任何理由。
  
  随后，机场官员坚持搜查所有球员和工作人员的行李。移民局则花了很长时间来处理球员和工作人员的护照。

  最终，他们被允许拖着行李离开机场。在土耳其队长埃姆雷接受媒体采访时，一名男子甚至用马桶刷放在他的脸前，作为他讲话的“麦克风”，并用手机进行拍摄。'
);
insert into dqd_news values(null,
  '拉莫斯：我们尽量不去注意恩里克的缺席，阿扎尔是世界级球员',
  'img/new/07.jpg',
  'img/new/07_lg.jpg',
  632,false,'Jojo是小白','2019-06-10','10:39',
  '北京时间明天凌晨2点45分，西班牙将迎来欧预赛小组赛第四场，对阵瑞典队的比赛。
  在赛前队长拉莫斯接受采访时表示，他们会尽力让恩里克的缺席不去影响球队，而对于皇马刚刚签下的阿扎尔，拉莫斯认为他是一名世界级的球员。',
  '关于恩里克缺席
“我们理解他的缺席是因为很重要的事情。恩里克是我们的‘船长’，他很好地引领着我们，他是非常优秀并且非常专业的。我们必须尽量不去注意他的缺席，让这件事不去影响到团队。恩里克也希望我们去赢得胜利，而不是讨论他的缺席。”

关于阿扎尔
“他要和我们一起踢球了，我们准备好了(笑了笑)，我很开心。我觉得这是一笔很棒的签约，他是一名世界级球员，他的到来对可以加强球队的实力。”
关于球迷的支持
“这是至关重要的。作为队长，我想呼吁马德里和附近的球迷来支持我们。”'
);
insert into dqd_news values(null,
  '专家：萨里即将执教尤文，各方已达成协议',
  'img/new/08.jpg',
  'img/new/08_lg.jpg',
  428,false,'Trequartista','2019-06-10','10:34',
  '据《意大利体育》的专家佩杜利亚报道，切尔西主帅萨里即将转投尤文图斯，各方已经达成协议，预计这件事近期就会官方宣布。
  此外，这两家俱乐部还讨论了埃莫森和伊瓜因的转会问题。',
  '佩杜利亚在其个人网站上表示，刚刚结束的这个周末是尤文官宣萨里执教前的最后一个周末。
  
  萨里执教斑马军团一事现在已经达成了协议，从现在开始，切尔西和尤文的沟通都会往积极的方向发展。
  
  过去二十多天的传闻到了快结束的时候
  佩杜利亚还透露：“尤文图斯和切尔西最近在谈判中也谈过埃莫森和伊瓜因的问题，很快所有的结果都将揭晓。
  当然了，这两家俱乐部谈判的主要问题是萨里。”'
);
insert into dqd_news values(null,
  '葡媒：5年3000万，曼城要给菲利克斯开巨额合同',
  'img/new/09.jpg',
  'img/new/09_lg.jpg',
  632,false,'EM','2019-06-10','10:31',
  '根据《镜报》援引葡萄牙媒体《记录报》的报道，曼城有意本菲卡小将若昂-菲利克斯，为了竞争这名球员，他们愿意为这位19岁的新星开出5年3000万欧元的合同。',
  '菲利克斯在上个赛季大放异彩，他为本菲卡出战42场，其中33场首发，打入20进球、送出8个助攻，在对阵法兰克福的欧联杯1/4决赛中，他还完成了帽子戏法。

  曼城被认为是最有可能签下菲利克斯的球队，而本菲卡方面也很清楚球队很难留下这名颇具天赋的球员。据悉，为把菲利克斯纳入麾下，曼城为他开出5年3000万欧元的合同。菲利克斯还刚刚随葡萄牙夺得欧国联冠军，未来可期。'
);
insert into dqd_news values(null,
  '意媒：那不勒斯和洛萨诺谈妥合同，但埃因霍温要价5000万欧元',
  'img/new/10.jpg',
  'img/new/10_lg.jpg',
  412,false,'Diavel_aDRy','2019-06-10','10:22',
  '意大利媒体Cronache di Napoli宣称，那不勒斯已经和洛萨诺大致谈妥了个人待遇，不过他们还必须说服埃因霍温降低他们对这位墨西哥国脚高达5000万欧元的要价。',
  '这家那不勒斯当地的报纸相信，安切洛蒂的球队已经向洛萨诺开出了一份为期五年，年薪为270万欧元外加奖金的合同。

  那不勒斯的体育总监吉恩托利据说一直在和洛萨诺的代表进行接触，这支意甲劲旅希望球员的经纪人拉伊奥拉能够帮助谈判的三方最终达成一致，这需要埃因霍温降低他们目前5000万欧元的要价。

  安切洛蒂据说十分欣赏洛萨诺，这位23岁的边路攻击手本赛季代表埃因霍温出场40次，贡献了21粒进球和9次助攻。'
);
insert into dqd_news values(null,
  'C罗杯赛之王，34岁堪称豪门瑰宝和国家队灵魂',
  'img/new/11.jpg',
  'img/new/11_lg.jpg',
  1021,false,'第一体坛','2019-06-10','10:13',
  'C罗，杯赛之王，34岁堪称豪门瑰宝和国家队灵魂
  在刚刚结束的欧足联首届举办的欧国联A级别决赛中，葡萄牙以1-0战胜了强大的荷兰队拿到了冠军，这是继2016年葡萄牙拿到了欧洲杯冠军之后，第二次拿到了洲际大赛的冠军。
  球队头号球星C罗再一次以球队队长的身份捧起了奖杯，可以说C罗的职业生涯非常的圆满，除了世界杯以外，剩下的只要能拿到的冠军，几乎全部揽入囊中。',
  '杯赛之王C罗
  可以说C罗是目前世界足坛名符其实的杯赛之王，在自己的职业生涯中，已经拿到了5次欧冠冠军，包括在曼联拿到一次欧冠冠军，在皇马五年拿到四个欧冠。可以说是整个世界足坛绝无仅有。
  与C罗齐名的梅西职业生涯拿到了四个欧冠，其中一个自己并不是绝对的主力。
  不得不说，很多人说C罗在俱乐部强劲，而在国家队羸弱的说法早就已经无立足的根据。
  C罗2016年带领葡萄牙队，凭借着“牛皮糖”踢法，或者说“消耗战”踢法战胜了多支欧洲强队，其中包括如日中天的法国队和重新崛起的荷兰队。'
);
insert into dqd_news values(null,
  '德容：我本可以做得更多，我们已经展示了作为团队的力量',
  'img/new/12.jpg',
  'img/new/12_lg.jpg',
  379,false,'Mesaldo','2019-06-10','10:12',
  '荷兰中场弗兰基-德容在输掉欧国联决赛后表示，他觉得自己本可以发挥更大的作用。',
  '“我今天本可以做得更多，”他在接受NOS（荷兰广播联盟）采访时说道，“我没有在他们的后卫和中场球员之间创造足够的空间。”

  “对英格兰的比赛很艰难，”他补充道，“我们中的一些人已经三周没打比赛了，突然间他们就不得不打120分钟这么高水平的比赛。但这不是借口，因为我们都是专业人士，这不是我们输给葡萄牙的原因。”

  这位22岁的球员在对阵葡萄牙的比赛中获得了他的第九次国家队出场机会——八个月前他在荷兰对阵秘鲁的友谊赛中首次亮相。'
);
insert into dqd_news values(null,
  '贾秀全：王霜去了巴黎后就几乎没有磨合了，状态是有起伏的',
  'img/new/13.jpg',
  'img/new/13_lg.jpg',
  1324,false,'luna64','2019-06-10','10:12',
  '在输给德国女足后，中国女足主教练贾秀全在赛后新闻发布会上说道，“我需要的是一个团队，而不是某一个球星。”
  这句话引起外界的关注，但据国内媒体消息称，贾秀全还要一番话没有被直播报道出来。',
  '据国内媒体的消息，贾秀全的话语通过视频直播广为传播，引发了舆论极大的争议；
  但另一个没有被直播出来的回答是，贾秀全在被要求谈及王霜与球队的磨合情况时，回答道，“她去了大巴黎之后，就几乎没有磨合了。可能球员的状态好与坏，是有起伏的。我们希望王霜的状态能够越来越好。”

  国内媒体的报道表示，在王霜身陷解约风波、状态不佳时，贾秀全作为国家队主帅，在新闻发布会上过于直接的批评必然欠妥，引发轩然大波也在情理之中；
  但另一方面，当王霜屡屡因无法和国家队磨合而焦虑时，贾秀全也曾让她不要着急，一个人拯救不了一支球队。'
);
insert into dqd_news values(null,
  '西班牙队助教：恩里克8月回归，伊斯科哪怕是外国人也要归化',
  'img/new/06.jpg',
  'img/new/06_lg.jpg',
  762,false,'CaptainThanos','2019-06-10','10:08',
  '北京时间6月11日凌晨，西班牙将在欧预赛小组赛中坐镇主场迎战瑞典队。
  西班牙队助教莫雷诺在出席新闻发布会时表示，恩里克将在8月份回归国家队，同时莫雷诺还认为伊斯科是一名独特的球员，哪怕他不是西班牙人，国家队也愿意归化他。',
  '对阵瑞典的比赛
“瑞典队近年来表现很出色，虽然从历史战绩来看我们是更占优势的一方，但历史不一定会重演。我们希望利用好伯纳乌球场的优势，也愿意看到球场内坐满8万人给西班牙队加油。”

伊斯科
“伊斯科告诉我们，他觉得自己在左边路活动是最舒服的。我觉得伊斯科是一位独特的球员，也是世界最佳球员之一。如果他不是西班牙人，我们也愿意归化他。”

国家队阵容的变动
不到最后一刻，首发11人都会存在变数。昨天我和恩里克有过对话，明天的比赛我们也会做出相应的调整。

布斯克茨
听到他被外界质疑，这让我很受伤。'
);

-- 比赛部分

-- 数据部分
-- 中超->积分榜
create table dqd_csl_integral(
  did int primary key auto_increment,
  dimg varchar(64) not null,
  dclub varchar(64) not null,
  dgame int not null,
  dwin int not null,
  dfloat int not null,
  lose int not null,
  goal int not null,
  throw int not null,
  integral int not null
);
insert into dqd_csl_integral values(null,
  'img/csl_club/01.png',
  '北京国安',12,11,0,1,25,6,33
);
insert into dqd_csl_integral values(null,
  'img/csl_club/02.png',
  '上海上港',12,10,1,1,24,10,31
);
insert into dqd_csl_integral values(null,
  'img/csl_club/03.png',
  '广州恒大',12,9,1,2,22,10,28
);
insert into dqd_csl_integral values(null,
  'img/csl_club/04.png',
  '山东鲁能',12,6,3,3,22,13,21
);
insert into dqd_csl_integral values(null,
  'img/csl_club/05.png',
  '江苏苏宁',12,5,3,4,24,20,18
);
insert into dqd_csl_integral values(null,
  'img/csl_club/06.png',
  '重庆斯威',12,4,5,3,15,17,17
);
insert into dqd_csl_integral values(null,
  'img/csl_club/07.png',
  '天津泰达',12,4,3,5,18,19,15
);
insert into dqd_csl_integral values(null,
  'img/csl_club/08.png',
  '武汉卓尔',12,4,3,5,13,15,15
);
insert into dqd_csl_integral values(null,
  'img/csl_club/09.png',
  '广州富力',12,4,3,5,22,27,15
);
insert into dqd_csl_integral values(null,
  'img/csl_club/10.png',
  '河南建业',12,3,4,5,16,20,13
);
insert into dqd_csl_integral values(null,
  'img/csl_club/11.png',
  '大连一方',12,3,4,5,14,18,13
);
insert into dqd_csl_integral values(null,
  'img/csl_club/12.png',
  '北京人和',12,3,2,7,12,20,11
);
insert into dqd_csl_integral values(null,
  'img/csl_club/13.png',
  '深圳佳兆',12,3,2,7,12,20,11
);
insert into dqd_csl_integral values(null,
  'img/csl_club/14.png',
  '河北华夏',12,2,3,7,13,21,9
);
insert into dqd_csl_integral values(null,
  'img/csl_club/15.png',
  '上海申花',12,2,3,7,15,21,9
);
insert into dqd_csl_integral values(null,
  'img/csl_club/16.png',
  '天津天海',12,1,4,7,13,23,7
);
-- 中超->射手榜
create table dqd_csl_shooter(
  sid int primary key auto_increment,
  simg varchar(128) not null,
  sname varchar(64) not null,
  sclub varchar(128) not null,
  goals int not null
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/01.jpg',
  '扎哈维','广州富力',11
);insert into dqd_csl_shooter values(null,
  'img/csl_club/02.jpg',
  '佩莱','山东鲁能',10
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/03.jpg',
  '乔纳森','天津泰达',9
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/04.jpg',
  '特谢拉','江苏苏宁',9
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/05.jpg',
  '伊哈洛','上海申花',7
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/06.jpg',
  '塔利斯卡','广州恒大',7
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/07.jpg',
  '埃尔克森','上海上港',7
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/08.jpg',
  '卡拉斯科','大连一方',7
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/09.jpg',
  '迪奥普','北京人和',6
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/10.jpg',
  '萨巴','广州富力',5
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/11.jpg',
  '比埃拉','北京国安',5
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/12.jpg',
  '埃德尔','江苏苏宁',5
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/13.jpg',
  '谢鹏飞','江苏苏宁',5
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/14.jpg',
  '奥汉德扎','河南建业',5
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/15.jpg',
  '普雷西亚多','深圳佳兆',5
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/16.jpg',
  '奥古斯托','北京国安',4
);
insert into dqd_csl_shooter values(null,
  'img/csl_club/17.jpg',
  '巴坎布','北京国安',4
);
-- 中超->助攻榜
create table dqd_csl_assists(
  aid int primary key auto_increment,
  aimg varchar(128) not null,
  aname varchar(64) not null,
  aclub varchar(128) not null,
  assists int not null
);
insert into dqd_csl_assists values(null,
  'img/csl_club/18.jpg',
  '唐淼','广州富力',6
);
insert into dqd_csl_assists values(null,
  'img/csl_club/16.jpg',
  '奥古斯托','北京国安',5
);
insert into dqd_csl_assists values(null,
  'img/csl_club/19.jpg',
  '杨立瑜','广州恒大',5
);
insert into dqd_csl_assists values(null,
  'img/csl_club/20.jpg',
  '登贝莱','广州富力',4
);
insert into dqd_csl_assists values(null,
  'img/csl_club/10.jpg',
  '萨巴','广州富力',4
);
insert into dqd_csl_assists values(null,
  'img/csl_club/11.jpg',
  '比埃拉','北京国安',4
);
insert into dqd_csl_assists values(null,
  'img/csl_club/21.jpg',
  '阿奇姆彭','天津泰达',4
);
insert into dqd_csl_assists values(null,
  'img/csl_club/22.jpg',
  '奥斯卡','上海上港',4
);
insert into dqd_csl_assists values(null,
  'img/csl_club/23.jpg',
  '李圣龙','上海上港',4
);
insert into dqd_csl_assists values(null,
  'img/csl_club/24.jpg',
  '赵宏略','天津泰达',3
);
insert into dqd_csl_assists values(null,
  'img/csl_club/25.jpg',
  '费尔南多','重庆斯威',3
);
insert into dqd_csl_assists values(null,
  'img/csl_club/26.jpg',
  '瓜林','上海申花',3
);
insert into dqd_csl_assists values(null,
  'img/csl_club/27.jpg',
  '曹建定','上海申花',3
);
insert into dqd_csl_assists values(null,
  'img/csl_club/28.jpg',
  '汪松','江苏苏宁',3
);
insert into dqd_csl_assists values(null,
  'img/csl_club/29.jpg',
  '吉祥','江苏苏宁',3
);
insert into dqd_csl_assists values(null,
  'img/csl_club/30.jpg',
  '曹永竞','北京人和',3
);
-- 中超->黄牌
create table dqd_csl_yellow(
  yid int primary key auto_increment,
  yimg varchar(128) not null,
  yname varchar(64) not null,
  yclub varchar(128) not null,
  yellow int not null
);
insert into dqd_csl_yellow values(null,
  'img/csl_club/32.jpg',
  '金强','深圳佳兆',5
);
insert into dqd_csl_yellow values(null,
  'img/csl_club/34.jpg',
  '秦升','大连一方',5
);
insert into dqd_csl_yellow values(null,
  'img/csl_club/18.jpg',
  '唐淼','广州富力',4
);
insert into dqd_csl_yellow values(null,
  'img/csl_club/21.jpg',
  '阿奇姆彭','天津泰达',4
);
insert into dqd_csl_yellow values(null,
  'img/csl_club/36.jpg',
  '罗郜','重庆斯威',4
);
insert into dqd_csl_yellow values(null,
  'img/csl_club/37.jpg',
  '丛震','上海申花',4
);
insert into dqd_csl_yellow values(null,
  'img/csl_club/33.jpg',
  '王鹏','深圳佳兆',4
);
insert into dqd_csl_yellow values(null,
  'img/csl_club/35.jpg',
  '罗韵','北京人和',4
);
insert into dqd_csl_yellow values(null,
  'img/csl_club/08.jpg',
  '卡拉斯科','大连一方',4
);
insert into dqd_csl_yellow values(null,
  'img/csl_club/39.jpg',
  '马斯切拉诺','河北华夏',4
);
insert into dqd_csl_yellow values(null,
  'img/csl_club/35.jpg',
  '叶楚贵','广州富力',3
);
insert into dqd_csl_yellow values(null,
  'img/csl_club/40.jpg',
  '于大宝','北京国安',3
);
-- 中超->红牌
create table dqd_csl_red(
  rid int primary key auto_increment,
  rimg varchar(128) not null,
  rname varchar(64) not null,
  rclub varchar(128) not null,
  red int not null
);
insert into dqd_csl_red values(null,
  'img/csl_club/34.jpg',
  '秦升','大连一方',3
);
insert into dqd_csl_red values(null,
  'img/csl_club/35.jpg',
  '罗韵','北京人和',1
);
insert into dqd_csl_red values(null,
  'img/csl_club/32.jpg',
  '金强','深圳佳兆',1
);
insert into dqd_csl_red values(null,
  'img/csl_club/36.jpg',
  '罗郜','重庆斯威',1
);
insert into dqd_csl_red values(null,
  'img/csl_club/37.jpg',
  '丛震','上海申花',1
);
insert into dqd_csl_red values(null,
  'img/csl_club/33.jpg',
  '王鹏','深圳佳兆',1
);
-- 中超->球队榜->进球
create table dqd_csl_team_goal(
  gid int primary key auto_increment,
  gimg varchar(128) not null,
  gclub varchar(128) not null,
  goals int not null
);
insert into dqd_csl_team_goal values(null,
  'img/csl_club/01.png',
  '北京国安',25
);
insert into dqd_csl_team_goal values(null,
  'img/csl_club/05.png',
  '江苏苏宁',24
);
insert into dqd_csl_team_goal values(null,
  'img/csl_club/02.png',
  '上海上港',24
);
insert into dqd_csl_team_goal values(null,
  'img/csl_club/09.png',
  '广州富力',22
);
insert into dqd_csl_team_goal values(null,
  'img/csl_club/04.png',
  '山东鲁能',22
);
insert into dqd_csl_team_goal values(null,
  'img/csl_club/03.png',
  '广州恒大',22
);
insert into dqd_csl_team_goal values(null,
  'img/csl_club/07.png',
  '天津泰达',18
);
insert into dqd_csl_team_goal values(null,
  'img/csl_club/10.png',
  '河南建业',16
);
insert into dqd_csl_team_goal values(null,
  'img/csl_club/06.png',
  '重庆斯威',15
);
insert into dqd_csl_team_goal values(null,
  'img/csl_club/15.png',
  '上海申花',15
);

-- 中超->球队榜->控球率
create table dqd_csl_team_control(
  cid int primary key auto_increment,
  cimg varchar(128) not null,
  cclub varchar(128) not null,
  dcontrol int not null
);
insert into dqd_csl_team_control values(null,
  'img/csl_club/01.png',
  '北京国安',62
);
insert into dqd_csl_team_control values(null,
  'img/csl_club/09.png',
  '广州富力',57
);
insert into dqd_csl_team_control values(null,
  'img/csl_club/03.png',
  '广州恒大',56
);
insert into dqd_csl_team_control values(null,
  'img/csl_club/05.png',
  '江苏苏宁',52
);
insert into dqd_csl_team_control values(null,
  'img/csl_club/02.png',
  '上海上港',51
);
insert into dqd_csl_team_control values(null,
  'img/csl_club/14.png',
  '河北华夏',51
);
insert into dqd_csl_team_control values(null,
  'img/csl_club/07.png',
  '天津泰达',49
);
insert into dqd_csl_team_control values(null,
  'img/csl_club/04.png',
  '山东鲁能',49
);
insert into dqd_csl_team_control values(null,
  'img/csl_club/08.png',
  '武汉卓尔',48
);
insert into dqd_csl_team_control values(null,
  'img/csl_club/16.png',
  '天津天海',48
);
insert into dqd_csl_team_control values(null,
  'img/csl_club/11.png',
  '大连一方',48
);

-- 中超->球队榜->净比赛时间
create table dqd_csl_team_time(
  tid int primary key auto_increment,
  timg varchar(128) not null,
  tclub varchar(128) not null,
  dtime int not null
);
insert into dqd_csl_team_time values(null,
  'img/csl_club/16.png',
  '天津天海',57
);
insert into dqd_csl_team_time values(null,
  'img/csl_club/09.png',
  '广州富力',55
);
insert into dqd_csl_team_time values(null,
  'img/csl_club/08.png',
  '武汉卓尔',55
);
insert into dqd_csl_team_time values(null,
  'img/csl_club/04.png',
  '山东鲁能',54
);
insert into dqd_csl_team_time values(null,
  'img/csl_club/01.png',
  '北京国安',53
);
insert into dqd_csl_team_time values(null,
  'img/csl_club/14.png',
  '河北华夏',53
);
insert into dqd_csl_team_time values(null,
  'img/csl_club/02.png',
  '上海上港',53
);
insert into dqd_csl_team_time values(null,
  'img/csl_club/05.png',
  '江苏苏宁',52
);
insert into dqd_csl_team_time values(null,
  'img/csl_club/03.png',
  '广州恒大',52
);
insert into dqd_csl_team_time values(null,
  'img/csl_club/15.png',
  '上海申花',52
);
insert into dqd_csl_team_time values(null,
  'img/csl_club/12.png',
  '北京人和',51
);

-- 中超->球队榜->黄牌
create table dqd_csl_team_yellow(
  yid int primary key auto_increment,
  yimg varchar(128) not null,
  yclub varchar(128) not null,
  yellow int not null
);
insert into dqd_csl_team_yellow values(null,
  'img/csl_club/07.png',
  '天津泰达',27
);
insert into dqd_csl_team_yellow values(null,
  'img/csl_club/06.png',
  '重庆斯威',25
);
insert into dqd_csl_team_yellow values(null,
  'img/csl_club/10.png',
  '河南建业',25
);
insert into dqd_csl_team_yellow values(null,
  'img/csl_club/02.png',
  '上海上港',25
);
insert into dqd_csl_team_yellow values(null,
  'img/csl_club/12.png',
  '北京人和',24
);
insert into dqd_csl_team_yellow values(null,
  'img/csl_club/11.png',
  '大连一方',24
);
insert into dqd_csl_team_yellow values(null,
  'img/csl_club/05.png',
  '江苏苏宁',23
);
insert into dqd_csl_team_yellow values(null,
  'img/csl_club/13.png',
  '深圳佳兆',23
);
insert into dqd_csl_team_yellow values(null,
  'img/csl_club/14.png',
  '河北华夏',23
);
insert into dqd_csl_team_yellow values(null,
  'img/csl_club/09.png',
  '广州富力',21
);

-- 中超->球队榜->红牌
create table dqd_csl_team_red(
  rid int primary key auto_increment,
  rimg varchar(128) not null,
  rclub varchar(128) not null,
  red int not null
);
insert into dqd_csl_team_red values(null,
  'img/csl_club/07.png',
  '天津泰达',4
);
insert into dqd_csl_team_red values(null,
  'img/csl_club/06.png',
  '重庆斯威',3
);
insert into dqd_csl_team_red values(null,
  'img/csl_club/11.png',
  '大连一方',3
);
insert into dqd_csl_team_red values(null,
  'img/csl_club/01.png',
  '北京国安',2
);
insert into dqd_csl_team_red values(null,
  'img/csl_club/15.png',
  '上海申花',2
);
insert into dqd_csl_team_red values(null,
  'img/csl_club/13.png',
  '深圳佳兆',2
);
insert into dqd_csl_team_red values(null,
  'img/csl_club/12.png',
  '北京人和',2
);


-- 中超->赛程
create table dqd_csl_game(
  gid int primary key auto_increment,
  gdata varchar(64) not null,
  gtime varchar(64) not null,
  gstate boolean not null,
  lclub varchar(128) not null,
  limg varchar(128) not null,
  lscore int not null,
  rscore int not null,
  rimg varchar(128) not null,
  rclub varchar(128) not null
);
-- 第一页
insert into dqd_csl_game values(null,'03-01','18:00',1,'山东鲁能',
  'img/csl_club/04.png',1,0,
  'img/csl_club/12.png','北京人和'
);
insert into dqd_csl_game values(null,'03-01','19:35',1,'广州恒大',
  'img/csl_club/03.png',3,0,
  'img/csl_club/16.png','天津天海'
);
insert into dqd_csl_game values(null,'03-01','19:35',1,'上海申花',
  'img/csl_club/15.png',0,4,
  'img/csl_club/02.png','上海上港'
);
insert into dqd_csl_game values(null,'03-01','20:00',1,'武汉卓尔',
  'img/csl_club/08.png',0,1,
  'img/csl_club/01.png','北京国安'
);
insert into dqd_csl_game values(null,'03-02','15:30',1,'重庆斯威',
  'img/csl_club/06.png',2,2,
  'img/csl_club/09.png','广州富力'
);
insert into dqd_csl_game values(null,'03-02','20:00',1,'深圳佳兆',
  'img/csl_club/13.png',3,1,
  'img/csl_club/14.png','河北华夏'
);
insert into dqd_csl_game values(null,'03-03','15:30',1,'河南建业',
  'img/csl_club/10.png',1,1,
  'img/csl_club/11.png','大连一方'
);
insert into dqd_csl_game values(null,'03-03','19:35',1,'江苏苏宁',
  'img/csl_club/05.png',3,2,
  'img/csl_club/07.png','天津泰达'
);
-- 第二页
insert into dqd_csl_game values(null,'03-08','19:35',1,'广州恒大',
  'img/csl_club/03.png',1,0,
  'img/csl_club/07.png','天津泰达'
);
insert into dqd_csl_game values(null,'03-09','15:30',1,'山东鲁能',
  'img/csl_club/04.png',2,2,
  'img/csl_club/10.png','河南建业'
);
insert into dqd_csl_game values(null,'03-09','15:30',1,'重庆斯威',
  'img/csl_club/06.png',0,4,
  'img/csl_club/01.png','北京国安'
);
insert into dqd_csl_game values(null,'03-09','19:35',1,'广州富力',
  'img/csl_club/09.png',3,3,
  'img/csl_club/11.png','大连一方'
);
insert into dqd_csl_game values(null,'03-09','19:35',1,'上海上港',
  'img/csl_club/02.png',3,2,
  'img/csl_club/05.png','江苏苏宁'
);
insert into dqd_csl_game values(null,'03-10','15:30',1,'武汉卓尔',
  'img/csl_club/08.png',1,0,
  'img/csl_club/12.png','北京人和'
);
insert into dqd_csl_game values(null,'03-10','17:30',1,'深圳佳兆',
  'img/csl_club/13.png',2,1,
  'img/csl_club/16.png','天津天海'
);
insert into dqd_csl_game values(null,'03-10','19:35',1,'上海申花',
  'img/csl_club/15.png',3,2,
  'img/csl_club/14.png','河北华夏'
);
-- 第三页
insert into dqd_csl_game values(null,'03-29','19:35',1,'天津泰达',
  'img/csl_club/07.png',4,3,
  'img/csl_club/09.png','广州富力'
);
insert into dqd_csl_game values(null,'03-30','15:30',1,'北京人和',
  'img/csl_club/12.png',0,1,
  'img/csl_club/01.png','北京国安'
);
insert into dqd_csl_game values(null,'03-30','16:00',1,'大连一方',
  'img/csl_club/09.png',0,1,
  'img/csl_club/03.png','广州恒大'
);
insert into dqd_csl_game values(null,'03-30','19:35',1,'河北华夏',
  'img/csl_club/14.png',1,2,
  'img/csl_club/02.png','上海上港'
);
insert into dqd_csl_game values(null,'03-31','15:30',1,'天津天海',
  'img/csl_club/16.png',2,4,
  'img/csl_club/04.png','山东鲁能'
);
insert into dqd_csl_game values(null,'03-31','17:30',1,'河南建业',
  'img/csl_club/10.png',1,2,
  'img/csl_club/15.png','上海申花'
);
insert into dqd_csl_game values(null,'03-31','19:35',1,'江苏苏宁',
  'img/csl_club/05.png',2,1,
  'img/csl_club/08.png','武汉卓尔'
);
insert into dqd_csl_game values(null,'03-31','19:35',1,'重庆斯威',
  'img/csl_club/06.png',1,0,
  'img/csl_club/13.png','深圳佳兆'
);

-- 积分榜->底部规则介绍  多联赛
create table dqd_league_rule(
  lid int primary key auto_increment,
  league varchar(128) not null,
  tone varchar(128) not null,
  olist varchar(128) not null,
  slist varchar(128) not null,
  tlist varchar(128) not null,
  -- 单字母一级列表、双字母二级列表
  oolist varchar(128) not null,
  sslist varchar(128) not null,
  ttlist varchar(128) not null,
  fflist varchar(128) not null,
  flist varchar(128) not null,
  tsec varchar(128) not null,
  tolist varchar(128) not null,
  tslist varchar(128) not null,
  stlist varchar(128) not null
);
insert into dqd_league_rule values(null,'csl',
  '中超联赛名次决定方法：','(一) 每队胜一场德3分，平一场得1分，负一场得0分；',
  '(二) 中超联赛结束，积分多的球队名次靠前','(三) 如果两队或两队以上积分相等，依下列顺序排名名次：',
  'a) 相互比赛积分多者，名次列前；','b) 相互比赛净胜球多者，名次列前；',
  'c) 相互比赛进球多者，名次列前；','d) 积分相对队之间，根据《中国足球之夜联赛排名中预备队和青少年梯队赛事综合积分计算原则》执行；',
  '(四) 中超联赛进行中，如果两队或两队以上积分相等，积分相等队之间净胜球多者，名次列前。','亚冠&降级名额：',
  '(一) 联赛冠、亚军直接参加下赛季亚冠联赛，第三名参加亚冠附加赛；',
  '(二) 足协杯冠军直接参加下赛季亚冠联赛，若其已经获得亚冠(含附加赛)参赛资格，则其名额顺延给联赛排名靠前的球队；',
  '(三) 排名最后两位降入中甲联赛。'
);

-- 比赛页面数据
create table dqd_game_data(
  gid int primary key auto_increment,
  gdata varchar(64) not null,
  gstate boolean not null,
  limg varchar(128) not null,
  lclub varchar(64) not null,
  lscore int not null,
  gtime varchar(32) not null,
  gname varchar(64) not null,
  gcount int not null,
  rscore int not null,
  rimg varchar(128) not null,
  rclub varchar(64) not null
);
insert into dqd_game_data values(null,'2019-04-12',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-13',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-13',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-13',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-13',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-13',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-14',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-14',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-14',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-14',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-15',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-15',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-15',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-15',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-15',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-15',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-15',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-15',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-16',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-16',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-16',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-16',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-16',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-16',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-16',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-17',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-17',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-04-17',0,
  'img/csl_club/09.png','广州富力',2,
  '19:35','中超',5,1,'img/csl_club/15.png',
  '上海申花'
);
insert into dqd_game_data values(null,'2019-06-15',1,
  'img/country/10.png','牙买加女足',0,
  '00:00','女足世界杯 小组赛',0,0,'img/country/11.png',
  '意大利女足'
);
insert into dqd_game_data values(null,'2019-06-15',1,
  'img/country/11.png','意大利U20',0,
  '02:30','世青赛 三四名决赛',0,0,'img/country/12.png',
  '厄瓜多尔U20'
);
insert into dqd_game_data values(null,'2019-06-15',1,
  'img/country/02.png','英格兰女足',0,
  '03:00','女足世界杯 小组赛',0,0,'img/country/09.png',
  '阿根廷女足'
);

