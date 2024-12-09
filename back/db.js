const { Client } = require('pg')

const client = new Client({
    user: 'system',
    host: '8.140.51.45',
    database: 'test',
    password: 'Qweasd123.',
    port: 5432,
    ssl: false,
})

// 连接数据库
async function connectDb() {
    try {
        await client.connect();
        console.log('connected');
    } catch (err) {
        console.error('connection error', err.stack);
    }
}

// 建表函数
async function createTable() {
    const sql = `
        CREATE TABLE IF NOT EXISTS manager (
            MID varchar(11) PRIMARY KEY,
            name VARCHAR(20) NOT NULL,
            cipher VARCHAR(255) , -- 假设密码字段有足够的长度来存储加密后的密码
            gender varchar(1) CHECK (gender IN ('男', '女')),
            updatellmtime  DATETIME,
            updatellmcontent VARCHAR(255) -- 假设内容不超过255个字符，根据需要调整长度
        );
        CREATE TABLE IF NOT EXISTS Users (
            UID varchar(11) PRIMARY KEY,
            name VARCHAR(20) NOT NULL,
            cipher VARCHAR(255) NOT NULL, -- 假设密码字段有足够的长度来存储加密后的密码
            birthday DATE,
            gender CHAR(1) CHECK (gender IN ('男', '女')),
            lv INT,
            dialoguecreatetime DATETIME,
            dialoguecreatenum INT,
            MID varchar(11),
            FOREIGN KEY (MID) REFERENCES manager(MID) -- 假设有一个名为管理员表，其中包含MID作为主键
        );
        CREATE TABLE IF NOT EXISTS video_course (
            VID INT PRIMARY KEY,
            name VARCHAR(255) NOT NULL,
            videotype VARCHAR(255) NOT NULL,
            videotime INT NOT NULL,
            audittime DATETIME,
            auditresult VARCHAR(10) CHECK (auditresult IN ('合格', '不合格')),
            UID varchar(11) NOT NULL,
            MID varchar(11) NOT NULL,
            FOREIGN KEY (UID) REFERENCES Users(UID),
            FOREIGN KEY (MID) REFERENCES manager(MID)
        );
        CREATE TABLE IF NOT EXISTS test_review (
            TID INT PRIMARY KEY,
            testtypes VARCHAR(255) NOT NULL,
            tital VARCHAR(255) NOT NULL,
            answer VARCHAR(255) NOT NULL,
            analysis TEXT,
            audittime DATETIME,
            auditresult VARCHAR(10) CHECK (auditresult IN ('合格', '不合格')),
            UID varchar(11) NOT NULL,
            MID varchar(11) NOT NULL,
            FOREIGN KEY (UID) REFERENCES Users(UID),
            FOREIGN KEY (MID) REFERENCES manager(MID)
        );
        CREATE TABLE IF NOT EXISTS QAmodel (
            CID INT NOT NULL,--对话Cid
            RID INT NOT NULL,--记录Rid
            recordtype VARCHAR(255),
            recordcontent VARCHAR(255) NOT NULL,
            UID varchar(11) NOT NULL,
            MID varchar(11) NOT NULL,
            PRIMARY KEY (CID, RID),
            FOREIGN KEY (UID) REFERENCES Users(UID),
            FOREIGN KEY (MID) REFERENCES manager(MID)
        );
        CREATE TABLE IF NOT EXISTS video_study (
            VID INT NOT NULL,
            UID varchar(11) NOT NULL,
            progress float4,
            PRIMARY KEY (VID, UID),
            FOREIGN KEY (VID) REFERENCES video_course(VID),
            FOREIGN KEY (UID) REFERENCES Users(UID)
        );
        CREATE TABLE IF NOT EXISTS test_complate (
            TID INT NOT NULL,
            UID varchar(11) NOT NULL,
            progress float4,
            times int,
            score float4,
            PRIMARY KEY (TID, UID),
            FOREIGN KEY (TID) REFERENCES test_review(TID),
            FOREIGN KEY (UID) REFERENCES Users(UID)
        );
        CREATE TABLE IF NOT EXISTS manager_users (
            MID varchar(11) NOT NULL,
            UID varchar(11) NOT NULL,
            operatetimes datetime,
            operatecontent varchar(255),
            PRIMARY KEY (MID, UID),
            FOREIGN KEY (MID) REFERENCES manager(MID),
            FOREIGN KEY (UID) REFERENCES Users(UID)
        );
        
        
    `;

    try {
        await client.query(sql);
        console.log('Table created successfully');
    } catch (err) {
        console.error('Error creating table', err.stack);
    }
}


async function insertData(tableName, columns, values) {
    // 使用列名构建占位符字符串，例如：'$1,$2, $3'
    const placeholders = values.map((_, i) => `$${i + 1}`).join(', ');
    
    // 构建插入语句，例如：'INSERT INTO example_table (name, age) VALUES ($1,$2)'
    const sql = `INSERT INTO ${tableName} (${columns.join(', ')}) VALUES (${placeholders})`;
    try {
        // 执行插入操作
        await client.query(sql, values);
        console.log('Data inserted successfully');
    } catch (err) {
        // 如果发生错误，打印错误信息
        console.error('Error inserting data', err.stack);
    }
}
//调用方式：
//const tableName = 'users';
//const columns = ['username', 'email'];
//const values = ['newuser', 'newuser@example.com'];



// 查询数据函数
async function selectData(tableName, columns = ['*'], conditions = '', orderBy = '', having = '', limit = '') {
    // 构建列名部分，默认为 '*'
    const columnPart = columns.join(', ');

    // 构建完整的 SELECT 语句
    let sql = `SELECT ${columnPart} FROM ${tableName}`;

    // 如果有搜索条件，则添加 WHERE 子句
    if (conditions) {
        sql += ` WHERE ${conditions}`;
    }

    // 如果有排序要求，则添加 ORDER BY 子句
    if (orderBy) {
        sql += ` ORDER BY ${orderBy}`;
    }

    // 如果有限制要求，则添加 LIMIT 子句
    if (having) {
        sql += ` HAVING ${limit}`;
    }

    if (limit) {
        sql += ` LIMIT ${limit}`;
    }
    try {
        
        // 执行查询操作
        const res = await client.query(sql);
        return res.rows;
    } catch (err) {
        // 如果发生错误，打印错误信息
        console.error('Error selecting data', err.stack);
    }
}
//const tableName = 'users';
//const columns = ['username', 'email']; // 指定要查询的列
//const conditions = 'age > 18'; // 搜索条件
//const orderBy = 'username ASC'; // 排序条件
//const limit = 10; // 限制返回的记录数



// async function main() {
//     await connectDb();
//     // await insertData('Users',['uid','cipher'],[uid,cipher]);
//     await selectData('manager',columns=['mid,name,gender'],conditions='mid='+763437171).then((res)=>{
//         console.log(res[0].mid);
//     });
    
    
// }
// main().catch(console.error);


//更新数据
async function updateData(tableName, updateData, condition) {
    // 构建列和值的占位符字符串，例如：'name = $1, age =$2'
    const updateSet = Object.keys(updateData).map((key, index) => `${key} =$${index + 1}`).join(', ');
    
    // 构建条件占位符字符串，例如：'id = $3'
    const conditionStr = Object.keys(condition).map((key, index) => `${key} =$${Object.keys(updateData).length + index + 1}`).join(' AND ');
    
    // 构建完整的 SQL 更新语句
    const sql = `UPDATE ${tableName} SET${updateSet} WHERE ${conditionStr}`;
    
    // 合并更新数据和条件数据，以形成最终的值数组
    const values = [...Object.values(updateData), ...Object.values(condition)];

    try {
        await client.query(sql, values);
        console.log('Data updated successfully');
    } catch (err) {
        console.error('Error updating data', err.stack);
    }
}
// 使用示例：
// 假设我们要更新表名为 `users` 的数据，将 `name` 更新为 'Alice'，`age` 更新为 30，条件是 `id` 等于 1
//updateData('users', { name: 'Alice', age: 30 }, { id: 1 });


//删除数据
async function deleteData(tableName, condition) {
    // 构建删除数据的 SQL 语句
    // 注意：这里的 condition 应该是一个字符串，例如 "id = $1"
    // params 是一个数组，包含了 condition 中占位符 $1,$2, ... 对应的值
    const sql = `DELETE from ${tableName} WHERE ${condition}`;
    try {
        await client.query(sql);
        console.log('Data deleted successfully');
    } catch (err) {
        console.error('Error deleting data', err.stack);
    }
}

// async function main() {
//     await connectDb();
//     await insertData('Users',['uid','cipher'],['000000000','000000000']);
//     await insertData('Users',['uid','cipher'],['000000001','000000000']);
//     await insertData('Users',['uid','cipher'],['000000002','000000000']);
//     await insertData('Users',['uid','cipher'],['000000003','000000000']);
//     await deleteData('Users',"uid='000000003'").then((res)=>{
//         console.log(res);
//     });
// }
// main().catch(console.error);
// 使用示例：
// 删除 id 为 10 的记录
// 请确保 condition 是安全的，避免 SQL 注入
//deleteData('example_table', 'id = $1', [10]);


module.exports = {
    connectDb,
    insertData,
    selectData,
    updateData,
    deleteData
};

