<template>
  <div class="main-content1">
    <div style="width: 70%; margin: 30px auto; min-height: 1000px">
      <div style="display: inline-block">
        <div style="font-size: 20px; font-weight: 550; color: #333333;margin-left: 570px;display: inline-block">试题六</div>
        <div style="margin-left: 400px;display: inline-block"><button style="height: 50px;width: 100px;background-color: deepskyblue;color: black" @click="submit">试题提交</button></div>
      </div>


      <!--   课程介绍区域   -->
      <div style="margin-top: 20px">
        <div style="font-size: 18px">试题</div>
        <div v-for="(item,index) in question ":keys="index" v-if="item.type === 1">
          <div  style="font-size: 20px;margin-top: 10px;margin-bottom: 20px">{{index+1}}.{{item.content}}</div>
          <div style="font-size: 20px;">
            <div><span><el-radio v-model="item['studentAnswer']" label="A" :class="{answer:flag&&(item.answer === 'A')}">A.{{item.a}}</el-radio></span></div>
            <div><span><el-radio v-model="item['studentAnswer']" label="B" :class="{answer:flag&&(item.answer === 'B')}">B.{{item.b}}</el-radio></span></div>
            <div><span><el-radio v-model="item['studentAnswer']" label="C" :class="{answer:flag&&(item.answer === 'C')}">C.{{item.c}}</el-radio></span></div>
            <div><span><el-radio v-model="item['studentAnswer']" label="D" :class="{answer:flag&&(item.answer === 'D')}">D.{{item.d}}</el-radio></span></div>
            <div class="detail" v-if="flag === true">解析：{{item.detail}}</div>
          </div>
        </div>
        <div v-for="(item,index) in question ":keys="index" v-if="item.type === 2">
          <div  style="font-size: 20px;margin-top: 10px;margin-bottom: 20px">{{index+1}}.{{item.content}}</div>
          <div style="font-size: 20px;">
            <div><span><el-radio v-model="item['studentAnswer']" label="是" :class="{answer:flag&&(item.answer === '是')}">√</el-radio></span></div>
            <div><span><el-radio v-model="item['studentAnswer']" label="否" :class="{answer:flag&&(item.answer === '否')}">×</el-radio></span></div>
            <div class="detail" v-if="flag === true">解析：{{item.detail}}</div>
          </div>
        </div>
      </div>
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
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
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
      this.$request.get('/allquestion/paper3' ).then(res => {
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
      this.$alert(this.score, '测验的成绩为(每小题2分)', {
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
.detail {
  color: #5580d4;
  margin-top: 30px;
}
</style>
