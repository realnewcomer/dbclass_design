<template>
  <div>

    <div >
      <div>
        <div>
          <span>{{this.personData.content1}}</span>
          <span v-if="this.flag1 === 'true' " style="margin-left: 50px">已完成</span>
        </div>
      </div>
      <div>
        <div>
          <span>{{this.personData.content2}}</span>
          <span v-if="this.flag2 === 'true' " style="margin-left: 50px">已完成</span>
        </div>
      </div>
      <div>
        <div>
          <span>{{this.personData.exam1}}</span>
          <span v-if="this.personData.examFlag1 === 'true' " style="margin-left: 50px">已完成</span>
        </div>
      </div>
      <div>
        <div>
          <span>{{this.personData.content3}}</span>
          <span v-if="this.personData.flag3 === 'true' " style="margin-left: 50px">已完成</span>
        </div>
      </div>
      <div>
        <div>
          <span>{{this.personData.demo1}}</span>
          <span v-if="this.personData.demoFlag1 === 'true' " style="margin-left: 50px">已完成</span>
        </div>
      </div>
      <div>
        <div>
          <span>{{this.personData.content4}}</span>
          <span v-if="this.personData.flag4 === 'true' " style="margin-left: 50px">已完成</span>
        </div>
      </div>
      <div>
        <div>
          <span>{{this.personData.content5}}</span>
          <span v-if="this.personData.flag5 === 'true' " style="margin-left: 50px">已完成</span>
        </div>
      </div>
      <div>
        <div>
          <span>{{this.personData.demo2}}</span>
          <span v-if="this.personData.demoFlag2 === 'true' " style="margin-left: 50px">已完成</span>
        </div>
      </div>
      <div>
        <div>
          <span>{{this.personData.content6}}</span>
          <span v-if="this.personData.flag6 === 'true' " style="margin-left: 50px">已完成</span>
        </div>
      </div>
      <div>
        <div>
          <span>{{this.personData.exam2}}</span>
          <span v-if="this.personData.examFlag2 === 'true' " style="margin-left: 50px">已完成</span>
        </div>
      </div>


    </div>



  </div>
</template>
<script>
export default {
  name: "Navigation",
  data() {
    return {
      tableData: [],  // 所有的数据
      pageNum: 1,   // 当前的页码
      pageSize: 10,  // 每页显示的个数
      total: 0,
      name: null,
      fromVisible: false,
      form: {},
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      rules: {
      },
      personData:[],
      ids: [],
      data1 :null,
      data2 :null,
      data3 :null,
      data4 :null,
      data5 :null,
      data6 :null,
      flag1:null,
      flag2:null,
      flag3:null,
      flag4:null,
      flag5:null,
      flag6:null,
    }
  },
  created() {
    this.load(1)
    this.loadPerson()
  },
  methods: {
    loadPerson(){
      this.$request.get('/navigation/selectById/' +1).then(res=>{
        if (res.code === '200') {
          this.personData = res.data
          console.log((this.personData))
          console.log((this.personData.content1))
          this.data1 = this.personData.content1
          this.data2 = this.personData.content2
          this.data3 = this.personData.content3
          this.data4 = this.personData.content4
          this.data5 = this.personData.content5
          this.data6 = this.personData.content6
          this.flag1 = this.personData.flag1
          this.flag2 = this.personData.flag2
          this.flag3 = this.personData.flag3
          this.flag4 = this.personData.flag4
          this.flag5 = this.personData.flag5
          this.flag6 = this.personData.flag6
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    handleAdd() {   // 新增数据
      this.form = {}  // 新增数据的时候清空数据
      this.fromVisible = true   // 打开弹窗
    },
    handleEdit(row) {   // 编辑数据
      this.form = JSON.parse(JSON.stringify(row))  // 给form对象赋值  注意要深拷贝数据
      this.fromVisible = true   // 打开弹窗
    },
    save() {   // 保存按钮触发的逻辑  它会触发新增或者更新
      this.$refs.formRef.validate((valid) => {
        if (valid) {
          this.$request({
            url: this.form.id ? '/navigation/update' : '/navigation/add',
            method: this.form.id ? 'PUT' : 'POST',
            data: this.form
          }).then(res => {
            if (res.code === '200') {  // 表示成功保存
              this.$message.success('保存成功')
              this.load(1)
              this.fromVisible = false
            } else {
              this.$message.error(res.msg)  // 弹出错误的信息
            }
          })
        }
      })
    },
    del(id) {   // 单个删除
      this.$confirm('您确定删除吗？', '确认删除', {type: "warning"}).then(response => {
        this.$request.delete('/navigation/delete/' + id).then(res => {
          if (res.code === '200') {   // 表示操作成功
            this.$message.success('操作成功')
            this.load(1)
          } else {
            this.$message.error(res.msg)  // 弹出错误的信息
          }
        })
      }).catch(() => {
      })
    },
    handleSelectionChange(rows) {   // 当前选中的所有的行数据
      this.ids = rows.map(v => v.id)
    },
    delBatch() {   // 批量删除
      if (!this.ids.length) {
        this.$message.warning('请选择数据')
        return
      }
      this.$confirm('您确定批量删除这些数据吗？', '确认删除', {type: "warning"}).then(response => {
        this.$request.delete('/navigation/delete/batch', {data: this.ids}).then(res => {
          if (res.code === '200') {   // 表示操作成功
            this.$message.success('操作成功')
            this.load(1)
          } else {
            this.$message.error(res.msg)  // 弹出错误的信息
          }
        })
      }).catch(() => {
      })
    },
    load(pageNum) {  // 分页查询
      if (pageNum) this.pageNum = pageNum
      this.$request.get('/navigation/selectPage', {
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
          name: this.name,
        }
      }).then(res => {
        if (res.code === '200') {
          this.tableData = res.data?.list
          this.total = res.data?.total
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    reset() {
      this.name = null
      this.load(1)
    },
    handleCurrentChange(pageNum) {
      this.load(pageNum)
    },
  }
}
</script>

<style scoped>

</style>