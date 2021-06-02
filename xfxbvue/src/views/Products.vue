<template>
   <div class="container">
     <div class="content-right col-lg-12 col-md-9 col-sm-12 p-0">
            <div class="right-1">
                <div class="right-1-h">
                    <strong>幸福西饼蛋糕</strong>
                </div>
                <div class="right-1-b">
                    <div class="img d-inline-block"> 
                         <img src="/img/content/logo.jpg" alt=""> 
                    </div>
                <div class="wenzi d-inline-block">
                    <p class="">幸福西饼2008年创立于深圳，是集蛋糕、下午茶等烘焙食品的研发、 生产、销售于一体，始终坚持“新鲜好味，
                        幸福心选”“百分百新鲜现做”的国内知名O2O电商蛋糕品牌。</p> 
                          <span class="span1" >幸福西饼蛋糕配送城市：北京、上海、广州、深圳、天津、重庆、南京、长沙。</span>
                          <span class="span2">市区免费配送，配送范围见商品详情。</span>
                </div>

                </div>
            </div>
           <div class="right-2">
               <ul class="list-unstyled d-flex">
                   <li class=""><a href="#">综合</a></li>
                   <li><a href="#" style="color:#fe7a24">销量</a></li>
                   <li><a href="#" style="color:#fe7a24">价格</a></li>
                   <li><a href="#" style="color:#fe7a24">最新</a></li>
               </ul>
           </div> 
           <div class="right-3">
               <div class="row">
                <div class="card col-lg-3 col-md-4 col-sm-12" v-for="(p,i) in  other" :key="i">
                   <img :src="p.pic" alt="" class="card-img-top" >
                    <div class="card-body">
                        <p class="dec" style="white-space: nowrap; overflow: hidden;text-overflow: ellipsis;">
                        <router-link :to="`/details:${p.href.split('=')[1]}`" >{{p.title}}-{{p.details}}</router-link></p>
                        <p class="price">￥{{p.price}}</p>
                        <div class="jg mb-1">
                            <a href="#"><span class="ico-heart d-inline-block"></span>收藏</a>
                            <a href="#" style="color:black"><span class="ico-cart1 d-inline-block"></span>购物车</a>
                        </div>
                    </div>
                </div>
               </div>
               </div>
            <div class="right-4 d-flex justify-content-between">
                <div class="page-l">
                 1/1共17件商品   
                </div>
                <div aria-label="Page navigation example page-r">
                    <ul class="pagination pt-4">
                      <li class="page-item"><a class="page-link" href="#" style="color:#fe7a24">上一页</a></li>
                      <li v-for="i of pcount" :key="i" class="page-item page-2" ><a v-text="i" class="page-link" href="#" style="color:#fe7a24"></a></li>
                      <!-- <li class="page-item page-2"><a class="page-link" href="#" style="color:#fe7a24">2</a></li>
                      <li class="page-item page-2"><a class="page-link" href="#" style="color:#fe7a24">3</a></li> -->
                      <li class="page-item"><a class="page-link" href="#" style="color:#fe7a24">下一页</a></li>
                    </ul>
                </div>
            </div>
           </div>
           </div>
</template>
<script>
export default {
  // props:["kw"],
data(){
  return{
     other:[],
     pcount:""
  }
},

   mounted(){
       
        // console.log(this.$router.history.current.path);
       this.axios.get(`/product`,{
           params:{
               kw:this.$router.history.current.path.split(":")[1],
            },
            headers:{Accept:'/'}
       }).then(result=>{
           console.log(result.data);
             this.other=result.data;
            
       })
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
<style scoped>

 .content-right {
    width: 100%;
  }
.content-right .right-1 {
    width: 100%;
  }
  .content-right .right-1 .right-1-h {
    height: 32px;
    background-color: #ffe7e8;
    color: #737373;
  }
 .content-right .right-1 .right-1-h strong {
    font-size: 14px;
    margin-left: 10px;
  }
  .content-right .right-1 .right-1-b {
    height: 96px;
    width: 100%;
    background-color: #ffe7e8;
    border: 1px solid #ffe7e8;
  }
 .content-right .right-1 .right-1-b .img {
    margin-top: 10px;
    width: 130px;
    display: inline-block;
  }
   .content-right .right-1 .right-1-b .img img {
    margin-top: -80px;
    margin-left: 10px;
  }
  .content-right .right-1 .right-1-b .wenzi {
    width: 80%;
  }
.content-right .right-1 .right-1-b .wenzi p {
    margin-left: 20px;
    color: #737373;
    font-size: 12px;
  }
  .content-right .right-1 .right-1-b .wenzi .span1 {
    color: #fe7a24 !important;
    font-size: 12px;
    margin-left: 20px;
  }
 .content-right .right-1 .right-1-b .wenzi .span2 {
    color: #737373;
    font-size: 12px;
  }
 .content-right .right-2 {
    margin-top: 10px;
    margin-bottom: 10px;
    background-color: #f2f2f2;
  }
  .content-right .right-2 ul > li:nth-child(1) a {
    color: #fe7a24 !important;
    font-size: 14px;
  }
 .content-right .right-2 ul li {
    margin-left: 20px;
    color: #737373;
    font-size: 14px;
  }
.content-right .right-3 .card {
    border: 0;
  }
  .content-right .right-3 .card img {
    margin-top: 5px;
  }
  .content-right .right-3 .card .card-body .dec {
    color: #737373;
    font-size: 14px;
  }
  .content-right .right-3 .card .card-body .dec a {
    color: #737373;
    font-size: 14px;
  }
  .content-right .right-3 .card .card-body .price {
    color: #737373;
    font-weight: 600;
    color: #fe7a24;
    font-size: 14px;
  }
 .content-right .right-3 .card .card-body .jg {
    display: flex;
    justify-content: space-between;
    border: 1px solid #f2f2f2;
    width: 100%;
  }
 .content-right .right-3 .card .card-body .jg a {
    margin-right: 3px;
    color: #737373;
    font-size: 12px;
  }
  .content-right .right-3 .card .card-body .jg a span {
    width: 16px;
    height: 16px;
    margin-right: 5px;
  }
  .content-right .right-3 .card:hover {
    border: 1px solid #f2f2f2;
  }
  .content-right .right-4 {
    height: 100px;
    width: 100%;
    border-top: 1px solid #f2f2f2;
    border-bottom: 1px solid #f2f2f2;
    margin-top: 20px;
  }
  .content-right .right-4 .page-l {
    line-height: 100px;
    font-size: 14px;
    color: #737373;
    display: inline-block;
  }
 .content-right .right-4 .page-r {
    height: 30px;
    margin-top: 20px;
    display: inline-block;
  }
 .content-right .right-4 .page-r ul {
    margin-top: 31px !important;
  }
   .content-right .right-4 .page-r ul .page-2 {
    background-color: #fe7a24 !important;
  }
  
</style>