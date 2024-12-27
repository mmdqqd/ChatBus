/*
 Navicat Premium Data Transfer

 Source Server         : pjx
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : user_db

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 27/12/2024 08:34:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_star` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_evaluate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `movie_png` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 267 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (3, '阿甘正传', '导演: 罗伯特·泽米吉斯 Robert Zemeckis 主演: 汤姆·汉克斯 Tom Hanks / ... 1994 / 美国 / 剧情 爱情', '9.7', '一部美国近现代史。', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (4, '泰坦尼克号', '导演: 詹姆斯·卡梅隆 James Cameron 主演: 莱昂纳多·迪卡普里奥 Leonardo... 1997 / 美国 墨西哥 / 剧情 爱情 灾难', '9.6', '失去的才是永恒的。', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (5, '千与千寻', '导演: 宫崎骏 Hayao Miyazaki 主演: 柊瑠美 Rumi Hîragi / 入野自由 Miy... 2001 / 日本 / 剧情 动画 奇幻', '9.5', '最好的宫崎骏，最好的久石让。', NULL);
INSERT INTO `movie` VALUES (6, '美丽人生', '导演: 罗伯托·贝尼尼 Roberto Benigni 主演: 罗伯托·贝尼尼 Roberto Beni... 1997 / 意大利 / 剧情 喜剧 爱情 战争', '10', '最美的谎言。', NULL);
INSERT INTO `movie` VALUES (7, '这个杀手不太冷', '导演: 吕克·贝松 Luc Besson 主演: 让·雷诺 Jean Reno / 娜塔莉·波特曼 ... 1994 / 法国 美国 / 剧情 动作 犯罪', '9.4', '怪蜀黍和小萝莉不得不说的故事。', NULL);
INSERT INTO `movie` VALUES (8, '星际穿越', '导演: 克里斯托弗·诺兰 Christopher Nolan 主演: 马修·麦康纳 Matthew Mc... 2014 / 美国 英国 加拿大 / 剧情 科幻 冒险', '9.4', '爱是一种力量，让我们超越时空感知它的存在。', NULL);
INSERT INTO `movie` VALUES (9, '盗梦空间', '导演: 克里斯托弗·诺兰 Christopher Nolan 主演: 莱昂纳多·迪卡普里奥 Le... 2010 / 美国 英国 / 剧情 科幻 悬疑 冒险', '9.4', '诺兰给了我们一场无法盗取的梦。', NULL);
INSERT INTO `movie` VALUES (10, '楚门的世界', '导演: 彼得·威尔 Peter Weir 主演: 金·凯瑞 Jim Carrey / 劳拉·琳妮 Lau... 1998 / 美国 / 剧情 科幻', '9.4', '如果再也不能见到你，祝你早安，午安，晚安。', NULL);
INSERT INTO `movie` VALUES (11, '辛德勒的名单', '导演: 史蒂文·斯皮尔伯格 Steven Spielberg 主演: 连姆·尼森 Liam Neeson... 1993 / 美国 / 剧情 历史 战争', '9.5', '拯救一个人，就是拯救整个世界。', NULL);
INSERT INTO `movie` VALUES (12, '忠犬八公的故事', '导演: 莱塞·霍尔斯道姆 Lasse Hallström 主演: 理查·基尔 Richard Ger... 2009 / 美国 英国 / 剧情', '9.4', '永远都不能忘记你所爱的人。', NULL);
INSERT INTO `movie` VALUES (13, '海上钢琴师', '导演: 朱塞佩·托纳多雷 Giuseppe Tornatore 主演: 蒂姆·罗斯 Tim Roth / ... 1998 / 意大利 / 剧情 音乐', '9.3', '每个人都要走一条自己坚定了的路，就算是粉身碎骨。', NULL);
INSERT INTO `movie` VALUES (14, '三傻大闹宝莱坞', '导演: 拉库马·希拉尼 Rajkumar Hirani 主演: 阿米尔·汗 Aamir Khan / 卡... 2009 / 印度 / 剧情 喜剧 爱情 歌舞', '9.2', '英俊版憨豆，高情商版谢耳朵。', NULL);
INSERT INTO `movie` VALUES (15, '放牛班的春天', '导演: 克里斯托夫·巴拉蒂 Christophe Barratier 主演: 让-巴蒂斯特·莫尼... 2004 / 法国 瑞士 德国 / 剧情 音乐', '9.8', '天籁一般的童声，是最接近上帝的存在。', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (16, '机器人总动员', '导演: 安德鲁·斯坦顿 Andrew Stanton 主演: 本·贝尔特 Ben Burtt / 艾丽... 2008 / 美国 / 科幻 动画 冒险', '9.3', '小瓦力，大人生。', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (17, '疯狂动物城', '导演: 拜伦·霍华德 Byron Howard / 瑞奇·摩尔 Rich Moore 主演: 金妮弗·... 2016 / 美国 / 喜剧 动画 冒险', '9.2', '迪士尼给我们营造的乌托邦就是这样，永远善良勇敢，永远出乎意料。', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (18, '无间道', '导演: 刘伟强 / 麦兆辉 主演: 刘德华 Andy Lau / 梁朝伟 Tony Leung Chiu W... 2002 / 中国香港 / 剧情 犯罪 惊悚', '9.3', '香港电影史上永不过时的杰作。', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (19, '控方证人', '导演: 比利·怀尔德 Billy Wilder 主演: 泰隆·鲍华 Tyrone Power / 玛琳·... 1957 / 美国 / 剧情 犯罪 悬疑 惊悚', '9.6', '比利·怀德满分作品。', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (20, '大话西游之大圣娶亲', '导演: 刘镇伟 Jeffrey Lau 主演: 周星驰 Stephen Chow / 吴孟达 Man Tat Ng... 1995 / 中国香港 中国大陆 / 喜剧 爱情 奇幻 古装', '9.2', '一生所爱。', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (21, '熔炉', '导演: 黄东赫 Dong-hyuk Hwang 主演: 孔侑 Yoo Gong / 郑有美 Yu-mi Jung /... 2011 / 韩国 / 剧情', '9.3', '我们一路奋战不是为了改变世界，而是为了不让世界改变我们。', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (22, '教父', '导演: 弗朗西斯·福特·科波拉 Francis Ford Coppola 主演: 马龙·白兰度 M... 1972 / 美国 / 剧情 犯罪', '9.4', '千万不要记恨你的对手，这样会让你失去理智。', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (23, '触不可及', '导演: 奥利维·那卡什 Olivier Nakache / 艾力克·托兰达 Eric Toledano 主... 2011 / 法国 / 剧情 喜剧', '9.3', '满满温情的高雅喜剧。', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (24, '寻梦环游记', '导演: 李·昂克里奇 Lee Unkrich / 阿德里安·莫利纳 Adrian Molina 主演: ... 2017 / 美国 / 喜剧 动画 奇幻 音乐', '9.1', '死亡不是真的逝去，遗忘才是永恒的消亡。', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (25, '当幸福来敲门', '导演: 加布里尔·穆奇诺 Gabriele Muccino 主演: 威尔·史密斯 Will Smith ... 2006 / 美国 / 剧情 传记 家庭', '9.2', '平民励志片。', NULL);
INSERT INTO `movie` VALUES (26, '末代皇帝', '导演: 贝纳尔多·贝托鲁奇 Bernardo Bertolucci 主演: 尊龙 John Lone / 陈... 1987 / 英国 意大利 中国大陆 法国 / 剧情 传记 历史', '9.3', '“不要跟我比惨，我比你更惨”再适合这部电影不过了。', NULL);
INSERT INTO `movie` VALUES (27, '龙猫', '导演: 宫崎骏 Hayao Miyazaki 主演: 日高法子 Noriko Hidaka / 坂本千夏 Ch... 1988 / 日本 / 动画 奇幻 冒险', '9.2', '人人心中都有个龙猫，童年就永远不会消失。', NULL);
INSERT INTO `movie` VALUES (28, '哈利·波特与魔法石', '导演: Chris Columbus 主演: Daniel Radcliffe / Emma Watson / Rupert Grint 2001 / 美国 英国 / 奇幻 冒险', '9.2', '童话世界的开端。', NULL);
INSERT INTO `movie` VALUES (29, '怦然心动', '导演: 罗伯·莱纳 Rob Reiner 主演: 玛德琳·卡罗尔 Madeline Carroll / 卡... 2010 / 美国 / 剧情 喜剧 爱情', '9.1', '真正的幸福是来自内心深处。', NULL);
INSERT INTO `movie` VALUES (30, '活着', '导演: 张艺谋 Yimou Zhang 主演: 葛优 You Ge / 巩俐 Li Gong / 姜武 Wu Jiang 1994 / 中国大陆 中国香港 / 剧情 历史 家庭', '9.3', '张艺谋最好的电影。', NULL);
INSERT INTO `movie` VALUES (31, '蝙蝠侠：黑暗骑士', '导演: 克里斯托弗·诺兰 Christopher Nolan 主演: 克里斯蒂安·贝尔 Christ... 2008 / 美国 英国 / 剧情 动作 科幻 犯罪 惊悚', '9.2', '无尽的黑暗。', NULL);
INSERT INTO `movie` VALUES (32, '指环王3：王者无敌', '导演: 彼得·杰克逊 Peter Jackson 主演: 伊利亚·伍德 Elijah Wood / 西恩... 2003 / 美国 新西兰 / 剧情 动作 奇幻 冒险', '9.3', '史诗的终章。', NULL);
INSERT INTO `movie` VALUES (33, '我不是药神', '导演: 文牧野 Muye Wen 主演: 徐峥 Zheng Xu / 王传君 Chuanjun Wang / 周... 2018 / 中国大陆 / 剧情 喜剧', '9.0', '对我们国家而言，这样的电影多一部是一部。', NULL);
INSERT INTO `movie` VALUES (34, '乱世佳人', '导演: 维克多·弗莱明 Victor Fleming / 乔治·库克 George Cukor 主演: 费... 1939 / 美国 / 剧情 历史 爱情 战争', '9.3', 'Tomorrow is another day.', NULL);
INSERT INTO `movie` VALUES (35, '飞屋环游记', '导演: 彼特·道格特 Pete Docter / 鲍勃·彼德森 Bob Peterson 主演: 爱德... 2009 / 美国 / 剧情 喜剧 动画 冒险', '9.1', '最后那些最无聊的事情，才是最值得怀念的。', NULL);
INSERT INTO `movie` VALUES (36, '素媛', '导演: 李濬益 Jun-ik Lee 主演: 薛景求 Kyung-gu Sol / 严志媛 Ji-won Uhm ... 2013 / 韩国 / 剧情', '9.3', '受过伤害的人总是笑得最开心，因为他们不愿意让身边的人承受一样的痛苦。', NULL);
INSERT INTO `movie` VALUES (37, '哈尔的移动城堡', '导演: 宫崎骏 Hayao Miyazaki 主演: 倍赏千惠子 Chieko Baishô / 木村拓... 2004 / 日本 / 爱情 动画 奇幻 冒险', '9.1', '带着心爱的人在天空飞翔。', NULL);
INSERT INTO `movie` VALUES (38, '让子弹飞', '导演: 姜文 Wen Jiang 主演: 姜文 Wen Jiang / 葛优 You Ge / 周润发 Yun-F... 2010 / 中国大陆 中国香港 / 剧情 喜剧 动作 西部', '9.0', '你给我翻译翻译，神马叫做TMD的惊喜。', NULL);
INSERT INTO `movie` VALUES (39, '十二怒汉', '导演: Sidney Lumet 主演: 亨利·方达 Henry Fonda / 马丁·鲍尔萨姆 Marti... 1957 / 美国 / 剧情', '9.4', '1957年的理想主义。', NULL);
INSERT INTO `movie` VALUES (40, '海蒂和爷爷', '导演: 阿兰·葛斯彭纳 Alain Gsponer 主演: 阿努克·斯特芬 Anuk Steffen /... 2015 / 德国 瑞士 / 剧情 冒险 家庭', '9.3', '如果生活中有什么使你感到快乐，那就去做吧！不要管别人说什么。', NULL);
INSERT INTO `movie` VALUES (41, '何以为家', '导演: 娜丁·拉巴基 Nadine Labaki 主演: 扎因·拉费阿 Zain al-Rafeea / ... 2018 / 黎巴嫩 美国 法国 塞浦路斯 卡塔尔 英国 / 剧情', '9.1', '凝视卑弱生命，用电影改变命运。', NULL);
INSERT INTO `movie` VALUES (42, '猫鼠游戏', '导演: 史蒂文·斯皮尔伯格 Steven Spielberg 主演: 莱昂纳多·迪卡普里奥 L... 2002 / 美国 加拿大 / 传记 犯罪 剧情', '9.1', '骗子大师和执著警探的你追我跑故事。', NULL);
INSERT INTO `movie` VALUES (43, '摔跤吧！爸爸', '导演: 涅提·蒂瓦里 Nitesh Tiwari 主演: 阿米尔·汗 Aamir Khan / 法缇玛... 2016 / 印度 / 剧情 传记 运动 家庭', '9.0', '你不是在为你一个人战斗，你要让千千万万的女性看到女生并不是只能相夫教子。', NULL);
INSERT INTO `movie` VALUES (44, '天空之城', '导演: 宫崎骏 Hayao Miyazaki 主演: 田中真弓 Mayumi Tanaka / 横泽启子 Ke... 1986 / 日本 / 动画 奇幻 冒险', '9.2', '对天空的追逐，永不停止。', NULL);
INSERT INTO `movie` VALUES (45, '鬼子来了', '导演: 姜文 Wen Jiang 主演: 姜文 Wen Jiang / 香川照之 Teruyuki Kagawa /... 2000 / 中国大陆 / 剧情 喜剧', '9.3', '对敌人的仁慈，就是对自己残忍。', NULL);
INSERT INTO `movie` VALUES (46, '少年派的奇幻漂流', '导演: 李安 Ang Lee 主演: 苏拉·沙玛 Suraj Sharma / 伊尔凡·可汗 Irrfan... 2012 / 美国 中国台湾 英国 加拿大 / 剧情 奇幻 冒险', '9.1', '瑰丽壮观、无人能及的冒险之旅。', NULL);
INSERT INTO `movie` VALUES (47, '钢琴家', '导演: 罗曼·波兰斯基 Roman Polanski 主演: 艾德里安·布洛迪 Adrien Brod... 2002 / 英国 法国 波兰 德国 美国 / 剧情 传记 战争 音乐', '9.3', '音乐能化解仇恨。', NULL);
INSERT INTO `movie` VALUES (48, '指环王2：双塔奇兵', '导演: 彼得·杰克逊 Peter Jackson 主演: 伊利亚·伍德 Elijah Wood / 西恩... 2002 / 美国 新西兰 / 剧情 动作 奇幻 冒险', '9.2', '承前启后的史诗篇章。', NULL);
INSERT INTO `movie` VALUES (49, '大话西游之月光宝盒', '导演: 刘镇伟 Jeffrey Lau 主演: 周星驰 Stephen Chow / 吴孟达 Man Tat Ng... 1995 / 中国香港 中国大陆 / 喜剧 爱情 奇幻 古装', '9.0', '旷古烁今。', NULL);
INSERT INTO `movie` VALUES (50, '闻香识女人', '导演: 马丁·布莱斯 Martin Brest 主演: 阿尔·帕西诺 Al Pacino / 克里斯... 1992 / 美国 / 剧情', '9.1', '史上最美的探戈。', NULL);
INSERT INTO `movie` VALUES (51, '死亡诗社', '导演: 彼得·威尔 Peter Weir 主演: 罗宾·威廉姆斯 Robin Williams / 罗伯... 1989 / 美国 / 剧情', '9.2', '当一个死水般的体制内出现一个活跃的变数时，所有的腐臭都站在了光明的对面。', NULL);
INSERT INTO `movie` VALUES (52, '绿皮书', '导演: 彼得·法雷里 Peter Farrelly 主演: 维果·莫腾森 Viggo Mortensen /... 2018 / 美国 中国大陆 / 剧情 喜剧 传记 音乐', '8.9', '去除成见，需要勇气。', NULL);
INSERT INTO `movie` VALUES (53, '大闹天宫', '导演: 万籁鸣 Laiming Wan 主演: 邱岳峰 Yuefeng Qiu / 富润生 Runsheng Fu... 1961(中国大陆) / 1964(中国大陆) / 1978(中国大陆) / 中国大陆 / 剧情 动画 奇幻 古装', '9.4', '经典之作，历久弥新。', NULL);
INSERT INTO `movie` VALUES (54, '罗马假日', '导演: 威廉·惠勒 William Wyler 主演: 奥黛丽·赫本 Audrey Hepburn / 格... 1953 / 美国 / 喜剧 剧情 爱情', '9.1', '爱情哪怕只有一天。', NULL);
INSERT INTO `movie` VALUES (55, '黑客帝国', '导演: 安迪·沃卓斯基 Andy Wachowski / 拉娜·沃卓斯基 Lana Wachowski 主... 1999 / 美国 / 动作 科幻', '9.1', '视觉革命。', NULL);
INSERT INTO `movie` VALUES (56, '指环王1：护戒使者', '导演: 彼得·杰克逊 Peter Jackson 主演: 伊利亚·伍德 Elijah Wood / 西恩... 2001 / 新西兰 美国 / 剧情 动作 奇幻 冒险', '9.1', '传说的开始。', NULL);
INSERT INTO `movie` VALUES (57, '教父2', '导演: 弗朗西斯·福特·科波拉 Francis Ford Coppola 主演: 阿尔·帕西诺 A... 1974 / 美国 / 剧情 犯罪', '9.3', '优雅的孤独。', NULL);
INSERT INTO `movie` VALUES (58, '天堂电影院', '导演: 朱塞佩·托纳多雷 Giuseppe Tornatore 主演: 菲利普·努瓦雷 Philipp... 1988 / 意大利 法国 / 剧情 爱情', '9.2', '那些吻戏，那些青春，都在影院的黑暗里被泪水冲刷得无比清晰。', NULL);
INSERT INTO `movie` VALUES (59, '狮子王', '导演: Roger Allers / 罗伯·明可夫 Rob Minkoff 主演: 乔纳森·泰勒·托马... 1994 / 美国 / 动画 冒险 歌舞', '9.1', '动物版《哈姆雷特》。', NULL);
INSERT INTO `movie` VALUES (60, '辩护人', '导演: 杨宇硕 Woo-seok Yang 主演: 宋康昊 Kang-ho Song / 金英爱 Yeong-ae... 2013 / 韩国 / 剧情', '9.2', '电影的现实意义大过电影本身。', NULL);
INSERT INTO `movie` VALUES (61, '饮食男女', '导演: 李安 Ang Lee 主演: 郎雄 Sihung Lung / 杨贵媚 Kuei-Mei Yang / 吴... 1994 / 中国台湾 美国 / 剧情 家庭', '9.2', '人生不能像做菜，把所有的料都准备好了才下锅。', NULL);
INSERT INTO `movie` VALUES (62, '搏击俱乐部', '导演: 大卫·芬奇 David Fincher 主演: 爱德华·诺顿 Edward Norton / 布拉... 1999 / 美国 / 剧情 动作 悬疑 惊悚', '9.0', '邪恶与平庸蛰伏于同一个母体，在特定的时间互相对峙。', NULL);
INSERT INTO `movie` VALUES (63, '本杰明·巴顿奇事', '导演: 大卫·芬奇 David Fincher 主演: 凯特·布兰切特 Cate Blanchett / ... 2008 / 美国 / 剧情 爱情 奇幻', '9.0', '在时间之河里感受溺水之苦。', NULL);
INSERT INTO `movie` VALUES (64, '美丽心灵', '导演: 朗·霍华德 Ron Howard 主演: 罗素·克劳 Russell Crowe / 艾德·哈... 2001 / 美国 / 传记 剧情', '9.1', '爱是一切逻辑和原由。', NULL);
INSERT INTO `movie` VALUES (65, '穿条纹睡衣的男孩', '导演: 马克·赫尔曼 Mark Herman 主演: 阿萨·巴特菲尔德 Asa Butterfield ... 2008 / 英国 美国 / 剧情 战争', '9.2', '尽管有些不切实际的幻想，这部电影依旧是一部感人肺腑的佳作。', NULL);
INSERT INTO `movie` VALUES (66, '窃听风暴', '导演: 弗洛里安·亨克尔·冯·多纳斯马尔克 Florian Henckel von Donnersmarck &n... 2006 / 德国 / 剧情 悬疑', '9.2', '别样人生。', NULL);
INSERT INTO `movie` VALUES (67, '情书', '导演: 岩井俊二 Shunji Iwai 主演: 中山美穗 Miho Nakayama / 丰川悦司 Ets... 1995 / 日本 / 剧情 爱情', '8.9', '暗恋的极致。', NULL);
INSERT INTO `movie` VALUES (68, '两杆大烟枪', '导演: 盖·里奇 Guy Ritchie 主演: 杰森·弗莱明 Jason Flemyng / 德克斯特... 1998 / 英国 / 剧情 喜剧 犯罪', '9.1', '4个臭皮匠顶个诸葛亮，盖·里奇果然不是盖的。', NULL);
INSERT INTO `movie` VALUES (69, '音乐之声', '导演: 罗伯特·怀斯 Robert Wise 主演: 朱莉·安德鲁斯 Julie Andrews / 克... 1965 / 美国 / 剧情 传记 爱情 歌舞', '9.1', '用音乐化解仇恨，让歌声串起美好。', NULL);
INSERT INTO `movie` VALUES (70, '看不见的客人', '导演: 奥里奥尔·保罗 Oriol Paulo 主演: 马里奥·卡萨斯 Mario Casas / 阿... 2016 / 西班牙 / 剧情 犯罪 悬疑 惊悚', '8.8', '你以为你以为的就是你以为的。', NULL);
INSERT INTO `movie` VALUES (71, '西西里的美丽传说', '导演: 朱塞佩·托纳多雷 Giuseppe Tornatore 主演: 莫妮卡·贝鲁奇 Monica ... 2000 / 意大利 美国 / 剧情 战争 情色', '8.9', '美丽无罪。', NULL);
INSERT INTO `movie` VALUES (72, '哈利·波特与死亡圣器(下)', '导演: 大卫·叶茨 David Yates 主演: 丹尼尔·雷德克里夫 Daniel Radcliffe... 2011 / 美国 英国 / 奇幻 冒险', '9.0', '10年的完美句点。', NULL);
INSERT INTO `movie` VALUES (73, '阿凡达', '导演: 詹姆斯·卡梅隆 James Cameron 主演: 萨姆·沃辛顿 Sam Worthington ... 2009 / 美国 / 动作 科幻 冒险', '8.8', '绝对意义上的美轮美奂。', NULL);
INSERT INTO `movie` VALUES (74, '拯救大兵瑞恩', '导演: 史蒂文·斯皮尔伯格 Steven Spielberg 主演: 汤姆·汉克斯 Tom Hanks... 1998 / 美国 / 剧情 战争', '9.1', '美利坚精神输出大片No1.', NULL);
INSERT INTO `movie` VALUES (75, '功夫', '导演: 周星驰 Stephen Chow 主演: 周星驰 Stephen Chow / 元秋 Qiu Yuen / ... 2004 / 中国大陆 中国香港 / 动作 喜剧 犯罪 奇幻', '8.9', '警恶惩奸，维护世界和平这个任务就交给你了，好吗？', NULL);
INSERT INTO `movie` VALUES (76, '哈利·波特与阿兹卡班的囚徒', '导演: Alfonso Cuarón 主演: 丹尼尔·雷德克里夫 Daniel Radcliffe / Emma... 2004 / 英国 美国 / 奇幻 冒险', '9.0', '不一样的导演，不一样的哈利·波特。', NULL);
INSERT INTO `movie` VALUES (77, '小鞋子', '导演: 马基德·马基迪 Majid Majidi 主演: 默罕默德·阿米尔·纳吉 Mohamma... 1997 / 伊朗 / 剧情 儿童 家庭', '9.2', '奔跑的孩子是天使。', NULL);
INSERT INTO `movie` VALUES (78, '飞越疯人院', '导演: 米洛斯·福尔曼 Miloš Forman 主演: 杰克·尼科尔森 Jack Nichols... 1975 / 美国 / 剧情', '9.1', '自由万岁。', NULL);
INSERT INTO `movie` VALUES (79, '沉默的羔羊', '导演: 乔纳森·戴米 Jonathan Demme 主演: 朱迪·福斯特 Jodie Foster / 安... 1991 / 美国 / 剧情 犯罪 惊悚', '8.9', '安东尼·霍普金斯的顶级表演。', NULL);
INSERT INTO `movie` VALUES (80, '布达佩斯大饭店', '导演: 韦斯·安德森 Wes Anderson 主演: 拉尔夫·费因斯 Ralph Fiennes / ... 2014 / 美国 德国 英国 / 剧情 喜剧 冒险', '8.9', '小清新的故事里注入了大历史的情怀。', NULL);
INSERT INTO `movie` VALUES (81, '蝴蝶效应', '导演: 埃里克·布雷斯 Eric Bress / J·麦基·格鲁伯 J. Mackye Gruber 主... 2004 / 美国 加拿大 / 剧情 悬疑 科幻 惊悚', '8.9', '人的命运被自己瞬间的抉择改变。', NULL);
INSERT INTO `movie` VALUES (82, '禁闭岛', '导演: Martin Scorsese 主演: 莱昂纳多·迪卡普里奥 Leonardo DiCaprio / ... 2010 / 美国 / 剧情 悬疑 惊悚', '8.9', '昔日翩翩少年，今日大腹便便。', NULL);
INSERT INTO `movie` VALUES (83, '致命魔术', '导演: 克里斯托弗·诺兰 Christopher Nolan 主演: 休·杰克曼 Hugh Jackman... 2006 / 英国 美国 / 剧情 悬疑 惊悚', '8.9', '孪生蝙蝠侠大战克隆金刚狼。', NULL);
INSERT INTO `movie` VALUES (84, '心灵捕手', '导演: 格斯·范·桑特 Gus Van Sant 主演: 马特·达蒙 Matt Damon / 罗宾·... 1997 / 美国 / 剧情', '9.0', '人生中应该拥有这样的一段豁然开朗。', NULL);
INSERT INTO `movie` VALUES (85, '超脱', '导演: 托尼·凯耶 Tony Kaye 主演: 艾德里安·布洛迪 Adrien Brody / 马西... 2011 / 美国 / 剧情', '9.0', '穷尽一生，我们要学会的，不过是彼此拥抱。', NULL);
INSERT INTO `movie` VALUES (86, '低俗小说', '导演: 昆汀·塔伦蒂诺 Quentin Tarantino 主演: 约翰·特拉沃尔塔 John Tra... 1994 / 美国 / 剧情 喜剧 犯罪', '8.9', '故事的高级讲法。', NULL);
INSERT INTO `movie` VALUES (87, '摩登时代', '导演: 查理·卓别林 Charles Chaplin 主演: 查理·卓别林 Charles Chaplin ... 1936 / 美国 / 剧情 喜剧 爱情', '9.3', '大时代中的人生，小人物的悲喜。', NULL);
INSERT INTO `movie` VALUES (88, '喜剧之王', '导演: 周星驰 Stephen Chow / 李力持 Lik-Chi Lee 主演: 周星驰 Stephen Ch... 1999 / 中国香港 / 喜剧 剧情 爱情', '8.8', '我是一个演员。', NULL);
INSERT INTO `movie` VALUES (89, '春光乍泄', '导演: 王家卫 Kar Wai Wong 主演: 张国荣 Leslie Cheung / 梁朝伟 Tony Leu... 1997 / 中国香港 日本 韩国 / 剧情 爱情 同性', '9.0', '爱情纠缠，男女一致。', NULL);
INSERT INTO `movie` VALUES (90, '海豚湾', '导演: 路易·西霍尤斯 Louie Psihoyos 主演: 路易·西霍尤斯 Louie Psihoyo... 2009 / 美国 / 纪录片', '9.3', '海豚的微笑，是世界上最高明的伪装。', NULL);
INSERT INTO `movie` VALUES (91, '致命ID', '导演: 詹姆斯·曼高德 James Mangold 主演: 约翰·库萨克 John Cusack / 雷... 2003 / 美国 / 剧情 悬疑 惊悚', '8.9', '最不可能的那个人永远是最可能的。', NULL);
INSERT INTO `movie` VALUES (92, '哈利·波特与密室', '导演: Chris Columbus 主演: 丹尼尔·雷德克里夫 Daniel Radcliffe / 艾玛... 2002 / 英国 美国 / 奇幻 冒险', '8.9', '魔法的密室之门已打开...', NULL);
INSERT INTO `movie` VALUES (93, '杀人回忆', '导演: 奉俊昊 Joon-ho Bong 主演: 宋康昊 Kang-ho Song / 金相庆 Sang-kyun... 2003 / 韩国 / 剧情 动作 犯罪 悬疑 惊悚', '8.9', '关于连环杀人悬案的集体回忆。', NULL);
INSERT INTO `movie` VALUES (94, '美国往事', '导演: 赛尔乔·莱翁内 Sergio Leone 主演: 罗伯特·德尼罗 Robert De Niro ... 1984 / 美国 意大利 / 犯罪 剧情', '9.1', '往事如烟，无处祭奠。', NULL);
INSERT INTO `movie` VALUES (95, '一一', '导演: 杨德昌 Edward Yang 主演: 吴念真 / 李凯莉 Kelly Lee / 金燕玲 Elai... 2000 / 中国台湾 日本 / 剧情 爱情 家庭', '9.1', '我们都曾经是一一。', NULL);
INSERT INTO `movie` VALUES (96, '红辣椒', '导演: 今敏 Satoshi Kon 主演: 林原惠美 Megumi Hayashibara / 江守彻 Toru... 2006 / 日本 / 动画 悬疑 科幻 惊悚', '9.1', '梦的勾结。', NULL);
INSERT INTO `movie` VALUES (97, '加勒比海盗', '导演: 戈尔·维宾斯基 Gore Verbinski 主演: 约翰尼·德普 Johnny Depp / ... 2003 / 美国 / 动作 冒险 奇幻', '8.8', '约翰尼·德普的独角戏。', NULL);
INSERT INTO `movie` VALUES (98, '七宗罪', '导演: 大卫·芬奇 David Fincher 主演: 摩根·弗里曼 Morgan Freeman / 布... 1995 / 美国 / 剧情 犯罪 悬疑 惊悚', '8.8', '警察抓小偷，老鼠玩死猫。', NULL);
INSERT INTO `movie` VALUES (99, '唐伯虎点秋香', '导演: 李力持 Lik-Chi Lee 主演: 周星驰 Stephen Chow / 巩俐 Li Gong / 陈... 1993 / 中国香港 / 喜剧 爱情 古装', '8.7', '华太师是黄霑，吴镇宇四大才子之一。', NULL);
INSERT INTO `movie` VALUES (100, '狩猎', '导演: 托马斯·温特伯格 Thomas Vinterberg 主演: 麦斯·米科尔森 Mads Mik... 2012 / 丹麦 瑞典 / 剧情', '9.1', '人言可畏。', NULL);
INSERT INTO `movie` VALUES (101, '7号房的礼物', '导演: 李焕庆 Hwan-kyeong Lee 主演: 柳承龙 Seung-yong Ryoo / 朴信惠 Shi... 2013 / 韩国 / 剧情 喜剧 家庭', '8.9', '《我是山姆》的《美丽人生》。', NULL);
INSERT INTO `movie` VALUES (102, '蝙蝠侠：黑暗骑士崛起', '导演: 克里斯托弗·诺兰 Christopher Nolan 主演: 克里斯蒂安·贝尔 Christ... 2012 / 美国 英国 / 剧情 动作 科幻 犯罪 惊悚', '8.9', '诺兰就是保证。', NULL);
INSERT INTO `movie` VALUES (103, '甜蜜蜜', '导演: 陈可辛 Peter Chan 主演: 黎明 Leon Lai / 张曼玉 Maggie Cheung / ... 1996 / 中国香港 / 剧情 爱情', '8.9', '相逢只要一瞬间，等待却像是一辈子。', NULL);
INSERT INTO `movie` VALUES (104, '被嫌弃的松子的一生', '导演: 中岛哲也 Tetsuya Nakashima 主演: 中谷美纪 Miki Nakatani / 瑛太 E... 2006 / 日本 / 剧情 歌舞', '8.8', '以戏谑来戏谑戏谑。', NULL);
INSERT INTO `movie` VALUES (105, '爱在黎明破晓前', '导演: 理查德·林克莱特 Richard Linklater 主演: 伊桑·霍克 Ethan Hawke ... 1995 / 美国 奥地利 瑞士 / 剧情 爱情', '8.8', '缘分是个连绵词，最美不过一瞬。', NULL);
INSERT INTO `movie` VALUES (106, '超能陆战队', '导演: 唐·霍尔 Don Hall / 克里斯·威廉姆斯 Chris Williams 主演: 斯科特... 2014 / 美国 / 喜剧 动作 科幻 动画 冒险', '8.8', 'Balalala~~~', NULL);
INSERT INTO `movie` VALUES (107, '第六感', '导演: M·奈特·沙马兰 M. Night Shyamalan 主演: 布鲁斯·威利斯 Bruce Wi... 1999 / 美国 / 剧情 悬疑 惊悚', '8.9', '深入内心的恐怖，出人意料的结局。', NULL);
INSERT INTO `movie` VALUES (108, '寄生虫', '导演: 奉俊昊 Joon-ho Bong 主演: 宋康昊 Kang-ho Song / 李善均 Seon-gyun... 2019 / 韩国 / 剧情', '8.8', '导演: 奉俊昊 Joon-ho Bong 主演: 宋康昊 Kang-ho Song / 李善均 Seon-gyun... 2019 / 韩国 / 剧情', NULL);
INSERT INTO `movie` VALUES (109, '重庆森林', '导演: 王家卫 Kar Wai Wong 主演: 林青霞 Brigitte Lin / 金城武 Takeshi K... 1994 / 中国香港 / 剧情 爱情', '8.8', '寂寞没有期限。', NULL);
INSERT INTO `movie` VALUES (110, '入殓师', '导演: 泷田洋二郎 Yôjirô Takita 主演: 本木雅弘 Masahiro Motoki / ... 2008 / 日本 / 剧情', '8.9', '死可能是一道门，逝去并不是终结，而是超越，走向下一程。', NULL);
INSERT INTO `movie` VALUES (111, '爱在日落黄昏时', '导演: 理查德·林克莱特 Richard Linklater 主演: 伊桑·霍克 Ethan Hawke ... 2004 / 美国 法国 / 剧情 爱情', '8.9', '九年后的重逢是世俗和责任的交叠，没了悸动和青涩，沧桑而温暖。', NULL);
INSERT INTO `movie` VALUES (112, '请以你的名字呼唤我', '导演: 卢卡·瓜达尼诺 Luca Guadagnino 主演: 艾米·汉莫 Armie Hammer / ... 2017 / 意大利 法国 巴西 美国 / 剧情 爱情 同性', '8.8', '沉醉在电影的情感和视听氛围中无法自拔。', NULL);
INSERT INTO `movie` VALUES (113, '幽灵公主', '导演: 宫崎骏 Hayao Miyazaki 主演: 松田洋治 Yôji Matsuda / 石田百合... 1997 / 日本 / 动画 奇幻 冒险', '8.9', '人与自然的战争史诗。', NULL);
INSERT INTO `movie` VALUES (114, '剪刀手爱德华', '导演: 蒂姆·波顿 Tim Burton 主演: 约翰尼·德普 Johnny Depp / 薇诺娜·... 1990 / 美国 / 剧情 爱情 奇幻', '8.7', '浪漫忧郁的成人童话。', NULL);
INSERT INTO `movie` VALUES (115, '断背山', '导演: 李安 Ang Lee 主演: 希斯·莱杰 Heath Ledger / 杰克·吉伦哈尔 Jake... 2005 / 美国 加拿大 / 剧情 爱情 同性 家庭', '8.8', '每个人心中都有一座断背山。', NULL);
INSERT INTO `movie` VALUES (116, '勇敢的心', '导演: 梅尔·吉布森 Mel Gibson 主演: 梅尔·吉布森 Mel Gibson / 苏菲·玛... 1995 / 美国 / 动作 传记 剧情 历史 战争', '8.9', '史诗大片的典范。', NULL);
INSERT INTO `movie` VALUES (117, '菊次郎的夏天', '导演: 北野武 Takeshi Kitano 主演: 北野武 Takeshi Kitano / 关口雄介 Yus... 1999 / 日本 / 剧情 喜剧', '8.9', '从没见过那么流氓的温柔，从没见过那么温柔的流氓。', NULL);
INSERT INTO `movie` VALUES (118, '借东西的小人阿莉埃蒂', '导演: 米林宏昌 Hiromasa Yonebayashi 主演: 志田未来 Mirai Shida / 神木... 2010 / 日本 / 动画 奇幻 冒险', '8.9', '曾经的那段美好会沉淀为一辈子的记忆。', NULL);
INSERT INTO `movie` VALUES (119, '未麻的部屋', '导演: 今敏 Satoshi Kon 主演: 岩男润子 Junko Iwao / 松本梨香 Rica Matsu... 1997 / 日本 / 剧情 犯罪 动画 悬疑 惊悚', '9.1', '好的剧本是，就算你猜到了结局也猜不到全部。', NULL);
INSERT INTO `movie` VALUES (120, '哈利·波特与火焰杯', '导演: 迈克·内威尔 Mike Newell 主演: 丹尼尔·雷德克里夫 Daniel Radclif... 2005 / 英国 美国 / 悬疑 奇幻 冒险', '8.8', '导演: 迈克·内威尔 Mike Newell 主演: 丹尼尔·雷德克里夫 Daniel Radclif... 2005 / 英国 美国 / 悬疑 奇幻 冒险', NULL);
INSERT INTO `movie` VALUES (121, '消失的爱人', '导演: 大卫·芬奇 David Fincher 主演: 本·阿弗莱克 Ben Affleck / 罗莎蒙... 2014 / 美国 / 剧情 犯罪 悬疑 惊悚', '8.7', '年度最佳date movie。', NULL);
INSERT INTO `movie` VALUES (122, '无人知晓', '导演: 是枝裕和 Hirokazu Koreeda 主演: 柳乐优弥 Yûya Yagira / 北浦爱... 2004 / 日本 / 剧情', '9.1', '我的平常生活就是他人的幸福。', NULL);
INSERT INTO `movie` VALUES (123, '时空恋旅人', '导演: 理查德·柯蒂斯 Richard Curtis 主演: 多姆纳尔·格里森 Domhnall Gl... 2013 / 英国 美国 / 喜剧 爱情 奇幻', '8.8', '把每天当作最后一天般珍惜度过，积极拥抱生活，就是幸福。', NULL);
INSERT INTO `movie` VALUES (124, '倩女幽魂', '导演: 程小东 Siu-Tung Ching 主演: 张国荣 Leslie Cheung / 王祖贤 Joey W... 1987 / 中国香港 / 爱情 奇幻 武侠 古装', '8.8', '两张绝世的脸。', NULL);
INSERT INTO `movie` VALUES (125, '完美的世界', '导演: 克林特·伊斯特伍德 Clint Eastwood 主演: 凯文·科斯特纳 Kevin Cos... 1993 / 美国 / 剧情 犯罪', '9.1', '坏人的好总是比好人的好来得更感人。', NULL);
INSERT INTO `movie` VALUES (126, '茶馆', '导演: 谢添 Tian Xie 主演: 于是之 Shizhi Yu / 郑榕 Rong Zhen / 蓝天野 T... 1982(中国大陆) / 中国大陆 / 剧情 历史', '9.6', '导演: 谢添 Tian Xie 主演: 于是之 Shizhi Yu / 郑榕 Rong Zhen / 蓝天野 T... 1982(中国大陆) / 中国大陆 / 剧情 历史', NULL);
INSERT INTO `movie` VALUES (127, '阳光灿烂的日子', '导演: 姜文 Wen Jiang 主演: 夏雨 Yu Xia / 宁静 Jing Ning / 陶虹 Hong Tao 1994 / 中国大陆 中国香港 / 剧情 爱情', '8.8', '一场华丽的意淫。', NULL);
INSERT INTO `movie` VALUES (128, '小森林 夏秋篇', '导演: 森淳一 Junichi Mori 主演: 桥本爱 Ai Hashimoto / 三浦贵大 Takahir... 2014 / 日本 / 剧情', '9.0', '那些静得只能听见呼吸的日子里，你明白孤独即生活。', NULL);
INSERT INTO `movie` VALUES (129, '天使爱美丽', '导演: 让-皮埃尔·热内 Jean-Pierre Jeunet 主演: 奥黛丽·塔图 Audrey Tau... 2001 / 法国 德国 / 剧情 喜剧 爱情', '8.7', '法式小清新。', NULL);
INSERT INTO `movie` VALUES (130, '侧耳倾听', '导演: 近藤喜文 Yoshifumi Kondo 主演: 本名阳子 Youko Honna / 小林桂树 K... 1995 / 日本 / 剧情 爱情 动画', '8.9', '少女情怀总是诗。', NULL);
INSERT INTO `movie` VALUES (131, '驯龙高手', '导演: 迪恩·德布洛斯 Dean DeBlois / 克里斯·桑德斯 Chris Sanders 主演:... 2010 / 美国 / 动画 奇幻 冒险', '8.8', '和谐的生活离不开摸头与被摸头。', NULL);
INSERT INTO `movie` VALUES (132, '头脑特工队', '导演: 彼特·道格特 Pete Docter / 罗纳尔多·德尔·卡门 Ronaldo Del Carmen &nb... 2015 / 美国 / 喜剧 动画 冒险', '8.8', '愿我们都不用长大，每一座城堡都能永远存在。', NULL);
INSERT INTO `movie` VALUES (133, '新世界', '导演: 朴勋政 Hoon-jung Park 主演: 李政宰 Jung-Jae Lee / 崔岷植 Min-sik... 2013 / 韩国 / 剧情 犯罪', '8.9', '要做就做得狠一点，这样才能活下去。', NULL);
INSERT INTO `movie` VALUES (134, '教父3', '导演: 弗朗西斯·福特·科波拉 Francis Ford Coppola 主演: 阿尔·帕西诺 A... 1990 / 美国 / 剧情 犯罪', '9.0', '任何信念的力量，都无法改变命运。', NULL);
INSERT INTO `movie` VALUES (135, '怪兽电力公司', '导演: 彼特·道格特 Pete Docter / 大卫·斯沃曼 David Silverman 主演: 约... 2001 / 美国 / 儿童 喜剧 动画 奇幻 冒险', '8.8', '不要给它起名字，起了名字就有感情了。', NULL);
INSERT INTO `movie` VALUES (136, '傲慢与偏见', '导演: 乔·怀特 Joe Wright 主演: 凯拉·奈特莉 Keira Knightley / 马修·... 2005 / 法国 英国 美国 / 剧情 爱情', '8.7', '爱是摈弃傲慢与偏见之后的曙光。', NULL);
INSERT INTO `movie` VALUES (137, '一个叫欧维的男人决定去死', '导演: 汉内斯·赫尔姆 Hannes Holm 主演: 罗夫·拉斯加德 Rolf Lassgård... 2015 / 瑞典 / 剧情', '8.9', '惠及一生的美丽。', NULL);
INSERT INTO `movie` VALUES (138, '幸福终点站', '导演: 史蒂文·斯皮尔伯格 Steven Spielberg 主演: 汤姆·汉克斯 Tom Hanks... 2004 / 美国 / 喜剧 剧情 爱情', '8.8', '有时候幸福需要等一等。', NULL);
INSERT INTO `movie` VALUES (139, '玩具总动员3', '导演: 李·昂克里奇 Lee Unkrich 主演: 汤姆·汉克斯 Tom Hanks / 蒂姆·艾... 2010 / 美国 / 喜剧 动画 奇幻 冒险', '8.9', '跨度十五年的欢乐与泪水。', NULL);
INSERT INTO `movie` VALUES (140, '小森林 冬春篇', '导演: 森淳一 Junichi Mori 主演: 桥本爱 Ai Hashimoto / 三浦贵大 Takahir... 2015 / 日本 / 剧情', '9.0', '尊敬他人，尊敬你生活的这片土地，明白孤独是人生的常态。', NULL);
INSERT INTO `movie` VALUES (141, '色，戒', '导演: 李安 Ang Lee 主演: 梁朝伟 Tony Leung Chiu Wai / 汤唯 Wei Tang / ... 2007 / 中国台湾 中国大陆 美国 中国香港 / 剧情 爱情 情色', '8.7', '假戏真情，爱欲深海', NULL);
INSERT INTO `movie` VALUES (142, '被解救的姜戈', '导演: 昆汀·塔伦蒂诺 Quentin Tarantino 主演: 杰米·福克斯 Jamie Foxx /... 2012 / 美国 / 剧情 动作 西部 冒险', '8.8', '热血沸腾，那个低俗、性感的无耻混蛋又来了。', NULL);
INSERT INTO `movie` VALUES (143, '釜山行', '导演: 延尚昊 Sang-ho Yeon 主演: 孔侑 Yoo Gong / 郑有美 Yu-mi Jung / 马... 2016 / 韩国 / 动作 惊悚 灾难', '8.6', '揭露人性的丧尸题材力作。', NULL);
INSERT INTO `movie` VALUES (144, '神偷奶爸', '导演: 皮艾尔·柯芬 Pierre Coffin / 克里斯·雷纳德 Chris Renaud 主演: ... 2010 / 美国 法国 / 喜剧 动画 冒险', '8.7', 'Mr. I Don\'t Care其实也有Care的时候。', NULL);
INSERT INTO `movie` VALUES (145, '萤火之森', '导演: 大森贵弘 Takahiro Omori 主演: 佐仓绫音 Ayane Sakura / 内山昂辉 K... 2011 / 日本 / 剧情 爱情 动画 奇幻', '8.8', '触不到的恋人。', NULL);
INSERT INTO `movie` VALUES (146, '九品芝麻官', '导演: 王晶 Jing Wong 主演: 周星驰 Stephen Chow / 吴孟达 Man Tat Ng / ... 1994 / 中国香港 中国大陆 / 剧情 喜剧 古装', '8.7', '导演: 王晶 Jing Wong 主演: 周星驰 Stephen Chow / 吴孟达 Man Tat Ng / ... 1994 / 中国香港 中国大陆 / 剧情 喜剧 古装', NULL);
INSERT INTO `movie` VALUES (147, '哪吒闹海', '导演: 王树忱 Shuchen Wang / 严定宪 Dingxian Yan 主演: 梁正晖 Zhenghui ... 1979 / 中国大陆 / 冒险 动画 奇幻', '9.2', '想你时你在闹海。', NULL);
INSERT INTO `movie` VALUES (148, '告白', '导演: 中岛哲也 Tetsuya Nakashima 主演: 松隆子 Takako Matsu / 冈田将生 ... 2010 / 日本 / 剧情 悬疑', '8.8', '没有一人完全善，也没有一人完全恶。', NULL);
INSERT INTO `movie` VALUES (149, '喜宴', '导演: 李安 Ang Lee 主演: 赵文瑄 Winston Chao / 归亚蕾 Ya-lei Kuei / 郎... 1993 / 中国台湾 美国 / 剧情 喜剧 爱情 同性 家庭', '9.0', '中国家庭的喜怒哀乐忍。', NULL);
INSERT INTO `movie` VALUES (150, '玛丽和马克思', '导演: 亚当·艾略特 Adam Elliot 主演: 托妮·科莱特 Toni Collette / 菲利... 2009 / 澳大利亚 美国 / 剧情 喜剧 动画', '9.0', '你是我最好的朋友，你是我唯一的朋友 。', NULL);
INSERT INTO `movie` VALUES (151, '模仿游戏', '导演: 莫滕·泰杜姆 Morten Tyldum 主演: 本尼迪克特·康伯巴奇 Benedict C... 2014 / 英国 美国 / 剧情 传记 战争 同性', '8.8', '他给机器起名“克里斯托弗”，因为这是他初恋的名字。', NULL);
INSERT INTO `movie` VALUES (152, '头号玩家', '导演: 史蒂文·斯皮尔伯格 Steven Spielberg 主演: 泰伊·谢里丹 Tye Sheri... 2018 / 美国 / 动作 科幻 冒险', '8.6', '写给影迷，动漫迷和游戏迷的一封情书。', NULL);
INSERT INTO `movie` VALUES (153, '花样年华', '导演: 王家卫 Kar Wai Wong 主演: 梁朝伟 Tony Leung Chiu Wai / 张曼玉 Ma... 2000 / 中国香港 / 剧情 爱情', '8.8', '偷情本没有这样美。', NULL);
INSERT INTO `movie` VALUES (154, '大鱼', '导演: 蒂姆·波顿 Tim Burton 主演: 伊万·麦克格雷格 Ewan McGregor / 阿... 2003 / 美国 / 剧情 爱情 奇幻 冒险', '8.8', '抱着梦想而活着的人是幸福的，怀抱梦想而死去的人是不朽的。', NULL);
INSERT INTO `movie` VALUES (155, '七武士', '导演: 黑泽明 Akira Kurosawa 主演: 三船敏郎 Toshirô Mifune / 志村乔 ... 1954 / 日本 / 动作 冒险 剧情', '9.3', '时代悲歌。', NULL);
INSERT INTO `movie` VALUES (156, '射雕英雄传之东成西就', '导演: 刘镇伟 Jeffrey Lau 主演: 梁朝伟 Tony Leung Chiu Wai / 林青霞 Bri... 1993 / 中国香港 / 喜剧 奇幻 武侠 古装', '8.7', '百看不厌。', NULL);
INSERT INTO `movie` VALUES (157, '惊魂记', '导演: 阿尔弗雷德·希区柯克 Alfred Hitchcock 主演: 安东尼·博金斯 Antho... 1960 / 美国 / 悬疑 惊悚 恐怖', '9.0', '故事的反转与反转，分裂电影的始祖。', NULL);
INSERT INTO `movie` VALUES (158, '血战钢锯岭', '导演: 梅尔·吉布森 Mel Gibson 主演: 安德鲁·加菲尔德 Andrew Garfield /... 2016 / 澳大利亚 美国 / 剧情 传记 历史 战争', '8.7', '优秀的战争片不会美化战场，不会粉饰死亡，不会矮化敌人，不会无视常识，最重要的，不会宣扬战争。', NULL);
INSERT INTO `movie` VALUES (159, '我是山姆', '导演: 杰茜·尼尔森 Jessie Nelson 主演: Sean Penn / Dakota Fanning / Mi... 2001 / 美国 / 剧情 家庭', '9.0', '爱并不需要智商 。', NULL);
INSERT INTO `movie` VALUES (160, '阳光姐妹淘', '导演: 姜炯哲 Hyeong-Cheol Kang 主演: 沈恩京 Eun-kyung Shim / 闵孝琳 Hy... 2011 / 韩国 / 剧情 喜剧', '8.8', '再多各自牛逼的时光，也比不上一起傻逼的岁月。', NULL);
INSERT INTO `movie` VALUES (161, '恐怖直播', '导演: 金秉祐 Byeong-woo Kim 主演: 河正宇 Jung-woo Ha / 李璟荣 Kyeong-y... 2013 / 韩国 / 剧情 犯罪 悬疑', '8.7', '恐怖分子的“秋菊打官司”。', NULL);
INSERT INTO `movie` VALUES (162, '你的名字。', '导演: 新海诚 Makoto Shinkai 主演: 神木隆之介 Ryûnosuke Kamiki / 上... 2016 / 日本 / 剧情 爱情 动画', '8.5', '穿越错位的时空，仰望陨落的星辰，你没留下你的名字，我却无法忘记那句“我爱你”。', NULL);
INSERT INTO `movie` VALUES (163, '黑客帝国3：矩阵革命', '导演: 拉娜·沃卓斯基 Lana Wachowski / 莉莉·沃卓斯基 Lilly Wachowski ... 2003 / 美国 / 动作 科幻', '8.8', '不得不说，《黑客帝国》系列是商业片与科幻、哲学完美结合的典范。', NULL);
INSERT INTO `movie` VALUES (164, '三块广告牌', '导演: 马丁·麦克唐纳 Martin McDonagh 主演: 弗兰西斯·麦克多蒙德 France... 2017 / 英国 美国 / 剧情 犯罪', '8.7', '怼天怼地，你走后，她与世界为敌。', NULL);
INSERT INTO `movie` VALUES (165, '心迷宫', '导演: 忻钰坤 Yukun Xin 主演: 霍卫民 Weimin Huo / 王笑天 Xiaotian Wang ... 2014 / 中国大陆 / 剧情 犯罪 悬疑', '8.8', '荒诞讽刺，千奇百巧，抽丝剥茧，百转千回。', NULL);
INSERT INTO `movie` VALUES (166, '电锯惊魂', '导演: 詹姆斯·温 James Wan 主演: 雷·沃纳尔 Leigh Whannell / 加利·艾... 2004 / 美国 / 悬疑 惊悚 恐怖', '8.7', '真相就在眼前。', NULL);
INSERT INTO `movie` VALUES (167, '小丑', '导演: 托德·菲利普斯 Todd Phillips 主演: 杰昆·菲尼克斯 Joaquin Phoeni... 2019 / 美国 加拿大 / 剧情 犯罪 惊悚', '8.7', '导演: 托德·菲利普斯 Todd Phillips 主演: 杰昆·菲尼克斯 Joaquin Phoeni... 2019 / 美国 加拿大 / 剧情 犯罪 惊悚', NULL);
INSERT INTO `movie` VALUES (168, '达拉斯买家俱乐部', '导演: 让-马克·瓦雷 Jean-Marc Vallée 主演: 马修·麦康纳 Matthew McCon... 2013 / 美国 / 剧情 传记 同性', '8.8', 'Jared Leto的腿比女人还美！', NULL);
INSERT INTO `movie` VALUES (169, '疯狂原始人', '导演: 科克·德·米科 Kirk De Micco / 克里斯·桑德斯 Chris Sanders 主演... 2013 / 美国 / 喜剧 动画 冒险', '8.7', '老少皆宜，这就是好莱坞动画的魅力。', NULL);
INSERT INTO `movie` VALUES (170, '背靠背，脸对脸', '导演: 黄建新 Jianxin Huang / 杨亚洲 Yazhou Yang 主演: 牛振华 Zhenhua N... 1994 / 中国大陆 中国香港 / 剧情', '9.5', '导演: 黄建新 Jianxin Huang / 杨亚洲 Yazhou Yang 主演: 牛振华 Zhenhua N... 1994 / 中国大陆 中国香港 / 剧情', NULL);
INSERT INTO `movie` VALUES (171, '心灵奇旅', '导演: 彼特·道格特 Pete Docter / 凯普·鲍尔斯 Kemp Powers 主演: 杰米·... 2020 / 美国 / 动画 奇幻 音乐', '8.7', '导演: 彼特·道格特 Pete Docter / 凯普·鲍尔斯 Kemp Powers 主演: 杰米·... 2020 / 美国 / 动画 奇幻 音乐', NULL);
INSERT INTO `movie` VALUES (172, '谍影重重3', '导演: 保罗·格林格拉斯 Paul Greengrass 主演: 马特·达蒙 Matt Damon / ... 2007 / 美国 德国 法国 英国 / 动作 悬疑 惊悚', '8.8', '像吃了苏打饼一样干脆的电影。', NULL);
INSERT INTO `movie` VALUES (173, '上帝之城', '导演: 费尔南多·梅里尔斯 Fernando Meirelles / 卡迪亚·兰德 Kátia Lund ... 2002 / 巴西 法国 / 犯罪 剧情', '9.0', '被上帝抛弃了的上帝之城。', NULL);
INSERT INTO `movie` VALUES (174, '绿里奇迹', '导演: 弗兰克·德拉邦特 Frank Darabont 主演: 汤姆·汉克斯 Tom Hanks / ... 1999 / 美国 / 犯罪 剧情 奇幻 悬疑', '8.9', '天使暂时离开。', NULL);
INSERT INTO `movie` VALUES (175, '爱在午夜降临前', '导演: 理查德·林克莱特 Richard Linklater 主演: 伊桑·霍克 Ethan Hawke ... 2013 / 美国 希腊 / 剧情 爱情', '8.9', '所谓爱情，就是话唠一路，都不会心生腻烦，彼此嫌弃。', NULL);
INSERT INTO `movie` VALUES (176, '海街日记', '导演: 是枝裕和 Hirokazu Koreeda 主演: 绫濑遥 Haruka Ayase / 长泽雅美 M... 2015 / 日本 / 剧情 家庭', '8.8', '是枝裕和的家庭习作。', NULL);
INSERT INTO `movie` VALUES (177, '英雄本色', '导演: 吴宇森 John Woo 主演: 周润发 Yun-Fat Chow / 狄龙 Lung Ti / 张国... 1986 / 中国香港 / 剧情 动作 犯罪', '8.6', '英雄泪短，兄弟情长。', NULL);
INSERT INTO `movie` VALUES (178, '风之谷', '导演: 宫崎骏 Hayao Miyazaki 主演: 岛本须美 Sumi Shimamoto / 松田洋治 Y... 1984 / 日本 / 动画 奇幻 冒险', '8.9', '动画片的圣经。', NULL);
INSERT INTO `movie` VALUES (179, '无间道2', '导演: 刘伟强 / 麦兆辉 主演: 陈冠希 Edison Chen / 余文乐 Shawn Yue / 曾... 2003 / 中国香港 / 剧情 犯罪 惊悚', '8.8', '导演: 刘伟强 / 麦兆辉 主演: 陈冠希 Edison Chen / 余文乐 Shawn Yue / 曾... 2003 / 中国香港 / 剧情 犯罪 惊悚', NULL);
INSERT INTO `movie` VALUES (180, '疯狂的石头', '导演: 宁浩 Hao Ning 主演: 郭涛 Tao Guo / 刘桦 Hua Liu / 连晋 Teddy Lin 2006 / 中国大陆 中国香港 / 喜剧 犯罪', '8.6', '中国版《两杆大烟枪》。', NULL);
INSERT INTO `movie` VALUES (181, '2001太空漫游', '导演: 斯坦利·库布里克 Stanley Kubrick 主演: 凯尔·杜拉 Keir Dullea / ... 1968 / 英国 美国 / 科幻 惊悚 冒险', '8.9', '现代科幻电影的开山之作，最伟大导演的最伟大影片。', NULL);
INSERT INTO `movie` VALUES (182, '纵横四海', '导演: 吴宇森 John Woo 主演: 周润发 Yun-Fat Chow / 张国荣 Leslie Cheung... 1991 / 中国香港 / 剧情 喜剧 动作 犯罪', '8.8', '香港浪漫主义警匪动作片的巅峰之作。', NULL);
INSERT INTO `movie` VALUES (183, '雨中曲', '导演: 斯坦利·多南 Stanley Donen / 吉恩·凯利 Gene Kelly 主演: 吉恩·... 1952 / 美国 / 喜剧 歌舞 爱情', '9.1', '骨灰级歌舞片。', NULL);
INSERT INTO `movie` VALUES (184, '卢旺达饭店', '导演: 特瑞·乔治 Terry George 主演: 唐·钱德尔 Don Cheadle / 苏菲·奥... 2004 / 英国 南非 意大利 美国 / 剧情 传记 历史 战争', '8.9', '当这个世界闭上双眼，他却敞开了怀抱。', NULL);
INSERT INTO `movie` VALUES (185, '记忆碎片', '导演: 克里斯托弗·诺兰 Christopher Nolan 主演: 盖·皮尔斯 Guy Pearce /... 2000 / 美国 / 犯罪 剧情 悬疑 惊悚', '8.7', '一个针管引发的血案。', NULL);
INSERT INTO `movie` VALUES (186, '小偷家族', '导演: 是枝裕和 Hirokazu Koreeda 主演: 中川雅也 Lily Franky / 安藤樱 Sa... 2018 / 日本 / 剧情 犯罪 家庭', '8.7', '我们组成了家。', NULL);
INSERT INTO `movie` VALUES (187, '无敌破坏王', '导演: 瑞奇·莫尔 Rich Moore 主演: 约翰·C·赖利 John C. Reilly / 萨拉... 2012 / 美国 / 喜剧 动画 奇幻 冒险', '8.7', '迪士尼和皮克斯拿错剧本的产物。', NULL);
INSERT INTO `movie` VALUES (188, '岁月神偷', '导演: 罗启锐 Alex Law 主演: 吴君如 Sandra Ng / 任达华 Simon Yam / 钟绍... 2010 / 中国香港 中国大陆 / 剧情 家庭', '8.7', '岁月流逝，来日可追。', NULL);
INSERT INTO `movie` VALUES (189, '冰川时代', '导演: 卡洛斯·沙尔丹哈 Carlos Saldanha / 克里斯·韦奇 Chris Wedge 主演... 2002 / 美国 / 喜剧 动画 冒险', '8.6', '松鼠才是角儿。', NULL);
INSERT INTO `movie` VALUES (190, '牯岭街少年杀人事件', '导演: 杨德昌 Edward Yang 主演: 张震 Chen Chang / 杨静怡 Lisa Yang / 张... 1991 / 中国台湾 / 剧情 犯罪', '8.9', '弱者送给弱者的一刀。', NULL);
INSERT INTO `movie` VALUES (191, '荒蛮故事', '导演: 达米安·斯兹弗隆 Damián Szifron 主演: 达里奥·葛兰帝内提 Darío... 2014 / 阿根廷 西班牙 / 剧情 喜剧 犯罪', '8.8', '始于荒诞，止于更荒诞。', NULL);
INSERT INTO `movie` VALUES (192, '忠犬八公物语', '导演: 神山征二郎 Seijirô Kôyama 主演: 仲代达矢 Tatsuya Nakadai /... 1987 / 日本 / 剧情', '9.2', '养狗三日，便会对你终其一生。', NULL);
INSERT INTO `movie` VALUES (193, '恐怖游轮', '导演: 克里斯托弗·史密斯 Christopher Smith 主演: 梅利莎·乔治 Melissa ... 2009 / 英国 澳大利亚 / 剧情 悬疑 惊悚', '8.5', '不要企图在重复中寻找已经失去的爱。', NULL);
INSERT INTO `movie` VALUES (194, '爆裂鼓手', '导演: 达米恩·查泽雷 Damien Chazelle 主演: 迈尔斯·特勒 Miles Teller /... 2014 / 美国 / 剧情 音乐', '8.7', '这个世界从不善待努力的人，努力了也不一定会成功，但是知道自己在努力，就是活下去的动力。', NULL);
INSERT INTO `movie` VALUES (195, '东京教父', '导演: 今敏 Satoshi Kon 主演: 江守彻 Toru Emori / 梅垣义明 Yoshiaki Ume... 2003 / 日本 / 剧情 喜剧 动画', '9.0', '导演: 今敏 Satoshi Kon 主演: 江守彻 Toru Emori / 梅垣义明 Yoshiaki Ume... 2003 / 日本 / 剧情 喜剧 动画', NULL);
INSERT INTO `movie` VALUES (196, '魔女宅急便', '导演: 宫崎骏 Hayao Miyazaki 主演: 高山南 Minami Takayama / 佐久间玲 Re... 1989 / 日本 / 动画 奇幻 冒险', '8.7', '宫崎骏的电影总让人感觉世界是美好的，阳光明媚的。', NULL);
INSERT INTO `movie` VALUES (197, '末路狂花', '导演: 雷德利·斯科特 Ridley Scott 主演: 吉娜·戴维斯 Geena Davis / 苏... 1991 / 美国 英国 法国 / 犯罪 剧情 惊悚', '9.0', '没有了退路，只好飞向自由。', NULL);
INSERT INTO `movie` VALUES (198, '大佛普拉斯', '导演: 黄信尧 Hsin-yao Huang 主演: 庄益增 Yizeng Zhuang / 陈竹昇 Chu-sh... 2017 / 中国台湾 / 剧情 喜剧', '8.7', '人们可以登上月球，却永远无法探索人们内心的宇宙。', NULL);
INSERT INTO `movie` VALUES (199, '遗愿清单', '导演: 罗伯·莱纳 Rob Reiner 主演: 杰克·尼科尔森 Jack Nicholson / 摩根... 2007 / 美国 / 冒险 喜剧 剧情', '8.7', '用剩余不多的时间，去燃烧整个生命。', NULL);
INSERT INTO `movie` VALUES (200, '贫民窟的百万富翁', '导演: 丹尼·鲍尔 Danny Boyle / 洛芙琳·坦丹 Loveleen Tandan 主演: 戴夫... 2008 / 英国 / 剧情 爱情', '8.6', '上帝之城+猜火车+阿甘正传+开心辞典=山寨富翁', NULL);
INSERT INTO `movie` VALUES (201, '东邪西毒', '导演: 王家卫 Kar Wai Wong 主演: 张国荣 Leslie Cheung / 林青霞 Brigitte... 1994 / 中国香港 中国台湾 / 剧情 动作 爱情 武侠 古装', '8.6', '电影诗。', NULL);
INSERT INTO `movie` VALUES (202, '你看起来好像很好吃', '导演: 藤森雅也 Masaya Fujimori 主演: 山口胜平 Kappei Yamaguchi / 爱河... 2010 / 日本 / 剧情 动画 儿童', '8.9', '感情不分食草或者食肉。', NULL);
INSERT INTO `movie` VALUES (203, '高山下的花环', '导演: 谢晋 Jin Xie 主演: 吕晓禾 Xiaohe Lü / 唐国强 Guoqiang Tang / 何... 1984(中国大陆) / 1985 / 中国大陆 / 剧情 战争', '9.5', '导演: 谢晋 Jin Xie 主演: 吕晓禾 Xiaohe Lü / 唐国强 Guoqiang Tang / 何... 1984(中国大陆) / 1985 / 中国大陆 / 剧情 战争', NULL);
INSERT INTO `movie` VALUES (204, '源代码', '导演: 邓肯·琼斯 Duncan Jones 主演: 杰克·吉伦哈尔 Jake Gyllenhaal / ... 2011 / 美国 加拿大 / 科幻 悬疑 惊悚', '8.5', '邓肯·琼斯继《月球》之后再度奉献出一部精彩绝伦的科幻佳作。', NULL);
INSERT INTO `movie` VALUES (205, '可可西里', '导演: 陆川 Chuan Lu 主演: 多布杰 Duobujie / 张磊 Lei Zhang / 亓亮 Qi L... 2004 / 中国大陆 中国香港 / 剧情 犯罪', '8.9', '坚硬的信仰。', NULL);
INSERT INTO `movie` VALUES (206, '疯狂的麦克斯4：狂暴之路', '导演: 乔治·米勒 George Miller 主演: 汤姆·哈迪 Tom Hardy / 查理兹·塞... 2015 / 澳大利亚 美国 / 动作 科幻 冒险', '8.7', '“多么美好的一天！”轰轰轰砰咚，啪哒哒哒轰隆隆，磅~', NULL);
INSERT INTO `movie` VALUES (207, '城市之光', '导演: Charles Chaplin 主演: 查理·卓别林 Charles Chaplin / 弗吉尼亚·... 1931 / 美国 / 喜剧 剧情 爱情', '9.3', '永远的小人物，伟大的卓别林。', NULL);
INSERT INTO `movie` VALUES (208, '海边的曼彻斯特', '导演: 肯尼斯·罗纳根 Kenneth Lonergan 主演: 卡西·阿弗莱克 Casey Affle... 2016 / 美国 / 剧情 家庭', '8.6', '我们都有权利不与自己的过去和解。', NULL);
INSERT INTO `movie` VALUES (209, '波西米亚狂想曲', '导演: 布莱恩·辛格 Bryan Singer 主演: 拉米·马雷克 Rami Malek / 本·哈... 2018 / 英国 美国 / 剧情 传记 同性 音乐', '8.6', '导演: 布莱恩·辛格 Bryan Singer 主演: 拉米·马雷克 Rami Malek / 本·哈... 2018 / 英国 美国 / 剧情 传记 同性 音乐', NULL);
INSERT INTO `movie` VALUES (210, '黑天鹅', '导演: 达伦·阿罗诺夫斯基 Darren Aronofsky 主演: 娜塔莉·波特曼 Natalie... 2010 / 美国 / 剧情 惊悚', '8.6', '黑暗之美。', NULL);
INSERT INTO `movie` VALUES (211, '芙蓉镇', '导演: 谢晋 Jin Xie 主演: 刘晓庆 Xiaoqing Liu / 姜文 Wen Jiang / 郑在石... 1987 / 中国大陆 / 剧情 爱情', '9.3', '导演: 谢晋 Jin Xie 主演: 刘晓庆 Xiaoqing Liu / 姜文 Wen Jiang / 郑在石... 1987 / 中国大陆 / 剧情 爱情', NULL);
INSERT INTO `movie` VALUES (212, '爱乐之城', '导演: 达米恩·查泽雷 Damien Chazelle 主演: 瑞恩·高斯林 Ryan Gosling /... 2016 / 美国 / 剧情 爱情 歌舞', '8.4', '导演: 达米恩·查泽雷 Damien Chazelle 主演: 瑞恩·高斯林 Ryan Gosling /... 2016 / 美国 / 剧情 爱情 歌舞', NULL);
INSERT INTO `movie` VALUES (213, '真爱至上', '导演: 理查德·柯蒂斯 Richard Curtis 主演: 休·格兰特 Hugh Grant / 连姆... 2003 / 英国 美国 法国 / 喜剧 剧情 爱情', '8.5', '爱，是个动词。', NULL);
INSERT INTO `movie` VALUES (214, '青蛇', '导演: 徐克 Hark Tsui 主演: 张曼玉 Maggie Cheung / 王祖贤 Joey Wang / ... 1993 / 中国香港 中国大陆 / 剧情 爱情 奇幻 古装', '8.6', '人生如此，浮生如斯。谁人言，花彼岸，此生情长意短。谁都是不懂爱的罢了。', NULL);
INSERT INTO `movie` VALUES (215, '雨人', '导演: 巴瑞·莱文森 Barry Levinson 主演: 达斯汀·霍夫曼 Dustin Hoffman ... 1988 / 美国 / 剧情', '8.7', '生活在自己的世界里，也可以让周围的人显得可笑和渺小。', NULL);
INSERT INTO `movie` VALUES (216, '初恋这件小事', '导演: 普特鹏·普罗萨卡·那·萨克那卡林 Puttipong Promsaka Na Sakolnakorn / 华森·波克彭... 2010 / 泰国 / 剧情 喜剧 爱情', '8.5', '黑小鸭速效美白记。', NULL);
INSERT INTO `movie` VALUES (217, '花束般的恋爱', '导演: 土井裕泰 Nobuhiro Doi 主演: 菅田将晖 Masaki Suda / 有村架纯 Kasu... 2021 / 日本 / 剧情 爱情', '8.6', '导演: 土井裕泰 Nobuhiro Doi 主演: 菅田将晖 Masaki Suda / 有村架纯 Kasu... 2021 / 日本 / 剧情 爱情', NULL);
INSERT INTO `movie` VALUES (218, '终结者2：审判日', '导演: 詹姆斯·卡梅隆 James Cameron 主演: 阿诺·施瓦辛格 Arnold Schwarz... 1991 / 美国 法国 / 动作 科幻', '8.8', '少见的超越首部的续集，动作片中的经典。', NULL);
INSERT INTO `movie` VALUES (219, '人工智能', '导演: 史蒂文·斯皮尔伯格 Steven Spielberg 主演: 海利·乔·奥斯蒙 Haley... 2001 / 美国 英国 / 剧情 科幻', '8.7', '对爱的执着，可以超越一切。', NULL);
INSERT INTO `movie` VALUES (220, '虎口脱险', '导演: 杰拉尔·乌里 Gérard Oury 主演: 路易·德·菲耐斯 Louis de Funès... 1966 / 法国 英国 / 喜剧 战争', '8.9', '永远看不腻的喜剧。', NULL);
INSERT INTO `movie` VALUES (221, '无耻混蛋', '导演: 昆汀·塔伦蒂诺 Quentin Tarantino 主演: 布拉德·皮特 Brad Pitt / ... 2009 / 德国 美国 / 剧情 犯罪', '8.7', '昆汀同学越来越变态了，比北野武还杜琪峰。', NULL);
INSERT INTO `movie` VALUES (222, '恋恋笔记本', '导演: 尼克·卡索维茨 Nick Cassavetes 主演: 瑞恩·高斯林 Ryan Gosling /... 2004 / 美国 / 剧情 爱情', '8.5', '爱情没有那么多借口，如果不能圆满，只能说明爱的不够。', NULL);
INSERT INTO `movie` VALUES (223, '新龙门客栈', '导演: 李惠民 Raymond Lee 主演: 张曼玉 Maggie Cheung / 林青霞 Brigitte ... 1992 / 中国香港 中国大陆 / 动作 爱情 武侠 古装', '8.7', '嬉笑怒骂，调风动月。', NULL);
INSERT INTO `movie` VALUES (224, '哈利·波特与死亡圣器(上)', '导演: 大卫·叶茨 David Yates 主演: 丹尼尔·雷德克里夫 Daniel Radcliffe... 2010 / 英国 美国 / 奇幻 冒险', '8.6', '最忠于原著的一部。', NULL);
INSERT INTO `movie` VALUES (225, '白日梦想家', '导演: 本·斯蒂勒 Ben Stiller 主演: 本·斯蒂勒 Ben Stiller / 克里斯汀·... 2013 / 美国 英国 / 剧情 喜剧 冒险', '8.6', '导演: 本·斯蒂勒 Ben Stiller 主演: 本·斯蒂勒 Ben Stiller / 克里斯汀·... 2013 / 美国 英国 / 剧情 喜剧 冒险', NULL);
INSERT INTO `movie` VALUES (226, '崖上的波妞', '导演: 宫崎骏 Hayao Miyazaki 主演: 奈良柚莉爱 Yuria Nara / 土井洋辉 Hir... 2008 / 日本 / 动画 奇幻 冒险', '8.6', '导演: 宫崎骏 Hayao Miyazaki 主演: 奈良柚莉爱 Yuria Nara / 土井洋辉 Hir... 2008 / 日本 / 动画 奇幻 冒险', NULL);
INSERT INTO `movie` VALUES (227, '罗生门', '导演: 黑泽明 Akira Kurosawa 主演: 三船敏郎 Toshirô Mifune / 京町子 ... 1950 / 日本 / 剧情 犯罪 悬疑', '8.8', '人生的N种可能性。', NULL);
INSERT INTO `movie` VALUES (228, '千钧一发', '导演: 安德鲁·尼科尔 Andrew Niccol 主演: 伊桑·霍克 Ethan Hawke / 乌玛... 1997 / 美国 / 剧情 科幻 惊悚', '8.8', '一部能引人思考的科幻励志片。', NULL);
INSERT INTO `movie` VALUES (229, '彗星来的那一夜', '导演: 詹姆斯·沃德·布柯特 James Ward Byrkit 主演: 艾米丽·芭尔多尼 Em... 2013 / 美国 英国 / 科幻 悬疑 惊悚', '8.6', '小成本大魅力。', NULL);
INSERT INTO `movie` VALUES (230, '大红灯笼高高挂', '导演: 张艺谋 Yimou Zhang 主演: 巩俐 Li Gong / 马精武 Jingwu Ma / 何赛... 1991 / 中国大陆 中国香港 中国台湾 / 剧情', '8.8', '导演: 张艺谋 Yimou Zhang 主演: 巩俐 Li Gong / 马精武 Jingwu Ma / 何赛... 1991 / 中国大陆 中国香港 中国台湾 / 剧情', NULL);
INSERT INTO `movie` VALUES (231, '黑客帝国2：重装上阵', '导演: 拉娜·沃卓斯基 Lana Wachowski / 莉莉·沃卓斯基 Lilly Wachowski ... 2003 / 美国 / 动作 科幻', '8.7', '一个精彩的世界观正在缓缓建立。', NULL);
INSERT INTO `movie` VALUES (232, '萤火虫之墓', '导演: 高畑勋 Isao Takahata 主演: 辰己努 / 白石绫乃 / 志乃原良子 1988 / 日本 / 动画 剧情 战争', '8.7', '幸福是生生不息，却难以触及的远。', NULL);
INSERT INTO `movie` VALUES (233, '哈利·波特与凤凰社', '导演: 大卫·叶茨 David Yates 主演: 丹尼尔·雷德克里夫 Daniel Radcliffe... 2007 / 英国 美国 / 奇幻 冒险', '8.5', '导演: 大卫·叶茨 David Yates 主演: 丹尼尔·雷德克里夫 Daniel Radcliffe... 2007 / 英国 美国 / 奇幻 冒险', NULL);
INSERT INTO `movie` VALUES (234, '火星救援', '导演: 雷德利·斯科特 Ridley Scott 主演: 马特·达蒙 Matt Damon / 杰西卡... 2015 / 英国 美国 匈牙利 约旦 / 剧情 科幻 冒险', '8.5', '导演: 雷德利·斯科特 Ridley Scott 主演: 马特·达蒙 Matt Damon / 杰西卡... 2015 / 英国 美国 匈牙利 约旦 / 剧情 科幻 冒险', NULL);
INSERT INTO `movie` VALUES (235, '奇迹男孩', '导演: 斯蒂芬·卓博斯基 Stephen Chbosky 主演: 雅各布·特伦布莱 Jacob Tr... 2017 / 美国 中国香港 / 剧情 儿童 家庭', '8.6', '世界不完美，爱会有奇迹。', NULL);
INSERT INTO `movie` VALUES (236, '机器人之梦', '导演: 巴勃罗·贝格尔 Pablo Berger 主演: 伊万·拉班达 Ivan Labanda / 阿... 2023 / 西班牙 法国 / 剧情 动画 音乐', '9.0', '导演: 巴勃罗·贝格尔 Pablo Berger 主演: 伊万·拉班达 Ivan Labanda / 阿... 2023 / 西班牙 法国 / 剧情 动画 音乐', NULL);
INSERT INTO `movie` VALUES (237, '二十二', '导演: 郭柯 Ke Guo 主演: 2015 / 中国大陆 / 纪录片', '8.7', '有一些东西不应该被遗忘。', NULL);
INSERT INTO `movie` VALUES (238, '战争之王', '导演: 安德鲁·尼科尔 Andrew Niccol 主演: 尼古拉斯·凯奇 Nicolas Cage /... 2005 / 美国 德国 / 剧情 犯罪', '8.7', '做一颗让别人需要你的棋子。', NULL);
INSERT INTO `movie` VALUES (239, '步履不停', '导演: 是枝裕和 Hirokazu Koreeda 主演: 阿部宽 Hiroshi Abe / 夏川结衣 Yu... 2008 / 日本 / 剧情 家庭', '8.8', '日本的家庭电影已经是世界巅峰了，步履不停是巅峰中的佳作。', NULL);
INSERT INTO `movie` VALUES (240, '血钻', '导演: 爱德华·兹威克 Edward Zwick 主演: 莱昂纳多·迪卡普里奥 Leonardo ... 2006 / 美国 德国 英国 / 剧情 惊悚 冒险', '8.7', '每个美丽事物背后都是滴血的现实。', NULL);
INSERT INTO `movie` VALUES (241, '千年女优', '导演: 今敏 Satoshi Kon 主演: 庄司美代子 Miyoko Shôji / 小山茉美 Mam... 2001 / 日本 / 动画 剧情 爱情', '8.8', '爱情是一场没有尽头的虚幻追逐。', NULL);
INSERT INTO `movie` VALUES (242, '谍影重重2', '导演: 保罗·格林格拉斯 Paul Greengrass 主演: 马特·达蒙 Matt Damon / ... 2004 / 美国 德国 / 动作 悬疑 惊悚', '8.7', '谁说王家卫镜头很晃？', NULL);
INSERT INTO `movie` VALUES (243, '房间', '导演: 伦尼·阿伯拉罕森 Lenny Abrahamson 主演: 布丽·拉尔森 Brie Larson... 2015 / 爱尔兰 加拿大 英国 美国 / 剧情 家庭', '8.8', '被偷走的岁月，被伤害的生命，被禁锢的灵魂，终将被希望和善意救赎。', NULL);
INSERT INTO `movie` VALUES (244, '魂断蓝桥', '导演: 茂文·勒鲁瓦 Mervyn LeRoy 主演: 费雯·丽 Vivien Leigh / 罗伯特·... 1940 / 美国 / 剧情 爱情 战争', '8.8', '中国式内在的美国电影。', NULL);
INSERT INTO `movie` VALUES (245, '蜘蛛侠：平行宇宙', '导演: 鲍勃·佩尔西凯蒂 Bob Persichetti / 彼得·拉姆齐 Peter Ramsey 主... 2018 / 美国 / 动作 科幻 动画 冒险', '8.6', '导演: 鲍勃·佩尔西凯蒂 Bob Persichetti / 彼得·拉姆齐 Peter Ramsey 主... 2018 / 美国 / 动作 科幻 动画 冒险', NULL);
INSERT INTO `movie` VALUES (246, '弱点', '导演: 约翰·李·汉考克 John Lee Hancock 主演: 桑德拉·布洛克 Sandra Bu... 2009 / 美国 / 剧情 家庭 传记 运动', '8.7', '拍掉身上的悲伤，从今天开始重新踏上追梦之旅。', NULL);
INSERT INTO `movie` VALUES (247, '谍影重重', '导演: 道格·里曼 Doug Liman 主演: 马特·达蒙 Matt Damon / 弗兰卡·波坦... 2002 / 美国 德国 捷克 / 动作 悬疑 惊悚', '8.6', '哗啦啦啦啦，天在下雨，哗啦啦啦啦，云在哭泣……找自己。', NULL);
INSERT INTO `movie` VALUES (248, '隐藏人物', '导演: 特奥多尔·梅尔菲 Theodore Melfi 主演: 塔拉吉·P·汉森 Taraji P. ... 2016 / 美国 / 剧情 传记 历史', '8.9', '导演: 特奥多尔·梅尔菲 Theodore Melfi 主演: 塔拉吉·P·汉森 Taraji P. ... 2016 / 美国 / 剧情 传记 历史', NULL);
INSERT INTO `movie` VALUES (249, '朗读者', '导演: 史蒂芬·戴德利 Stephen Daldry 主演: 凯特·温丝莱特 Kate Winslet ... 2008 / 美国 德国 / 剧情 爱情', '8.6', '当爱情跨越年龄的界限，它似乎能变得更久远一点，成为一种责任，一种水到渠成的相濡以沫。', NULL);
INSERT INTO `movie` VALUES (250, '阿飞正传', '导演: 王家卫 Kar Wai Wong 主演: 张国荣 Leslie Cheung / 张曼玉 Maggie C... 1990 / 中国香港 / 犯罪 剧情 爱情', '8.5', '王家卫是一种风格，张国荣是一个代表。', NULL);
INSERT INTO `movie` VALUES (256, '2', '', '5.3', '2', NULL);
INSERT INTO `movie` VALUES (257, 'a', '', '6.3', '', NULL);
INSERT INTO `movie` VALUES (259, '1', '', '5.3', '', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (260, '6666666', '666666666', '6.6', '666666666666', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (263, '3333333333333', '666666666666', '3.3', '3333', 'http://localhost:8080/images/moviePng/abcd.png');
INSERT INTO `movie` VALUES (268, '5555', '5555555', '5.5', '555555555', 'http://localhost:8080/images/moviePng/1.png');
INSERT INTO `movie` VALUES (269, '5555', '5555555', '5.5', '888888888', 'http://localhost:8080/images/moviePng/123.png');
INSERT INTO `movie` VALUES (270, 'ces', 'ces', '5.5', '555555', 'http://localhost:8080/images/moviePng/1.png');
INSERT INTO `movie` VALUES (271, '测试', '测试', '5.6', '666', 'http://localhost:8080/images/moviePng/1.png?v=1735257894051');

SET FOREIGN_KEY_CHECKS = 1;
