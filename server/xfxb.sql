set names UTF8;
drop database if exists xfxb;
create database xfxb charset=UTF8;
use xfxb;
/* 创建用户表 */
CREATE TABLE user (
 uid int primary key auto_increment,
 phone VARCHAR(12) NOT NULL ,
 password VARCHAR(12),
 email VARCHAR(64)  
);
INSERT INTO user VALUES(null,'18227673860','12345678','653415436@qq.com');
/* 轮播图 */
CREATE TABLE banner (
    bid int primary key auto_increment,
    banner VARCHAR(100)
);
INSERT INTO banner VALUES (null,'http://127.0.0.1:8081/public/img/banner/carousal1.jpg');
INSERT INTO banner VALUES (null,'http://127.0.0.1:8081/public/img/banner/carousal2.jpg');
/*首页商品表*/
CREATE TABLE index_product (
  pid int(11) NOT NULL,
  title varchar(64) DEFAULT NULL,
  details varchar(128) DEFAULT NULL,
  pic varchar(128) DEFAULT NULL,
  price decimal(10,2) DEFAULT NULL,
  href varchar(128) DEFAULT NULL
);
INSERT INTO index_product VALUES
(1, '四重奏蛋糕(约2磅)', '方形/巧克力/榴莲/慕斯蛋糕', 'http://127.0.0.1:8081/public/img/content/right-7.jpg', '238', 'product_details.html?lid=1'),
(2, '榴芒双拼(约2磅)', '双拼蛋糕', 'http://127.0.0.1:8081/public/img/content/right-11.jpg', '228', 'product_details.html?lid=2'),
(3, '花镜(12块)【无贺卡、巧克力牌、蜡烛、生日帽】', '下午茶慕斯、芝士蛋糕', 'http://127.0.0.1:8081/public/img/content/right-14.jpg', '179', 'product_details.html?lid=3'),
(4, '鲜果嘉年华(2磅)', '鲜果蛋糕', 'http://127.0.0.1:8081/public/img/content/right-3.jpg', '238', 'product_details.html?lid=4'),
(5, '鲜芒可丽多(2磅)', '鲜果蛋糕', 'http://127.0.0.1:8081/public/img/content/right-8.jpg', '218', 'product_details.html?lid=5'),
(6, '榴莲可丽多(2磅)', '鲜果蛋糕', 'http://127.0.0.1:8081/public/img/content/right-4.jpg', '238', 'product_details.html?lid=6'),
(7, '榴芒双拼千层(900g)【无贺卡、巧克力牌、蜡烛、生日帽】', '下午茶蛋糕芒果、榴莲组合', 'http://127.0.0.1:8081/public/img/content/right-15.jpg', '179', 'product_details.html?lid=7'),
(8, '芒果千层(900g)【无贺卡、巧克力牌、蜡烛、生日帽】', '水果蛋糕、芒果蛋糕', 'http://127.0.0.1:8081/public/img/content/right-16.jpg', '169', 'product_details.html?lid=8'),
(9, '榴莲千层(900g)【无贺卡、巧克力牌、蜡烛、生日帽】', '榴莲蛋糕、幸福下午茶', 'http://127.0.0.1:8081/public/img/content/right-17.jpg', '169', 'product_details.html?lid=9'),
(10, '寿比南山(约2磅)', '水果蛋糕', 'http://127.0.0.1:8081/public/img/content/right-5.jpg', '238', 'product_details.html?lid=10'),
(11, '浪漫果纷蛋糕(约2磅)', '水果蛋糕', 'http://127.0.0.1:8081/public/img/content/right-6.jpg', '238', 'product_details.html?lid=11'),
(12, '榴莲香雪(约2磅)', '榴莲蛋糕', 'http://127.0.0.1:8081/public/img/content/right-9.jpg', '218', 'product_details.html?lid=12'),
(13, '全心全意(约2磅)', '鲜果蛋糕', 'http://127.0.0.1:8081/public/img/content/right-10.jpg', '218', 'product_details.html?lid=13'),
(14, '森林果乐(约2磅)', '巧克力水果蛋糕', 'http://127.0.0.1:8081/public/img/content/right-12.jpg', '218', 'product_details.html?lid=14'),
(15, '芒果茫茫(约2磅)', '慕斯蛋糕', 'http://127.0.0.1:8081/public/img/content/right-13.jpg', '218', 'product_details.html?lid=15'),
(16, '多层生日蛋糕', '鲜果蛋糕', 'http://127.0.0.1:8081/public/img/content/right-1.jpg', '238', 'product_details.html?lid=16'),
(17, '多层生日蛋糕', '鲜果蛋糕', 'http://127.0.0.1:8081/public/img/content/right-2.jpg', '238', 'product_details.html?lid=17');

/*每个商品的详细信息*/
CREATE TABLE laptop (
  lid int(11) NOT NULL,
  d varchar(128),
  title varchar(128) NOT NULL,
  subtitle varchar(128) NOT NULL,
  price  int(64) NOT NULL,
  material varchar(64) NOT NULL,
  pack varchar(64) NOT NULL,
  remarks varchar(32) NOT NULL
) ;
INSERT INTO laptop VALUES
(1,'http://127.0.0.1:8081/public/img/content/right-7.jpg','四重奏蛋糕(约2磅)', '方形/巧克力/榴莲/慕斯蛋糕','238','鸡蛋、奶油、小麦粉、芒果、榴莲肉、巧克力、干酪','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(2, 'http://127.0.0.1:8081/public/img/content/right-11.jpg','榴芒双拼(约2磅)', '双拼蛋糕', '228','榴莲、奶油、巧克力、芒果、糖、面粉、黄油、大豆油','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(3, 'http://127.0.0.1:8081/public/img/content/right-14.jpg','花镜(12块)【无贺卡、巧克力牌、蜡烛、生日帽】', '下午茶慕斯、芝士蛋糕', '179','安格拉斯慕斯、浓味芝士、蓝莓芝士、樱桃芝士、日式芝士慕斯、巧克力慕斯','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(4, 'http://127.0.0.1:8081/public/img/content/right-3.jpg','鲜果嘉年华(2磅)', '鲜果蛋糕', '238','草莓、芒果、奇异果、蓝莓、奶油、千层皮、原味蛋糕胚','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(5, 'http://127.0.0.1:8081/public/img/content/right-8.jpg','鲜芒可丽多(2磅)', '鲜果蛋糕', '218','草莓、芒果、奇异果、蓝莓、奶油、千层皮、蛋糕胚' ,'一次性蛋糕用具1套',' 品牌：幸福西饼'),
(6, 'http://127.0.0.1:8081/public/img/content/right-4.jpg','榴莲可丽多(2磅)', '鲜果蛋糕', '238', '草莓、蓝莓、榴莲果肉、奶油、千层皮、原味蛋糕胚','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(7, 'http://127.0.0.1:8081/public/img/content/right-15.jpg','榴芒双拼千层(900g)【无贺卡、巧克力牌、蜡烛、生日帽】', '下午茶蛋糕芒果、榴莲组合','179', '鸡蛋、稀奶油、小麦粉、白砂糖、芒果、榴莲、纯牛奶直径约19cm*高约4.5cm','一次性蛋糕用具1套','在浪漫的季节，邂逅缤纷的鲜果'),
(8, 'http://127.0.0.1:8081/public/img/content/right-16.jpg','芒果千层(900g)【无贺卡、巧克力牌、蜡烛、生日帽】', '水果蛋糕、芒果蛋糕', '169','鸡蛋、稀奶油、小麦粉、白砂糖、芒果、纯牛奶直径约19cm*高约4.5cm' ,'一次性蛋糕用具1套','在浪漫的季节，邂逅缤纷的鲜果'),
(9, 'http://127.0.0.1:8081/public/img/content/right-17.jpg','榴莲千层(900g)【无贺卡、巧克力牌、蜡烛、生日帽】', '榴莲蛋糕、幸福下午茶',  '169', '鸡蛋、稀奶油、小麦粉、白砂糖、榴莲、纯牛奶直径约19cm*高约4.5cm','一次性蛋糕用具1套','在浪漫的季节，邂逅缤纷的鲜果'),
(10, 'http://127.0.0.1:8081/public/img/content/right-5.jpg','寿比南山(约2磅)', '水果蛋糕', '238','奶油、鸡蛋、芒果、哈密瓜、草莓、白砂糖、小麦粉、巧克力等','一次性蛋糕用具1套','在浪漫的季节，邂逅缤纷的鲜果' ),
(11, 'http://127.0.0.1:8081/public/img/content/right-6.jpg','浪漫果纷蛋糕(约2磅)', '水果蛋糕',  '238','芒果、稀奶油、鸡蛋、草莓、奇异果、火龙果、白砂糖、小麦粉、水、玉米淀粉、食用植物油、果味酱、蓝莓、食用盐','一次性蛋糕用具1套','在浪漫的季节，邂逅缤纷的鲜果'),
(12, 'http://127.0.0.1:8081/public/img/content/right-9.jpg','榴莲香雪(约2磅)', '榴莲蛋糕', '218', '稀奶油、榴莲肉、鸡蛋、小麦粉、白砂糖、巧克力','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(13,'http://127.0.0.1:8081/public/img/content/right-10.jpg', '全心全意(约2磅)', '鲜果蛋糕',  '218', ' 杏仁片、芒果、奇异果、糖、面粉、植物油、奶油','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(14, 'http://127.0.0.1:8081/public/img/content/right-12.jpg','森林果乐(约2磅)', '巧克力水果蛋糕', '218','黑樱桃、芒果、奇异果、巧克力、糖、面粉、油、奶油','一次性蛋糕用具1套',' 品牌：幸福西饼' ),
(15, 'http://127.0.0.1:8081/public/img/content/right-13.jpg','芒果茫茫(约2磅)', '慕斯蛋糕',  '218','芒果、鸡蛋、芒果果酱、奶油、小麦粉、风味酸牛乳、巧克力', '一次性蛋糕用具1套',' 品牌：幸福西饼.慕斯蛋糕高于8℃融化属于正常现象，建议收到后半小时内放冰箱保存' ),
(16, 'http://127.0.0.1:8081/public/img/content/right-1.jpg','多层生日蛋糕', '鲜果蛋糕',  '238', '草莓、蓝莓、榴莲果肉、奶油、千层皮、原味蛋糕胚','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(17, 'http://127.0.0.1:8081/public/img/content/right-2.jpg','多层生日蛋糕', '鲜果蛋糕', '238', '草莓、蓝莓、榴莲果肉、奶油、千层皮、原味蛋糕胚','一次性蛋糕用具1套',' 品牌：幸福西饼');
/*各个商品详情里面对应的小图片*/
CREATE TABLE laptop_pic (
  pid int(11) ,
  d varchar(128),
  f varchar(128),
  s varchar(128),
  t varchar(128) 
);
INSERT INTO laptop_pic VALUES
(1,'http://127.0.0.1:8081/public/img/dec/1-1.jpg','http://127.0.0.1:8081/public/img/dec/1-2.jpg','http://127.0.0.1:8081/public/img/dec/1-3.jpg','http://127.0.0.1:8081/public/img/dec/1-4.jpg'),
(2,'http://127.0.0.1:8081/public/img/dec/2-1.jpg','http://127.0.0.1:8081/public/img/dec/2-2.jpg','http://127.0.0.1:8081/public/img/dec/2-3.jpg','http://127.0.0.1:8081/public/img/dec/2-4.jpg'),
(3,'http://127.0.0.1:8081/public/img/dec/3-1.jpg','http://127.0.0.1:8081/public/img/dec/3-2.jpg','http://127.0.0.1:8081/public/img/dec/3-3.jpg','http://127.0.0.1:8081/public/img/dec/3-4.jpg'),
(4,'http://127.0.0.1:8081/public/img/dec/4-1.jpg','http://127.0.0.1:8081/public/img/dec/14-2.jpg','http://127.0.0.1:8081/public/img/dec/4-3.jpg','http://127.0.0.1:8081/public/img/dec/4-4.jpg'),
(5,'http://127.0.0.1:8081/public/img/dec/5-1.jpg','http://127.0.0.1:8081/public/img/dec/5-2.jpg','http://127.0.0.1:8081/public/img/dec/5-3.jpg','http://127.0.0.1:8081/public/img/dec/5-4.jpg'),
(6,'http://127.0.0.1:8081/public/img/dec/6-1.jpg','http://127.0.0.1:8081/public/img/dec/6-2.jpg','http://127.0.0.1:8081/public/img/dec/6-3.jpg','http://127.0.0.1:8081/public/img/dec/6-4.jpg'),
(7,'http://127.0.0.1:8081/public/img/dec/7-1.jpg','http://127.0.0.1:8081/public/img/dec/7-2.jpg','http://127.0.0.1:8081/public/img/dec/7-3.jpg',''),
(8,'http://127.0.0.1:8081/public/img/dec/8-1.jpg','http://127.0.0.1:8081/public/img/dec/8-2.jpg','http://127.0.0.1:8081/public/img/dec/8-3.jpg','http://127.0.0.1:8081/public/img/dec/8-4.jpg'),
(9,'http://127.0.0.1:8081/public/img/dec/9-1.jpg','http://127.0.0.1:8081/public/img/dec/9-2.jpg','http://127.0.0.1:8081/public/img/dec/9-3.jpg','http://127.0.0.1:8081/public/img/dec/9-4.jpg'),
(10,'http://127.0.0.1:8081/public/img/dec/10-1.jpg','http://127.0.0.1:8081/public/img/dec/10-2.jpg','http://127.0.0.1:8081/public/img/dec/10-3.jpg',''),
(11,'http://127.0.0.1:8081/public/img/dec/11-1.jpg','http://127.0.0.1:8081/public/img/dec/11-2.jpg','http://127.0.0.1:8081/public/img/dec/11-3.jpg','http://127.0.0.1:8081/public/img/dec/11-4.jpg'),
(12,'http://127.0.0.1:8081/public/img/dec/12-1.jpg','http://127.0.0.1:8081/public/img/dec/12-2.jpg','http://127.0.0.1:8081/public/img/dec/12-3.jpg','http://127.0.0.1:8081/public/img/dec/12-4.jpg'),
(13,'http://127.0.0.1:8081/public/img/dec/13-1.jpg','http://127.0.0.1:8081/public/img/dec/13-2.jpg','http://127.0.0.1:8081/public/img/dec/13-3.jpg','http://127.0.0.1:8081/public/img/dec/13-4.jpg'),
(14,'http://127.0.0.1:8081/public/img/dec/14-1.jpg','http://127.0.0.1:8081/public/img/dec/14-2.jpg','http://127.0.0.1:8081/public/img/dec/14-3.jpg','http://127.0.0.1:8081/public/img/dec/14-4.jpg'),
(15,'http://127.0.0.1:8081/public/img/dec/15-1.jpg','http://127.0.0.1:8081/public/img/dec/15-2.jpg','http://127.0.0.1:8081/public/img/dec/15-3.jpg','http://127.0.0.1:8081/public/img/dec/15-4.jpg');


/*每个商品的详细信息*/
CREATE TABLE lap_top (
lid int(11) NOT NULL,
title varchar(64) NOT NULL,
subtitle varchar(128) NOT NULL,
price int(11) NOT NULL,
material varchar(64) NOT NULL,
pack varchar(64) NOT NULL,
remarks varchar(32) NOT NULL
); 

INSERT INTO lap_top VALUES
(1,'四重奏蛋糕(约2磅)', '方形/巧克力/榴莲/慕斯蛋糕','238','鸡蛋、奶油、小麦粉、芒果、榴莲肉、巧克力、干酪','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(2, '榴芒双拼(约2磅)', '双拼蛋糕', '228','榴莲、奶油、巧克力、芒果、糖、面粉、黄油、大豆油','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(3, '花镜(12块)【无贺卡、巧克力牌、蜡烛、生日帽】', '下午茶慕斯、芝士蛋糕', '179','安格拉斯慕斯、浓味芝士、蓝莓芝士、樱桃芝士、日式芝士慕斯、巧克力慕斯','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(4, '鲜果嘉年华(2磅)', '鲜果蛋糕', '238','草莓、芒果、奇异果、蓝莓、奶油、千层皮、原味蛋糕胚','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(5, '鲜芒可丽多(2磅)', '鲜果蛋糕', '218','草莓、芒果、奇异果、蓝莓、奶油、千层皮、蛋糕胚' ,'一次性蛋糕用具1套',' 品牌：幸福西饼'),
(6, '榴莲可丽多(2磅)', '鲜果蛋糕', '238', '草莓、蓝莓、榴莲果肉、奶油、千层皮、原味蛋糕胚','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(7, '榴芒双拼千层(900g)【无贺卡、巧克力牌、蜡烛、生日帽】', '下午茶蛋糕芒果、榴莲组合','179', '鸡蛋、稀奶油、小麦粉、白砂糖、芒果、榴莲、纯牛奶直径约19cm*高约4.5cm','一次性蛋糕用具1套','在浪漫的季节，邂逅缤纷的鲜果'),
(8, '芒果千层(900g)【无贺卡、巧克力牌、蜡烛、生日帽】', '水果蛋糕、芒果蛋糕', '169','鸡蛋、稀奶油、小麦粉、白砂糖、芒果、纯牛奶直径约19cm*高约4.5cm' ,'一次性蛋糕用具1套','在浪漫的季节，邂逅缤纷的鲜果'),
(9, '榴莲千层(900g)【无贺卡、巧克力牌、蜡烛、生日帽】', '榴莲蛋糕、幸福下午茶',  '169', '鸡蛋、稀奶油、小麦粉、白砂糖、榴莲、纯牛奶直径约19cm*高约4.5cm','一次性蛋糕用具1套','在浪漫的季节，邂逅缤纷的鲜果'),
(10, '寿比南山(约2磅)', '水果蛋糕', '238','奶油、鸡蛋、芒果、哈密瓜、草莓、白砂糖、小麦粉、巧克力等','一次性蛋糕用具1套','在浪漫的季节，邂逅缤纷的鲜果' ),
(11, '浪漫果纷蛋糕(约2磅)', '水果蛋糕',  '238','芒果、稀奶油、鸡蛋、草莓、奇异果、火龙果、白砂糖、小麦粉、水、玉米淀粉、食用植物油、果味酱、蓝莓、食用盐','一次性蛋糕用具1套','在浪漫的季节，邂逅缤纷的鲜果'),
(12, '榴莲香雪(约2磅)', '榴莲蛋糕', '218', '稀奶油、榴莲肉、鸡蛋、小麦粉、白砂糖、巧克力','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(13, '全心全意(约2磅)', '鲜果蛋糕',  '218', ' 杏仁片、芒果、奇异果、糖、面粉、植物油、奶油','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(14, '森林果乐(约2磅)', '巧克力水果蛋糕', '218','黑樱桃、芒果、奇异果、巧克力、糖、面粉、油、奶油','一次性蛋糕用具1套',' 品牌：幸福西饼' ),
(15, '芒果茫茫(约2磅)', '慕斯蛋糕',  '218','芒果、鸡蛋、芒果果酱、奶油、小麦粉、风味酸牛乳、巧克力', '一次性蛋糕用具1套',' 品牌：幸福西饼.慕斯蛋糕高于8℃融化属于正常现象，建议收到后半小时内放冰箱保存' ),
(16, '多层生日蛋糕', '鲜果蛋糕',  '238', '草莓、蓝莓、榴莲果肉、奶油、千层皮、原味蛋糕胚','一次性蛋糕用具1套',' 品牌：幸福西饼'),
(17, '多层生日蛋糕', '鲜果蛋糕', '238', '草莓、蓝莓、榴莲果肉、奶油、千层皮、原味蛋糕胚','一次性蛋糕用具1套',' 品牌：幸福西饼');
/*各个商品详情里面对应的小图片*/ 
CREATE TABLE laptop_pic1 (
  pid int(11) NOT NULL,
  d varchar(128) NOT NULL,
  f varchar(128) NOT NULL,
  s varchar(128) NOT NULL,
  t varchar(128) NOT NULL
);
INSERT INTO laptop_pic1 VALUES
(1,'http://127.0.0.1:8081/public/img/dec/1-1.jpg','http://127.0.0.1:8081/public/img/dec/1-2.jpg','http://127.0.0.1:8081/public/img/dec/1-3.jpg','http://127.0.0.1:8081/public/img/dec/1-4.jpg'),
(2,'http://127.0.0.1:8081/public/img/dec/2-1.jpg','http://127.0.0.1:8081/public/img/dec/2-2.jpg','http://127.0.0.1:8081/public/img/dec/2-3.jpg','http://127.0.0.1:8081/public/img/dec/2-4.jpg'),
(3,'http://127.0.0.1:8081/public/img/dec/3-1.jpg','http://127.0.0.1:8081/public/img/dec/3-2.jpg','http://127.0.0.1:8081/public/img/dec/3-3.jpg','http://127.0.0.1:8081/public/img/dec/3-4.jpg'),
(4,'http://127.0.0.1:8081/public/img/dec/4-1.jpg','http://127.0.0.1:8081/public/img/dec/14-2.jpg','http://127.0.0.1:8081/public/img/dec/4-3.jpg','http://127.0.0.1:8081/public/img/dec/4-4.jpg'),
(5,'http://127.0.0.1:8081/public/img/dec/5-1.jpg','http://127.0.0.1:8081/public/img/dec/5-2.jpg','http://127.0.0.1:8081/public/img/dec/5-3.jpg','http://127.0.0.1:8081/public/img/dec/5-4.jpg'),
(6,'http://127.0.0.1:8081/public/img/dec/6-1.jpg','http://127.0.0.1:8081/public/img/dec/6-2.jpg','http://127.0.0.1:8081/public/img/dec/6-3.jpg','http://127.0.0.1:8081/public/img/dec/6-4.jpg'),
(7,'http://127.0.0.1:8081/public/img/dec/7-1.jpg','http://127.0.0.1:8081/public/img/dec/7-2.jpg','http://127.0.0.1:8081/public/img/dec/7-3.jpg',''),
(8,'http://127.0.0.1:8081/public/img/dec/8-1.jpg','http://127.0.0.1:8081/public/img/dec/8-2.jpg','http://127.0.0.1:8081/public/img/dec/8-3.jpg','http://127.0.0.1:8081/public/img/dec/8-4.jpg'),
(9,'http://127.0.0.1:8081/public/img/dec/9-1.jpg','http://127.0.0.1:8081/public/img/dec/9-2.jpg','http://127.0.0.1:8081/public/img/dec/9-3.jpg','http://127.0.0.1:8081/public/img/dec/9-4.jpg'),
(10,'http://127.0.0.1:8081/public/img/dec/10-1.jpg','http://127.0.0.1:8081/public/img/dec/10-2.jpg','http://127.0.0.1:8081/public/img/dec/10-3.jpg',''),
(11,'http://127.0.0.1:8081/public/img/dec/11-1.jpg','http://127.0.0.1:8081/public/img/dec/11-2.jpg','http://127.0.0.1:8081/public/img/dec/11-3.jpg','http://127.0.0.1:8081/public/img/dec/11-4.jpg'),
(12,'http://127.0.0.1:8081/public/img/dec/12-1.jpg','http://127.0.0.1:8081/public/img/dec/12-2.jpg','http://127.0.0.1:8081/public/img/dec/12-3.jpg','http://127.0.0.1:8081/public/img/dec/12-4.jpg'),
(13,'http://127.0.0.1:8081/public/img/dec/13-1.jpg','http://127.0.0.1:8081/public/img/dec/13-2.jpg','http://127.0.0.1:8081/public/img/dec/13-3.jpg','http://127.0.0.1:8081/public/img/dec/13-4.jpg'),
(14,'http://127.0.0.1:8081/public/img/dec/14-1.jpg','http://127.0.0.1:8081/public/img/dec/14-2.jpg','http://127.0.0.1:8081/public/img/dec/14-3.jpg','http://127.0.0.1:8081/public/img/dec/14-4.jpg'),
(15,'http://127.0.0.1:8081/public/img/dec/15-1.jpg','http://127.0.0.1:8081/public/img/dec/15-2.jpg','http://127.0.0.1:8081/public/img/dec/15-3.jpg','http://127.0.0.1:8081/public/img/dec/15-4.jpg');
