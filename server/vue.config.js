module.exports={
  devServer:{
      proxy:{
          '/':{
              target:`http:127.0.0.1:8081`,
              changeOrigin:true
          }
      }
  }  
}