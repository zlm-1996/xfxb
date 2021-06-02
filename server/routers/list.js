const express=require('express');
const listRouter=express.Router();
const bodyParser=require('body-parser');
const pool=require('../pool.js');
listRouter.get('/list', (req, res) => {
  var sql = "select * from index_product";
  pool.query(sql, (err, result) => {
    if (err) throw err;
     res.setHeader('Access-Control-Allow-Origin', '*');
    res.json(result);
  })
  
});
// 1、轮播图
listRouter.get('/banner', (req, res) => {
  var sql = "select * from banner";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.json(result)
  })
});
module.exports=listRouter;