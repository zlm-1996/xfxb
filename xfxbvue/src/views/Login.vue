<template>
     <section class="login-wrapper">i
      <div class="container">
         <div class="login-box">
            <ul class="login-tabs list-unstyled d-flex justify-content-between">
                <li class="register-byphone active">账号登陆</li>
                <li class="register-bymail">微信扫码登录</li>
            </ul> 
            <div id="form1">
                <div class="tel-box">
                    <div class="input-box">
                        <span class="ico-phone1"></span>
                        <input v-model="phone" id="phone" name="phone" class="account" type="text" placeholder="请输入手机/邮箱">
                    </div>

                </div>
                
         <div class="pwd-box pwd-box1">
            <div class="input-box">
                <span class="icon icon-unlocked"></span>
                <input v-model="pwd" id="phonePassWord" name="phonePassWord" class="pwd pwd-input" type="text" placeholder="请输入密码" onfocus="this.type='password'" autocomplete="off">
            </div>
          
        </div>
        <button @click="log()" class="form-btn login-btn" type="button" value="登录" >登录</button>
        </div>
        <div class="bottom-box">
            <ul class="other-login-ways list-unstyled d-flex ">
                <li class="login-way login-qq"><a href="#" style="font-size: 12px; color: #71797F"><i class="icon icon-QQ"></i><span>QQ</span></a></li>
                <li class="login-way login-ali"><a href="#" style="font-size: 12px; color: #71797F"><i class="icon icon-zhifubao"></i><span>支付宝</span></a></li>
                <li class="extra-r ml-4"><a href="#" style="font-size: 12px; color:#fe7a24;">登录账号<i class="icon icon-arrow-right-active"></i></a></li>
            </ul>
        </div>
        </div>
        </div>
    </section>
</template>
 <script>
 export default {
    data(){
        return{
           phone:"",
           pwd:"",
         
        }
    },
    methods :{
     log(){
      //  console.log(this.phone);
        this.axios.post(
          "/users/login",
          `phone=${this.phone}&&password=${this.pwd}`
        ).then(result=>{
          if(result.data.code==0){
            // 注册失败
            alert("提示信息","用户已经存在");
          }
          // 注册成功
          if(result.data.code==1){
            this.$router.push('/');
          }
       
      
     })  
     }
     }
    }
</script>
<style scoped>
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
    position: relative;
    top: 0px;
  }
  .site-nav .z-nav-after .nav-server ol li {
    margin: 0;
    font-size: 10px;
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
    width: 253px;
    border: 1px solid #fe7a24;
    border-right: none;
    box-sizing: border-box;
    margin-right: 0;
  }
  .z-nav1 .z-nav-c .search input {
    border: none;
  }
  .z-nav1 .z-nav-c .search button {
    width: 65px;
    height: 30px;
    background-color: #fe7a24;
    color: #fff;
    border-style: none;
    margin: 0;
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
  section .container .login-box {
    position: absolute;
    top: 60px;
    right: 220px;
    width: 360px;
    background-color: #fff;
    border-radius: 5px;
  }
  section .container .login-box ul {
    margin-left: 10px;
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
    text-align: center;
  }
  section .container .login-box ul li {
    margin-right: 15px;
    margin-top: 10px;
    font-size: 20px;
    font-weight: 500;
    color: #fe7a24;
  }
  section .container .login-box #form1 .tel-box {
    margin-top: 20px;
    margin-left: 10px;
    margin-right: 10px;
    height: 36px;
  }
  section .container .login-box #form1 .tel-box .input-box {
    position: relative;
    width: 100%;
    height: 36px;
    border: 1px solid #f2f2f2;
    border-radius: 2px;
  }
  section .container .login-box #form1 .tel-box .input-box input {
    width: 262px;
    height: 34px;
    padding: 7px 6px;
    vertical-align: top;
    font-size: 14px;
    line-height: 20px;
    color: #232628;
    outline: none;
    border: 0;
  }
  section .container .login-box #form1 .code-box {
    margin-left: 10px;
    margin-right: 10px;
    margin-top: 20px;
    height: 36px;
  }
  section .container .login-box #form1 .code-box .input-box {
    position: relative;
    width: 100%;
    height: 36px;
    border: 1px solid #f2f2f2;
    border-radius: 2px;
  }
  section .container .login-box #form1 .code-box .input-box input {
    width: 262px;
    height: 34px;
    padding: 7px 6px;
    vertical-align: top;
    font-size: 14px;
    line-height: 20px;
    color: #232628;
  }
  section .container .login-box #form1 .pwd-box {
    margin-left: 10px;
    margin-right: 10px;
    margin-top: 20px;
  }
  section .container .login-box #form1 .pwd-box .input-box {
    position: relative;
    width: 100%;
    height: 36px;
    border: 1px solid #f2f2f2;
    border-radius: 2px;
  }
  section .container .login-box #form1 .pwd-box .input-box input {
    width: 262px;
    height: 34px;
    padding: 7px 6px;
    vertical-align: top;
    font-size: 14px;
    line-height: 20px;
    color: #232628;
    outline: none;
    border: 0;
  }
  section .container .login-box #form1 .form-btn {
    margin-left: 10px;
    margin-top: 30px;
    background-color: #fe7a24;
    color: #fff;
    border: 0;
    width: 80%;
    height: 36px;
    border-radius: 24px;
    font-size: 16px;
  }
  section .container .login-box .buttom-box {
    margin-top: 20px;
    margin-left: 10px;
  }
  section .container .login-box .buttom-box ul {
    margin-top: 0px;
    padding: 0 8px;
    font-size: 0;
    max-height: 100%;
  }
  section .container .login-box .buttom-box ul li {
    vertical-align: center;
    display: inline-block;
    margin: 0 16px;
    text-align: center;
    line-height: 52px;
    height: 52px;
    font-size: 12px;
    color: #71797F;
  }
  section .container .login-box .buttom-box ul li a {
    font-size: 12px;
    color: #71797F;
  }
  section .container .login-box .buttom-box ul li a span {
    font-size: 12px;
    color: #71797F !important;
  }
   .ico-star{
           display: inline-block;
           width: 20px;
           height: 20px;
           background-color:#f2f2f2;
           background-image: url(/img/header/common_z.png);
           background-position: 0 -318px;
           margin-left: 0;
           margin-right: 3px;
     } 
     .ico-weixin{
           display: inline-block;
           width: 20px;
           height: 20px;
           background-color:#f2f2f2;
           background-image: url(/img/header/common_z.png);
           background-position: -374px -131px;
           margin-left: 0;
           margin-right: 3px;
     } 
     .ico-mobile{
           display: inline-block;
           width: 20px;
           height: 20px;
           background-color:#f2f2f2;
           background-image: url(/img/header/common_z.png);
           background-position: -294px -171px;
           margin-left: 0;
           margin-right: 3px;
     } 
     .ico-cart{
           display: inline-block;
           width: 20px;
           height: 20px;
           background-color:#f2f2f2;
           background-image: url(/img/header/common_z.png);
           background-position:-340px -284px;
           margin-left: 0;
           margin-right: 3px;
     } 
     .ico-phone{
           display: inline-block;
           width: 27px;
           height: 27px;
           background-color:#fff;
           background-image: url(/img/header/common_z.png);
           background-position:-380px -46px;
           margin-left: 0;
           margin-right: 3px;
     } 
     .ico-headset{
           display: inline-block;
           width: 27px;
           height: 20px;
           background-color:#fff;
           background-image: url(/img/header/common_z.png);
           background-position:-294px -131px;
           margin-right: 3px;
           margin-top: 3px;
     } 
     .ico-city{
           display: inline-block;
           width: 27px;
           height: 40px;
           background-color:#fff;
           background-image: url(/img/header/common_z.png);
           background-position:-150px -134px;
           margin-right: 3px;
           margin-top: 3px;
     } 
     .ico-brand{
           display: inline-block;
           width: 27px;
           height: 40px;
           background-color:#fff;
           background-image: url(/img/header/common_z.png);
           background-position:-244px -150px;
           margin-right: 3px;
           margin-top: 3px;
     } 
     .ico-fenlei{
           display: inline-block;
           width: 27px;
           height: 40px;
           background-color:#fff;
           background-image: url(/img/header/common_z.png);
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
   
    section{
        background-image: url("/img/login-bgimg/login_bg.jpg");
        width: 100%;
        height: 474px;
        background-size: cover;
        background-position: 50% 0;
        background-repeat: no-repeat;
        position: relative;
    }
    .ico-phone1{
    display: inline-block;
    width: 34px;
    height: 34px;
    background-image: url("/img/login-bgimg/pc_icon.png");
    background-repeat: no-repeat;
    background-position: -88px -24px
    }
    .icon-message{
    display: inline-block;
    width: 34px;
    height: 34px;
    background-image: url("/img/login-bgimg/pc_icon.png");
    background-repeat: no-repeat;
    background-position: 0 -24px;
    }
    .icon-unlocked{
    display: inline-block;
    width: 34px;
    height: 34px;
    background-image: url("/img/login-bgimg/pc_icon.png");
    background-repeat: no-repeat;
    background-position: -44px -24px;
    }
    .icon-QQ{
    display: inline-block;
    width: 20px;
    height: 20px;
    margin-top: 12px;
    margin-right: 6px;
    margin-left: 10px;
    background-image: url("/img/login-bgimg/pc_icon.png");
    background-repeat: no-repeat;
    vertical-align: top;
    background-position: -30px -94px;
}
.icon-zhifubao{
    display: inline-block;
    width: 20px;
    height: 20px;
    margin-top: 12px;
    margin-left: 10px;
    margin-right: 6px;
    background-image: url("/img/login-bgimg/pc_icon.png");
    background-repeat: no-repeat;
    vertical-align: top;
    background-position: -60px -94px;
}

.icon-arrow-right-active{
    display: inline-block;
    width: 20px;
    height: 20px;
    margin-top: 10px;
    margin-left: 6px;
    
    background-image: url("/img/login-bgimg/pc_icon.png");
    background-repeat: no-repeat;
    vertical-align: top;
    background-position: 0 -66px;
}
    
</style>