<template>
  <div class="main-content1">
    <div style="width: 70%; margin: 30px auto; min-height: 1000px">
      <div style="">
        <div class="container">
          <div class="box">

            <div class="title">
              <span class="block"></span>
              <h1>小试牛刀1<span></span></h1>
            </div>

          </div>
        </div>
        <div style="margin-left: 1200px"><button style="height: 50px;width: 100px;background-color: deepskyblue;color: black" @click="submit">试题提交</button></div>
      </div>


      <div style="margin-top: 20px">
        <div style="font-size: 18px">题库内容</div>
        <div v-for="(item,index) in question ":keys="index">
          <div  style="font-size: 20px;margin-top: 10px;margin-bottom: 20px">{{index+1}}.{{item.content}}</div>
          <div style="font-size: 16px">
            <div><el-radio v-model="item['studentAnswer']" label="A" :class="{answer:flag&&(item.answer === 'A')}">A.{{item.a}}</el-radio></div>
            <div><el-radio v-model="item['studentAnswer']" label="B" :class="{answer:flag&&(item.answer === 'B')}">B.{{item.b}}</el-radio></div>
            <div><el-radio v-model="item['studentAnswer']" label="C" :class="{answer:flag&&(item.answer === 'C')}">C.{{item.c}}</el-radio></div>
            <div><el-radio v-model="item['studentAnswer']" label="D" :class="{answer:flag&&(item.answer === 'D')}">D.{{item.d}}</el-radio></div>
            <div class="detail" v-if="flag === true">解析：{{item.detail}}</div>
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
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
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
      this.$request.get('/allquestion/randomJudge' ).then(res => {
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
      let data = {
        demoFlag1: true,
        userId: this.user.id
      }
      this.$request.post('/navigation/add',data)
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


@import url('https://fonts.googleapis.com/css?family=Lato:300,400|Poppins:300,400,800&display=swap');

* {
  margin: 0;
  padding: 0;
}



.container {
  width: 100%;

  display: flex;
  justify-content: center;
  align-items: center;

  .box {
    width: 150px;
    height: 100px;
    position: relative;
    display: flex;
    justify-content: center;
    flex-direction: column;

    .title {
      width: 100%;
      position: relative;
      display: flex;
      align-items: center;
      height: 50px;

      .block {
        width: 0%;
        height: inherit;
        background: #ffb510;
        position: absolute;
        animation: mainBlock 2s cubic-bezier(.74, .06, .4, .92) forwards;
        display: flex;
      }

      h1 {
        font-family: 'Poppins';
        color: black;
        font-size: 32px;
        -webkit-animation: mainFadeIn 2s forwards;
        -o-animation: mainFadeIn 2s forwards;
        animation: mainFadeIn 2s forwards;
        animation-delay: 1.6s;
        opacity: 0;
        display: flex;
        align-items: baseline;
        position: relative;

        span {
          width:0px;
          height: 0px;
          -webkit-border-radius: 50%;
          -moz-border-radius: 50%;
          border-radius: 50%;

          background: #ffb510;
          -webkit-animation: load 0.6s cubic-bezier(.74, .06, .4, .92) forwards;
          animation: popIn 0.8s cubic-bezier(.74, .06, .4, .92) forwards;
          animation-delay: 2s;
          margin-left: 5px;
          margin-top: -10px;
          position: absolute;
          bottom: 13px;
          right: -12px;

        }
      }
    }

    .role {
      width: 100%;
      position: relative;
      display: flex;
      align-items: center;
      height: 30px;
      margin-top: -10px;

      .block {
        width: 0%;
        height: inherit;
        background: #e91e63;
        position: absolute;
        animation: secBlock 2s cubic-bezier(.74, .06, .4, .92) forwards;
        animation-delay: 2s;
        display: flex;
      }

      p {
        animation: secFadeIn 2s forwards;
        animation-delay: 3.2s;
        opacity: 0;
        font-weight: 400;
        font-family: 'Lato';
        color: #ffffff;
        font-size: 12px;
        text-transform: uppercase;
        letter-spacing: 5px;
      }
    }
  }
}





@keyframes mainBlock {
  0% {
    width: 0%;
    left: 0;

  }
  50% {
    width: 100%;
    left: 0;

  }
  100% {
    width: 0;
    left: 100%;
  }
}

@keyframes secBlock {
  0% {
    width: 0%;
    left: 0;

  }
  50% {
    width: 100%;
    left: 0;

  }
  100% {
    width: 0;
    left: 100%;
  }
}

@keyframes mainFadeIn {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}


@keyframes popIn {
  0% {
    width: 0px;
    height: 0px;
    background: #e9d856;
    border: 0px solid #ddd;
    opacity: 0;
  }
  50% {
    width: 10px;
    height: 10px;
    background: #e9d856;
    opacity: 1;
    bottom: 45px;
  }
  65% {
    width: 7px;
    height: 7px;
    bottom: 0px;
    width: 15px
  }
  80% {
    width: 10px;
    height: 10px;
    bottom: 20px
  }
  100% {
    width: 7px;
    height: 7px;
    background: #e9d856;
    border: 0px solid #222;
    bottom: 13px;

  }
}

@keyframes secFadeIn {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 0.5;
  }
}


@keyframes top {
  0% {
    opacity: 0;
    bottom: -80px
  }
  100% {
    opacity: 1;
    bottom: 0px

  }
}

@keyframes icon {
  0% {
    opacity: 0;
    transform: scale(0.0);
  }
  50% {
    opacity: 1;
    transform: scale(1.3) rotate(-02deg);
  }
  100% {
    opacity: 1;
    bottom: 0px;
  }
}
.answer {
  color: red;

}
.detail {
  color: #5580d4;
  margin-top: 30px;
}
</style>
