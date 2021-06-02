<template>
<div>
  
  <!-- 轮播图 -->
 <div class="carousel slide" data-ride="carousel"  data-interval="1000" id="banner" @touchstart="touchstart" @touchmove="touchmove"  @touchend="touchmove">


            <!-- 大图片区 carousel-inner -->
            <div class="carousel-inner ">
                <!-- 一张图片 -->
                <!-- carousel-item 自带隐藏属性，若不加active，图片在页面无法显示 -->
                <div class="carousel-item  w-100"> <img src="img/banner/carousal1.jpg" alt="" class="w-100"></div>  
                <div class="carousel-item active w-100"> <img src="img/banner/carousal2.jpg" alt="" class="w-100"></div>
            </div>
            <!-- 左右切换按钮 -->
             <a href="#banner" class="carousel-control-prev xz-lr" data-slide="prev"><span class="carousel-control-prev-icon"></span></a> 
            <a href="#banner" class="carousel-control-next xz-lr" data-slide="next"><span class="carousel-control-next-icon"></span></a> 
            <!-- 提示符，小点 -->
            <ul class="carousel-indicators">
                <li class=" active" data-slide-to="0" data-target="#banner"></li>
                <li class="" data-slide-to="1" data-target="#banner"></li>
               
            </ul>
        </div>



        <!--data-ride="carousel"负责定时器移动项目 
        slide 平滑效果-->
        



  <div class="details" style="color: #555">
    <div class="container">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb small bg-transparent" >
          <li class="breadcrumb-item">
            <a class="text-dark font-weight-bold small" href="#" style="font-size:18px">首页</a>
          </li>
          <li class="breadcrumb-item">
            <a class="text-dark font-weight-bold small" href="#" style="font-size:18px">蛋糕</a>
          </li>
          <li
            class="breadcrumb-item text-dark font-weight-bold small active"
            aria-current="page" style="font-size:18px;"
          >
           {{title}}
          </li>
        </ol>
      </nav>
      <!-- 上半部分 -->
      <div class="row">
        <!-- 左边大图 -->
        <div class="col-5">
          <div class="bigimg" style="width: 450px; height: 450px">
            <img
              :src="d"
              alt=""
              style="vertical-align: middle; width: 450px"
           > 
          </div>
          <div class="smallimg mt-5">
            <div class="xsimg" style="width:100%; height: 60px">
              <img src="img/dec/1-1.jpg" alt="" style="width: 60px; margin-right:6px;margin-left:6px" >
              <img src="img/dec/1-2.jpg" alt="" style="width: 60px; margin-right:6px" >
              <img src="img/dec/1-3.jpg" alt="" style="width: 60px ; margin-right:6px"  >
              <img src="img/dec/1-4.jpg" alt="" style="width: 60px ; margin-right:6px" >
            </div>
          </div>
        </div>

        <!-- 右边详情 -->
       <div class="col-7">
        <h4 style="margin-left:8px">{{title}}</h4>
        <h6 style="margin-left:8px">{{subtitle}}</h6>
        <div class="info" style="width:660px;height:170px;background-color:#f2f2f2 ;border-radius:10px ">
        <div class="price" style="width:100%;height:60px;background-color:rgb(200,200,200)  ;border-radius:10px">
         <span style="font-size:18px;color:white;display:inline-block;margin-left:14px">售价:</span>
         <span style="font-size:24px;color:#fe7a24; display:inline-block;
    margin: 20px; ">￥{{price}}</span>
          <span style="font-size:14px;color:white;">手机专享价</span>
        </div>
        <p style="margin-top:8px;margin-left:14px;">材料 <span style="font-size:14px;color:#727272; display:inline-block;margin-left:40px">{{material}}</span></p>
        <p style="margin-top:8px;margin-left:14px;">包装<span style="font-size:14px;color:#727272;display:inline-block;margin-left:40px">{{pack}}</span></p>
        <p style="margin-top:8px;margin-left:14px;">备注<span style="font-size:14px;color:#727272;display:inline-block;margin-left:40px">{{remarks}}</span></p>
        </div>
        <p style="font-size:14px;color:#727272;margin-top:15px;margin-left:14px;">配送说明：  北京、上海、深圳、成都、重庆</p>
         <p style="font-size:14px;color:#727272;margin-top:15px;margin-left:14px;">配送上门</p>
          <button class="btn-car">放入购物车</button>
        <button class="btn-buy">立即购买</button>
       </div>
      </div>
      </div>
     
    </div>
</div>

</template>


<script>

export default {
    // props:["pid"],
  data() {
    return {
      startX:0,
      //结束位置X
      endX:0,
      //距离
      distance:0,
      pid:"",
      lid:"",
      title:"",
      subtitle:"",
  price  :"",
  material:"",
  pack:"",
  remarks:"",
  d:"",
    }
  },
  methods:{
   // 当鼠标点击时触发，类似onclick事件
    touchstart(e) {
      if(e){
        // console.log(e.targetTouches[0].clientX);
        this.startX = e.targetTouches[0].clientX;
      }

    },
    // 当鼠标移动时触发
    touchmove(e) {
      if(e){
        // console.log(e.targetTouches[0].clientX);
        this.endX = e.targetTouches[0].clientX;
      }
    },
    //当鼠标移动时触发
    touchend(e) {
      this.distance = Math.abs(startX - endX);
      if (this.distance > 50){//如果滑动距离大于50
        //说明有方向的变化
        //根据获得的方向 判断是上一张还是下一张出现
        this.carousel(startX >endX ? 'next':'prev');
      }
    },
  },
  mounted() {
    
    // console.log(this.$router.history.current.path.split(':')[1]);
    this.axios.get(`/product/details${this.$router.history.current.path.split(':')[1]}`).then((result) => {
    console.log(result.data);
    this.lid = result.data.results[0].lid;
    console.log(this.lid);
    this.title=result.data.results[0].title;
    this.subtitle=result.data.results[0].subtitle;
    this.price=result.data.results[0].price;
     this. material=result.data.results[0].material;
     this.pack=result.data.results[0].pack;
     this.remarks=result.data.results[0].remarks;
     this.d=result.data.results[0].d;
    //  console.log(this.lid);
    });
    
  },
  
  // watch:{
  //   pid(){
  //     pid=this.$router.app._uid;
  //     consloe.log=pid;
  //   }
  // }
}
</script>
<style>
.count > .minus {
  width: 30px;
  text-align: center;
  background-color: white;
  border: 1px solid rgb(168, 168, 168);
  height: 27px;

}
.count > .add {
  width: 30px;
  text-align: center;
  background-color: white;
  border: 1px solid rgb(168, 168, 168);
  height: 27px;
  margin-right: 30px;
}
.yhj > .xs-yhj > ul > li {
  background-color: red;
  color: #f0f0f0;
  padding: 3px;
}
.yhj > .xs-yhj > ul {
  list-style: none;
  display: flex;
  justify-content: space-between;
  font-size: 14px;
}
.size > ul {
  list-style: none;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
.size > ul > li {
  border: 1px solid #555;
  width: 140px;
  height: 35px;
  line-height: 35px;
  text-align: center;
}
.size > button {
  height: 40px;
  margin-left: 40px;
  margin-top: 15px;
  font-size: 18px;
}
.size > .btn-car {
  width: 220px;
  color: red;
  background-color: white;
  border: 1px solid red;
  background-image: url(/icon/scan_ico.png);
  background-repeat: no-repeat;
  background-position-x: right;
}
button{
   width: 180px;
   height: 50px;
  color: white;
  background: linear-gradient(#ff754d, #fe7a24);
  border: 0; 
  margin-right: 30px;
  border-radius: 3px;
}
.size > .btn-buy {
  width: 180px;
  color: white;
  background: linear-gradient(#ff754d, #fe2f25);
  border: 0;
}
.pay > ul {
  list-style: none;
  display: flex;
}
.pay > ul > li {
  margin-right: 30px;
  margin-left: 30px;
}
.serve > ul {
  list-style: none;
  display: flex;
  padding: 0;
}
.serve > ul > li {
  margin-right: 30px;
  margin-left: 30px;
}
.recently {
  border: 1px solid rgb(168, 168, 168);
}
.recently > .rec-txt > a {
  font-size: 14px;
  margin-left: 140px;
}
.recently > .rec-txt > span {
  margin-left: 10px;
}
.recently > ul > li > h6 {
  font-size: 12px;
}
.recently > ul > li > h5 {
  font-size: 14px;
  color: red;
}
.recently > .rec-txt {
  height: 48px;
  line-height: 48px;
  background-color: rgb(221, 219, 219);
}
.recently > ul {
  list-style: none;
  margin-top: 30px;
}
.recently > ul > li > img {
  width: 170px;
}
.evaluate > ul {
  list-style: none;
  display: flex;
  padding-left: 0;
}
.evaluate {
  height: 48px;
  line-height: 48px;
  background-color: rgb(221, 219, 219);
  border-bottom: 1px solid rgb(187, 186, 186);
}
.evaluate > ul > li {
  border-right: 1px solid rgb(187, 186, 186);
  text-align: center;
  width: 150px;
  margin-left: 0;
}
.details-text {
  text-align: center;
}
.details-text > img {
  width: 750px;
}
.warranty > .delivery > dl > dd {
  display: flex;
  margin-bottom: 30px;
}
.warranty > .delivery > dl > dd > div:nth-child(2) {
  text-align: left;
  margin-left: 30px;
}
.warranty > .delivery > dl > dd > div > h4 {
  color: red;
  font-size: 16px;
  font-weight: 700;
}
.warranty > .delivery > dl > dd > div > span {
  font-size: 12px;
}
.like > .like-tit > h4 {
  color: rgb(158, 156, 156);
  margin-bottom: 30px;
}
.like > .like-img > div > img {
  width: 180px;
}
.like > .like-img {
  display: flex;
  justify-content: space-between;
}
.like > .like-img > div > p {
  font-size: 12px;
}
.like > .like-img > div > h4 {
  font-size: 16px;
  color: red;
}
.xz-lr>span{
            padding:20px 10px;
            background-color:#ff754d ;
        }
</style>

