const express=require('express');
const detailRouter=express.Router();
const bodyParser=require('body-parser');
const pool=require('../pool.js');
// 详情
detailRouter.get('/details:lid', (req, res) => {
  res.setHeader('Access-Control-Allow-Origin', '*');
   let lid=req.params.lid;
  // let lid = req.query.lid;
  console.log(lid);
  var sql = "select * from laptop where lid=?";
  pool.query(sql, [lid], (err, result) => {
    if (err) throw err;
    res.json({ results: result })
  })
});
module.exports=detailRouter;