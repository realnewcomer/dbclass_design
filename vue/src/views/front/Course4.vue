<template>
  <div class="main-content">
    <div style="width: 70%; margin: 20px 300px; min-height: 1000px">
      <div style="text-align: center">
        <el-button type="success">视频课</el-button>
        <span style="font-size: 20px; font-weight: 550; color: #333333; margin-left: 20px">第四章</span>
      </div>
      <div>
        <a href="#" @click="likeObject"><img src="@/assets/imgs/点赞.png" style="height: 50px; width: 50px;margin-left: 900px"></a>
        <a href="#" @click="collect"><img src="@/assets/imgs/收藏.png" style="height: 50px; width: 50px;margin-left: 30px"></a>
      </div>
      <!--   课程保密区域   -->
      <div>
        <div style="font-size: 18px; margin: 10px 0">课程资料</div>
        <div >
          <video src="../../assets/video/4-IP地址.mp4"  controls style="width: 100%; height: 600px"></video>
          <!--          <div style="margin-top: 10px" v-if="courseData.file !== null">资料链接：<a :href="courseData.file" target="_blank">{{ courseData.file }}</a></div>-->
        </div>
        <div >
          <!--          <span style="color: red; margin-right: 20px">该课程属于付费课程，购买后可解锁</span>
                    <el-button type="warning" size="mini" @click="buy">购买课程</el-button>-->
        </div>
      </div>
      <!--   课程介绍区域   -->
      <div style="margin-top: 20px">
<!--        <div style="font-size: 18px">课程介绍</div>-->
        <div style="margin-top: 10px;font-size: 20px" v-html="courseData.content" class="w-e-text w-e-text-container"></div>
      </div>

      <div label="宝贝评价" name="second" style="height: 500px;border-top: 3px solid black;border-left: 3px solid black;border-right: 3px solid black;">
        <div><el-button size="mini" type="primary"  @click="addComment" style="margin-left: 500px;height: 50px;width: 100px">评价</el-button></div>
        <div style="margin-top: 10px">
          <div style="margin-top: 20px" v-for="item in commentData">
            <div style="display: flex">
              <div style="width: 40px">
                <img :src="item.userAvatar" alt="" style="height: 40px; width: 40px; border-radius: 50%">
              </div>
              <div style="width: 200px; margin-left: 10px">
                <div style="font-weight: 700; font-size: 17px; color: #000000FF">{{item.userName}}</div>
                <div style="color: #7A7A7AFF">{{item.time}}</div>
              </div>
            </div>
            <div style="margin-top: 15px; font-size: 16px">{{item.content}}</div>
          </div>
        </div>
      </div>
    </div>


    <el-dialog title="请输入评价内容" :visible.sync="fromVisible" width="40%" :close-on-click-modal="false" destroy-on-close>
      <el-form :model="form" label-width="100px" style="padding-right: 50px" :rules="rules" ref="formRef">
        <el-form-item label="评价内容" prop="username">
          <el-input type="textarea" v-model="form.content" placeholder="请输入评价内容"></el-input>
        </el-form-item>
      </el-form>

      <div slot="footer" class="dialog-footer">
        <el-button @click="fromVisible = false">取 消</el-button>
        <el-button type="primary" @click="save">确 定</el-button>
      </div>
    </el-dialog>
  </div>
</template>
<script>
export default {

  data() {
    let courseId = this.$route.query.id
    return {
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      courseId: courseId,
      courseData: {},
      flag:false,
      fromVisible:false,
      commentData:[],
      form:{}
    }
  },
  mounted() {
    this.loadFlag()
  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    loadFlag(){
      let data = {
        flag4: true,
        userId: this.user.id
      }
      this.$request.post('/navigation/add',data)
    },
    collect() {
      let data = {
        userId: this.user.id,
        courseId: 95
      }
      this.$request.post('/collect/add', data).then(res => {
        if (res.code === '200') {
          this.$message.success('收藏成功')
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    likeObject() {
      let data = {
        userId: this.user.id,
        courseId: 95
      }
      this.$request.post('/like/add', data).then(res => {
        if (res.code === '200') {
          this.$message.success('喜欢成功')
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    addComment() {
      this.fromVisible = true
    },
    save() {
      let data = {
        userId: this.user.id,
        courseId: 95,
        content: this.form.content,
      }
      this.$request.post('/comment/add', data).then(res => {
        if (res.code === '200') {
          this.$message.success('评价成功')
          this.fromVisible = false
          this.form = {}
          this.loadComments()
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loadComments() {
      this.$request.get('/comment/selectByGoodsId?id=' + 95).then(res => {
        if (res.code === '200') {
          this.commentData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
  }
}
</script>
