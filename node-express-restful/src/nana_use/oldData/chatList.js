// 引入套件
const express = require("express"); //EXPRESS(建立路由使用)
const chatList = express.Router();
const bluebird = require("bluebird"); //青鳥
const _ = require("lodash"); //loadsh,處理數據的各種方法


const mysql = require("mysql");
// 設定資料庫連線
const db = mysql.createConnection({
  host: 'localhost',
  user: "root",
  password: "root",
  database: "pbook"
});
db.connect(); //資料庫連線

bluebird.promisifyAll(db);


// nana的聊天室使用(chatList,最新且不重複)
var mapResult = [];
chatList
  .route("/chatList")
  .get(function (req, res) {
    // console.log("session", req.session);

    console.log("nana", req.session.memberData.memberId);

    if (req.session.memberData.memberId === undefined) {

      res.send("找不到session.memberId");
    } else {
      console.log("type", typeof (req.session.memberData.memberId));

      db.queryAsync(
        `SELECT mb_chat.*,MR_number,MR_name,MR_pic FROM mb_chat LEFT JOIN mr_information ON MR_number = myTo OR MR_number = myFrom WHERE myFrom = "${req.session.memberData.memberId}" OR myTo = "${req.session.memberData.memberId}" ORDER BY created_at ASC`
      )
        .then(results => {
          console.log(1);

          // 一開始拿的資料,MR_number有塞我的跟對方的,為了讓MR_number是塞對方的資料,所以要先篩選一次
          var Without_MY_MR_number = [];
          results.forEach(function (value, index) {
            if (value.MR_number !== req.session.memberData.memberId) {
              Without_MY_MR_number.push(value);
            }
          });

          console.log(Without_MY_MR_number);

          // 去除重複的chat_id(因為同樣的兩位只需開一個對話框)
          var myResult = {};
          var finalResult = [];
          for (var i = 0; i < Without_MY_MR_number.length; i++) {
            myResult[Without_MY_MR_number[i].chat_id] = Without_MY_MR_number[i];
            //Without_MY_MR_number[i].chat_id不能重复,達到去重效果,這裡必須知道"chat_id"或是其他键名
          }

          var item = [];
          //现在result内部都是不重复的对象了，只需要将其键值取出来转为数组即可
          for (item in myResult) {
            finalResult.push(myResult[item]);
          }

          mapResult = finalResult;

          return db.queryAsync(
            `SELECT * FROM mb_chat WHERE myTo = "${req.session.memberData.memberId}" AND myRead = 0`
          );
        })
        .then(results => {
          console.log(2);
          mapResult.forEach(function (value, index) {
            value.total = 0;
            for (var i = 0; i < results.length; i++) {
              if (value.MR_number === results[i].myFrom) {
                value.total++;
              }
            }
          });


          console.log('final', req.session.memberData.memberId);
          console.log('final', req.headers.cookie);
          console.log('final', mapResult);

          res.json(mapResult);
        })
        .catch(error => {
          res.send("404-找不到資料");
          console.log('chatlist', error);
        });

    }

  });
module.exports = chatList;

