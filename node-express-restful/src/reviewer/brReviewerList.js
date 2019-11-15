const express = require('express');
const mysql = require('mysql');
const bluebird = require('bluebird');
const router = express.Router();

const db = mysql.createConnection({
    host: "192.168.27.186",
    user: "root",
    password: "root",
    database: "pbook"
})
db.connect()
bluebird.promisifyAll(db)

const perPage = 10
router.get('/:page?/:keyword?',(req,res)=>{
    const output = {};
    output.params = req.params
    console.log(req.params)
    output.perPage = perPage
    let page = req.params.page || 1
    
    let sql = 'SELECT * FROM `br_reviewerlist` LIMIT '+(page-1)*perPage+','+(perPage)
    db.queryAsync(sql,(error,results)=>{

        output.rows = results

        res.json(output)
    })
})

module.exports = router;