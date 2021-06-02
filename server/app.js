const express = require('express');
  const cors = require('cors');
const bodyParser = require('body-parser');
const userRouter=require('./routers/user.js');
const detailRouter=require('./routers/details.js');
const listRouter=require('./routers/list.js');
const productsRouter=require('./routers/products.js');
const pool=require('./pool.js');
const app=express();
app.listen(8081);
app.use(bodyParser.urlencoded({extended:true}
	//是否使用扩展的第三方模块qs查询字符串模块
	));
app.use(cors({origin:['http://localhost:8080'],
 credentials:true
}))
//应用路由器，添加前缀/v1/users，将路由器挂载到服务器
app.use('/users',userRouter);
app.use('/product',detailRouter);
app.use('/product',listRouter);
app.use('/product',productsRouter);
app.use('/public', express.static('./public'));
//错误处理中间件
//要拦截所有产生的错误
//错误处理中间件
app.use((err,req,res,next)=>{
	//err 接收的错误
	console.log(err);
	res.send({code:500,msg:"服务器端错误"});
});
 app.use(cors({origin:['http://localhost:8080'],
 credentials:true
}))