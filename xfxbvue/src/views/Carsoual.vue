<template>
<div>
  
  <!-- 轮播图 -->
 <div class="carousel slide" data-ride="carousel"  data-interval="1000" id="banner" >


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

</div>

</template>


<script>

export default {
    // props:["pid"],
  
}
    
   
</script>
<style scoped>
.xz-lr>span{
            padding:20px 10px;
            background-color:#ff754d ;
        }
</style>
