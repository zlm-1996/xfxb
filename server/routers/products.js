const express=require('express');
const productsRouter=express.Router();
const bodyParser=require('body-parser');
const pool=require('../pool.js');

productsRouter.get('/',(req, res) => {
//    var output={
//        count:0,
//        pageSize:4,
//        PageCount:0,
//        pno:req.query.pno||0,
//        data:[]
//    };
     var kw=req.query.kw;
    console.log(kw);
     var title="%"+kw+"%";
     var details="%"+kw+"%";
    // var lcategory="%"+req.params.name+"%";
 // var title="%"+req.params.name+"%";
    let sql='SELECT * FROM index_product WHERE title like ? or details like ? ';
        pool.query(sql,[title,details],(err,result)=>{
            res.setHeader('Access-Control-Allow-Origin', '*');
            if(result.length>0){
                console.log(result);
                res.send(result);
            }else{
                res.send({code:201,msg:'查询失败'});
            }
        })
    })
    
module.exports=productsRouter;
