<template>
 <div  class=" heade">
  <div class="site-nav p-0">
        <div class="container p-0">
            <div class="row z-nav ">
       <ul class="d-flex list-unstyled col-lg-12 col-md-12 col-sm-12 z-nav-first ">
          <li ><a href="#"><span class="ico ico-star ml-0 mr-0"></span>收藏花礼网（hua.com)</a></li>
          <li class="nav-weixin"><a href="#"><span class="ico ico-weixin"></span>关注微信</a>
          </li>
          <li class="nav-hualiwang"><span class="ico ico-mobile"></span><a href="#">花礼网app</a>
            
         </li>
          <li class="ml-lg-4"><router-link :to="`/login`">你好，请登录</router-link></li>
             <li><router-link :to="`/reg`">注册</router-link></li>
             <li>|</li>
             <li><a href="#">订单查询</a></li>
             <li>|</li>
             <li><a href="#">我的花礼</a></li>
             <li>|</li>
             <li class="nav-server"><a href="#">客户服务</a>
            </li>
            <li>|</li>
            <li><span class=" ico ico-cart"></span><a href="#">购物车</a></li>
            <li>|</li>
            <li><a href="#">幸福西饼蛋糕订购</a></li> 
       </ul>  
        </div>
    </div>
</div>
<div class="nav z-nav1 p-0">
    <div class="container p-0">
        <div class="row z-nav-l">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <h2><router-link :to="`/`" style="color:#fe7a24">Hua.com花礼网</router-link></h2>
            </div>
            <div class="col-lg-4 col-lg-4 col-md-4 col-sm-6 z-nav-c ">
    
             <div class="search " >
                <input type="text" placeholder="商品关键词" ml-0 v-model="kw" @keydown.13="search">
                <button @click="search">搜索</button>
            </div>
                <ul class="list-unstyled d-flex">
                  <li><a href="#">元祖蛋糕</a></li>
                  <li>|</li>
                  <li><a href="#">幸福西饼蛋糕</a></li>
                  <li>|</li>
                  <li><a href="#">生日蛋糕</a></li>
                </ul>
            </div>
            <div class="col-lg-4 col-lg-4 col-md-4 col-sm-0 z-nav-r">
                <ul class="list-unstyled d-flex">
                    <li><span class="ico ico-phone"></span>400-889-8188</li>
                    <li>|</li>
                    <li><a href="#"><span class="ico ico-headset"></span>在线客服</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="nav z-nav2">
    <div class="container p-0">
        <div class="row col-12 z-nav-3">
            <div class=" categorys dropdown  z-nav-3-first col-lg-2 col-md-2  ">
                <h3 class="categorys-title" data-hover="dropdown" data-delay="0"><a href="#">全部商品导航</a></h3>
                <div class="product-list dropdown-menu dropdown-cate  ">
                    <h4>鲜花</h4>
                    <ul class=" list-unstyled d-flex cate-list list-inline ">
                        <li class=""><a href="#">爱情鲜花</a></li>
                        <li class=""><a href="#">生日鲜花</a></li>
                        <li class=""><a href="#">友情鲜花</a></li>
                        <li class=""><a href="#">问候长辈</a></li>
                        <li class=""><a href="#">祝贺鲜花</a></li>
                        <li class=""><a href="#">婚庆鲜花</a></li>
                        <li class=""><a href="#">探病慰问</a></li>
                        <li class=""><a href="#">道歉鲜花</a></li>
                        <li class=""><a href="#">开业花篮</a></li>
                     </ul>
                     <hr>
                     <h4>永生花</h4>
                     <ul class=" list-unstyled d-flex cate-list list-inline">
                         <li class=""><a href="#">经典花盒</a></li>
                         <li class=""><a href="#">巨型玫瑰</a></li>
                         <li class=""><a href="#">薰衣草</a></li>
                         <li class=""><a href="#">永生瓶花</a></li>
                         <li class=""><a href="#">特色永生花</a></li>
            
                      </ul> 
                      <hr>
                      <h4>礼品</h4>
                      <ul class=" list-unstyled d-flex cate-list list-inline">
                          <li class=""><a href="#">泰国保鲜花</a></li>
                          <li class=""><a href="#">音乐盒</a></li>
                          <li class=""><a href="#">水晶内雕</a></li>
                          <li class=""><a href="#">金箔花</a></li>
                          <li class=""><a href="#">化妆镜</a></li>
                          <li class=""><a href="#">香薰系列</a></li>
                          <li class=""><a href="#">音乐睡枕</a></li>
                          <li class=""><a href="#">花瓶/相框</a></li>
                          <li class=""><a href="#">卡通花束</a></li>
                          <li class=""><a href="#">品牌公仔</a></li>
                          <li class=""><a href="#">首饰</a></li>
                          <li class=""><a href="#">Giftstalk精选</a></li>
                          <li class=""><a href="#">创意部礼品</a></li>
                          <li class=""><a href="#">礼品卡</a></li>
                          <li class=""><a href="#">多肉植物盆栽</a></li>
                       </ul> 
                       <hr> 
                       <h4>绿植</h4>
                       <ul class=" list-unstyled d-flex cate-list list-inline">
                         <li class=""><a href="#">绿色植物</a></li>
                         <li class=""><a href="#">盆栽花卉</a></li>
                      </ul> 
                      <hr>
                
                </div>
              
            </div>
        <ul class="d-flex list-unstyled col-lg-10 col-md-10 col-sm-9 z-nav-3-after">
            <li> <h3><router-link :to="`/`">首页</router-link></h3></li>
              <div class=" categorys dropdown  z-nav-3-first col-lg-2 col-md-2  ">
                <h3 class="categorys-title" data-hover="dropdown" data-delay="0"><a href="#">鲜花</a></h3>
                <div class="product-list dropdown-menu dropdown-cate">
                    <ul class=" list-unstyled d-flex cate-list list-inline">
                        <li class=""><a href="#">爱情鲜花</a></li>
                        <li class=""><a href="#">生日鲜花</a></li>
                        <li class=""><a href="#">友情鲜花</a></li>
                        <li class=""><a href="#">问候长辈</a></li>
                        <li class=""><a href="#">祝贺鲜花</a></li>
                        <li class=""><a href="#">婚庆鲜花</a></li>
                        <li class=""><a href="#">探病慰问</a></li>
                        <li class=""><a href="#">道歉鲜花</a></li>
                        <li class=""><a href="#">开业花篮</a></li>
                     </ul>
                    
                </div>
               
            </div>
            <div class=" categorys dropdown  z-nav-3-first col-lg-2 col-md-2  ">
                <h3 class="categorys-title" data-hover="dropdown" data-delay="0"><a href="#">永生花</a></h3>
                <div class="product-list dropdown-menu dropdown-cate">
                    <ul class=" list-unstyled d-flex cate-list list-inline">
                       <li class=""><a href="#">经典花盒</a></li>
                         <li class=""><a href="#">巨型玫瑰</a></li>
                         <li class=""><a href="#">薰衣草</a></li>
                         <li class=""><a href="#">永生瓶花</a></li>
                         <li class=""><a href="#">特色永生花</a></li>
                     </ul>
                </div>
               
            </div>
            <!-- <li><h3><a href="#">蛋糕</a></h3></li> -->
            <div class=" categorys dropdown  z-nav-3-first col-lg-2 col-md-2  ">
                <h3 class="categorys-title" data-hover="dropdown" data-delay="0"><a href="#">礼品</a></h3>
                <div class="product-list dropdown-menu dropdown-cate ">
                    <ul class=" list-unstyled d-flex cate-list list-inline">
                       <li class=""><a href="#">泰国保鲜花</a></li>
                          <li class=""><a href="#">音乐盒</a></li>
                          <li class=""><a href="#">水晶内雕</a></li>
                          <li class=""><a href="#">金箔花</a></li>
                          <li class=""><a href="#">化妆镜</a></li>
                          <li class=""><a href="#">香薰系列</a></li>
                          <li class=""><a href="#">音乐睡枕</a></li>
                          <li class=""><a href="#">花瓶/相框</a></li>
                          <li class=""><a href="#">卡通花束</a></li>
                          <li class=""><a href="#">品牌公仔</a></li>
                          <li class=""><a href="#">首饰</a></li>
                          <li class=""><a href="#">Giftstalk精选</a></li>
                          <li class=""><a href="#">创意部礼品</a></li>
                          <li class=""><a href="#">礼品卡</a></li>
                          <li class=""><a href="#">多肉植物盆栽</a></li>
                     </ul>
                </div>
               
            </div>
            <!-- <li><h3><a href="#">巧克力</a></h3></li>
            <li><h3><a href="#">花语大全</a></h3></li>
            <li><h3><a href="#">设计师臻选鲜花</a></h3></li>
            <li><h3><a href="#">母亲节鲜花礼物</a></h3></li> -->
        </ul>
    </div>
    </div>
</div>
</div>
</template>
<script>
export default {
  data(){
    return{
      kw:""
    }
  },
  methods:{
    search(){
      this.$router.push("/product:"+this.kw)
      // this.$router.push("/product")
        // console.log(`查询${this.kw}相关的内容`);
      },
       created(){
         this.kw=this.$router.params.kw;
       },
     
  },
   watch:{
        $router(){
          // this.kw=this.$router.params.kw;
          
       this.axios.get(`/product`,{
           params:{
               kw:this.$router.history.current.path.split(":")[1],
            },
            headers:{Accept:'/'}
       }).then(result=>{
           console.log(result.data);
             this.other=result.data;
            
       });
     }
        
      },

}
</script>

<style >
.categorys dropdown:hover .list-unstyled{
  display: block;
}
 .site-nav {
    background-color: #f2f2f2;
    height: 35px;
  }
  .site-nav .z-nav ul {
    margin-top: 4px;
  }
  .site-nav .z-nav ul li {
    height: 35px;
    margin: 0;
    color: #737373;
    font-size: 14px;
    text-align: center;
    margin-right: 6px;
  }
  .site-nav .z-nav ul li a {
    text-decoration: none;
    color: #737373;
  }
  .site-nav .z-nav ul li a:hover {
    color: #fe7a24;
  }
  .site-nav .z-nav .z-nav-first .nav-weixin {
    position: relative;
  }
  .site-nav .z-nav .z-nav-first .nav-weixin .weixin {
    width: 100px;
    height: 100px;
    position: absolute;
    top: 40px;
    left: 0;
  }
  .site-nav .z-nav .z-nav-first .nav-weixin .weixin img {
    width: 80px;
  }
  .site-nav .z-nav .z-nav-first .nav-weixin .weixin div {
    font-size: 12px;
  }
  .site-nav .z-nav .z-nav-first .nav-hualiwang {
    position: relative;
  }
  .site-nav .z-nav .z-nav-first .nav-hualiwang .hualiwang {
    width: 100px;
    height: 100px;
    position: absolute;
    top: 40px;
    left: 0;
  }
  .site-nav .z-nav .z-nav-first .nav-hualiwang .hualiwang img {
    width: 80px;
  }
  .site-nav .z-nav .z-nav-first .nav-hualiwang .hualiwang div {
    font-size: 12px;
  }
  .site-nav .z-nav-after {
    margin-top: 10px;
  }
  .site-nav .z-nav-after li:nth-child(1) {
    margin-left: 30px;
  }
  .site-nav .z-nav-after .nav-server {
    position: relative;
  }
  .site-nav .z-nav-after .nav-server ol {
    position: absolute;
    top: 35px;
    left: 0px;
    background-color: #fff;
    display: none;
  }
  .site-nav .z-nav-after .nav-server ol li {
    margin: 0;
    font-size: 10px;
    color: #737373;
  }
  .z-nav1 {
    margin-top: 10px;
  }
  .z-nav1 a {
    color: #737373;
  }
  .z-nav1 a:hover {
    color: #fe7a24;
  }
  .z-nav1 .z-nav-l h2 {
    color: #fe7a24;
  }
  .z-nav1 .z-nav-c .search {
     width: 268px; 
    border: 1px solid #fe7a24;
    border-right: none;
    box-sizing: border-box;
    margin-right: 0;
  }
  .z-nav1 .z-nav-c .search input {
    /* margin-left: 1px; */
    padding-left: 0px;
    border: none;
  }
  .z-nav1 .z-nav-c .search button {
    width: 65px;
    height: 30px;
    background-color: #fe7a24;
    color: #fff;
    border-style: none;
    margin-right: 0;
  }
  .z-nav1 .z-nav-c ul li {
    font-size: 14px;
    margin-right: 3px;
  }
  .z-nav1 .z-nav-r ul {
    text-align: center;
  }
  .z-nav1 .z-nav-r ul li {
    margin-right: 5px;
  }
  .z-nav2 {
    width: 100%;
    background-color: #fe7a24;
  }
  .z-nav-3 {
    height: 40px;
    background-color: #fe7a24;
    color: #fff;
  }
  .z-nav-3 ul li a {
    text-decoration: none;
    color: #fff;
  }
  .z-nav-3 {
    text-align: center;
  }
  .z-nav-3 .z-nav-3-first {
    padding: 0;
    margin: 0;
    position: relative;
  }
  .z-nav-3 .z-nav-3-first h3 {
    margin-top: 10px;
    font-size: 15px;
    font-weight: 600;
    position: relative;
  }
  .z-nav-3 .z-nav-3-first > h3::before {
    content: "";
    display: none;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.1);
  }
  .z-nav-3 .z-nav-3-first > h3:hover::before {
    display: block;
  }
  .z-nav-3 .z-nav-3-first > h3:hover ~ .product-list {
    display: block;
  }
  .z-nav-3 .z-nav-3-first a {
    text-decoration: none;
    color: #fff !important;
  }
  .z-nav-3 .z-nav-3-first .product-list {
    width: 110%;
    position: absolute;
    top: 40px;
    left: 0;
    border-right: 1px solid #fe7a24;
    border-left: 1px solid #fe7a24;
    border-bottom: 2px solid #fe7a24;
    background-color: #fff;
  }
  .z-nav-3 .z-nav-3-first .product-list h4 {
    text-align: left;
    color: #fe7a24;
    font-size: 14px;
    font-weight: 600;
    margin-left: 5px;
  }
  .z-nav-3 .z-nav-3-first .product-list ul {
    flex-wrap: wrap;
  }
  .z-nav-3 .z-nav-3-first .product-list ul li {
    margin-right: 10px;
    margin-left: 5px;
  }
  .z-nav-3 .z-nav-3-first .product-list ul li a {
    color: #737373 !important;
    font-size: 12px;
  }
  .z-nav-3 .z-nav-3-after {
    text-align: center;
  }
  .z-nav-3 .z-nav-3-after li {
    margin-top: 10px;
    text-align: center;
    margin-right: 20px;
    position: relative;
  }
  .z-nav-3 .z-nav-3-after li h3 {
    font-size: 15px;
    font-weight: 600;
  }
  .z-nav-3 .z-nav-3-after li > h3::after {
    content: "";
    display: none;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.1);
  }
  .z-nav-3 .z-nav-3-after li > h3:hover::after {
    display: block;
  }
      .ico-star{
           display: inline-block;
           width: 20px;
           height: 20px;
           background-color:#f2f2f2;
           background-image: url("/img/header/common_z.png");
           background-position: 0 -318px;
           margin-left: 0;
           margin-right: 3px;
     } 
     .ico-weixin{
           display: inline-block;
           width: 20px;
           height: 20px;
           background-color:#f2f2f2;
           background-image: url("/img/header/common_z.png");
           background-position: -374px -131px;
           margin-left: 0;
           margin-right: 3px;
     } 
     .ico-mobile{
           display: inline-block;
           width: 20px;
           height: 20px;
           background-color:#f2f2f2;
           background-image: url("/img/header/common_z.png");
           background-position: -294px -171px;
           margin-left: 0;
           margin-right: 3px;
     } 
     .ico-cart{
           display: inline-block;
           width: 20px;
           height: 20px;
           background-color:#f2f2f2;
           background-image: url("/img/header/common_z.png");
           background-position:-340px -284px;
           margin-left: 0;
           margin-right: 3px;
     } 
     .ico-phone{
           display: inline-block;
           width: 27px;
           height: 27px;
           background-color:#fff;
           background-image: url("/img/header/common_z.png");
           background-position:-380px -46px;
           margin-left: 0;
           margin-right: 3px;
     } 
     .ico-headset{
           display: inline-block;
           width: 27px;
           height: 20px;
           background-color:#fff;
           background-image: url("/img/header/common_z.png");
           background-position:-294px -131px;
           margin-right: 3px;
           margin-top: 3px;
     } 
     .ico-city{
           display: inline-block;
           width: 27px;
           height: 40px;
           background-color:#fff;
           background-image: url("/img/header/common_z.png");
           background-position:-150px -134px;
           margin-right: 3px;
           margin-top: 3px;
     } 
     .ico-brand{
           display: inline-block;
           width: 27px;
           height: 40px;
           background-color:#fff;
           background-image: url("/img/header/common_z.png");
           background-position:-244px -150px;
           margin-right: 3px;
           margin-top: 3px;
     } 
     .ico-fenlei{
           display: inline-block;
           width: 27px;
           height: 40px;
           background-color:#fff;
           background-image: url("/img/header/common_z.png");
           background-position:-80px -234px;
           margin-right: 3px;
           margin-top: 3px;
     } 
     .ico-heart{
         background-image: url("/img/content/shoucang.png");
     }
     .ico-cart1{
         background-image: url("/img/content/shopcar.png");
     } 
</style>