<template>
  <div class="main-content1">
    <div style="width: 70%; margin: 30px auto; min-height: 1000px">
      <div style="">
        <span style="font-size: 20px; font-weight: 550; color: #333333; text-align: center">小试牛刀</span>
        <span style="margin-left: 500px"><button style="height: 50px;width: 50px;" @click="submit">提交</button></span>
      </div>


      <!--   课程介绍区域   -->
      <div style="margin-top: 20px">
        <div style="font-size: 18px">题库内容</div>
        <div v-for="(item,index) in question ":keys="index">
          <div  style="font-size: 18px;margin-top: 10px">{{item.content}}</div>
          <div style="font-size: 16px">
            <span><el-radio v-model="item['studentAnswer']" label="A" :class="{answer:flag&&(item.answer === 'A')}">A.{{item.a}}</el-radio></span>
            <span><el-radio v-model="item['studentAnswer']" label="B" :class="{answer:flag&&(item.answer === 'B')}">B.{{item.b}}</el-radio></span>
            <span><el-radio v-model="item['studentAnswer']" label="C" :class="{answer:flag&&(item.answer === 'C')}">C.{{item.c}}</el-radio></span>
            <span><el-radio v-model="item['studentAnswer']" label="D" :class="{answer:flag&&(item.answer === 'D')}">D.{{item.d}}</el-radio></span>
          </div>
        </div>
      </div>
      <!--      <div>
              <button style="height: 100px;width: 100px;margin-top: 50px" @click="submit">提交</button>
            </div>-->
      <!--      <div>score:{{score}}</div>-->
    </div>
  </div>
</template>
<script>
export default {

  data() {
    let questionId = this.$route.query.id
    return {
      questionId: questionId,
      questionData: {},
      judgeData:{},
      question:[],
      score:0,
      flag:false
    }
  },
  mounted() {
    this.loadQuestion()
    this.loadJudge()
  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    loadQuestion() {
      this.$request.get('/allquestion/paper1' ).then(res => {
        if (res.code === '200') {
          this.question = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loadJudge() {
      this.$request.get('/judge/selectAll').then(res => {
        if (res.code === '200') {
          this.judgeData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    submit(){
      this.flag = true
      this.question.forEach(item=>{
        if(item.answer === item.studentAnswer){
          this.score +=2
        }
      })
      this.$alert(this.score, '测验的成绩为', {
        confirmButtonText: '确定',
        callback: action => {
          /* this.$message({
             type: 'info',
             message: `action: ${ action }`
           });*/
        }
      });
    }
  }
}
</script>


<style>
.answer {
  color: red;
}
/*.main-content1{
  display: flex;
  background-image: linear-gradient(
  125deg,#2c3e50,#27ae60,#2980b9,#e74c3c,#8e44ad,#0c0c0c,#5580d4
  );
  background-size: 400%;
  animation: bgmove 20s infinite;
}*/

@keyframes bgmove {
  0%{
    background-position: 0% 50%;
  }
  50%{
    background-position: 100% 50%;
  }
  100%{
    background-position: 0% 50%;
  }
}
</style>
