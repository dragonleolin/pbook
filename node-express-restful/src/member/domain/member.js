import encryption from '../models/encryption'
import db from '../db/database'

class Member{
    constructor(name, email, password,nickname, birthday, mobile, address, number){
        this.MR_name = name
        this.MR_email = email
        // this.MR_password = encryption(password)
        this.MR_password = password
    }

    //進行加密
    

    //判斷email格式
    checkEmail(email) {
        const re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        const result = re.test(email);
        return result;
    }

    queryEmail(){
        let sql = `SELECT MR_email FROM mr_information WHERE MR_email = '${this.MR_email}'`
        return sql
    }

    getMemberInfo(MR_number){
        let sql = `SELECT * FROM mr_information WHERE MR_number = '${MR_number}'`
        return sql
    }
    
    getAddMemberSql(new_number){
        //進行加密
        // this.MR_password = encryption(this.MR_password)
        //塞入資料
        let sql = `INSERT INTO mr_information(MR_name, MR_number , MR_email, MR_password, MR_personLevel, MR_createdDate) 
                        VALUES('${this.MR_name}', '${new_number}', '${this.MR_email}', '${this.MR_password}', 1, now()) `
                        
        return sql
    }

    //修改資料
    modifyMemberInfoSql(number, email, name, nickname, birthday, mobile, address){
        // console.log(name,
        //     email,
        //     nickname,
        //     birthday ,
        //     mobile,
        //     address,
        //     number,)
        
        let sql = `UPDATE mr_information SET MR_email = '${email}',MR_name = '${name}', MR_nickname = '${nickname}',MR_birthday = '${birthday}',MR_mobile = '${mobile}',MR_address = '${address}' WHERE MR_number = '${number}' `
        return sql
    }
    
}

export default Member