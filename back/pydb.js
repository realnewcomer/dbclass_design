const express = require('express');
const { connectDb, insertData, selectData, updateData, deleteData } = require('./db');
const app = express();
const port = 3000;

// 解析 JSON 请求体
app.use(express.json());

// 连接数据库
connectDb();

// 插入数据 API
app.post('/insert', async (req, res) => {
    const { tableName, columns, values } = req.body;
    try {
        await insertData(tableName, columns, values);
        res.send('Data inserted successfully');
    } catch (err) {
        res.status(500).send('Error inserting data');
    }
});

// 查询数据 API
app.get('/select', async (req, res) => {
    const { tableName, columns, conditions, orderBy, limit } = req.query;
    try {
        const data = await selectData(tableName, columns.split(','), conditions, orderBy, limit);
        res.json(data);
    } catch (err) {
        res.status(500).send('Error selecting data');
    }
});

// 更新数据 API
app.post('/update', async (req, res) => {
    const { tableName, updateData, condition } = req.body;
    try {
        await updateData(tableName, updateData, condition);
        res.send('Data updated successfully');
    } catch (err) {
        res.status(500).send('Error updating data');
    }
});

// 删除数据 API
app.post('/delete', async (req, res) => {
    const { tableName, condition } = req.body;
    try {
        await deleteData(tableName, condition);
        res.send('Data deleted successfully');
    } catch (err) {
        res.status(500).send('Error deleting data');
    }
});

// 启动服务器
app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});
