
const express=require('express');
const userRouter=express.Router();
const bodyParser=require('body-parser');
const pool=require('../pool.js');
//用户注册的接口
userRouter.post('/reg',(req, res) => {
  
  //接收用户以post方式提交数据
  let phone = req.body.phone;
  let password = req.body.password;
  res.setHeader('Access-Control-Allow-Origin', '*');
  console.log(req.body);
  let sql = 'SELECT uid FROM user WHERE phone=?';
 pool.query(sql, [phone], (error, results) => {
   
    if (error) throw error;
     if (results.length == 0) {
//       //将相关的信息写入到user数据表
   sql = 'INSERT INTO user( phone,password) VALUES(?,?)';
      pool.query(sql, [phone, password, ], (error, results) => {
        res.setHeader('Access-Control-Allow-Origin', '*');
        //  res.setHeader('Access-Control-Allow-Origin', '*');
     if (error) throw error;
        res.json({ message: '注册成功！', code: 1 });
      
        //现在可以完整将数据插入数据库了
       });
    } else {
      //产生合理的错误信息到客户端
      res.json({ message: '注册失败', code: 0 });
    }
   })

});

//用户登录接口
userRouter.post('/login', (req, res) => {
  //获取用户输入的用户名和密码信息
  let phone = req.body.phone;
  let password = req.body.password;
  //现在要以输入的用户名和密码为条件进行查找
  let sql = 'SELECT phone,password FROM user WHERE phone=? AND password=?';
  pool.query(sql, [phone, password], (error, results) => {
    if (error) throw error;
    //如果找到，则代表用户登录成功
    if (results.length == 1) {
      res.json({ message: '登陆成功', code: 1, info: results[0] })
    } else {//否则代表用户登录失败
      res.json({ message: '登录失败', code: 0 })
    }
  })
});
module.exports=userRouter;


