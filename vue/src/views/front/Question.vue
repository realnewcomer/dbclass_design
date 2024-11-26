<template>
  <div style="">
    <div class="main-content3" style="width: 80% ;margin: 30px auto;">
      <div style="display: inline-block">
        <div class="card" style="display: inline-block;margin-left: 50px">
          <img  src="../../assets/imgs/paper/paper1.png" alt="" style="width: 100%; height: 200px; " class="image-class" @click="goDetail1()">
          <div style="display: flex; align-items: center">
            <div style="flex: 1; colofont-size: 18px"><i class="el-icon-date"></i>试题一</div>
            <div><el-button type="primary" @click="goDetail1()" style="width: 60px;height: 30px;">查看</el-button></div>
          </div>
        </div>
        <div class="card" style="display: inline-block;margin-left: 50px">
          <img src="../../assets/imgs/paper/paper2.png" alt="" @click="goDetail2" style="width: 100%; height: 200px; " class="image-class">
          <div style="display: flex; align-items: center">
            <div style="flex: 1; font-size: 18px"><i class="el-icon-date"></i> 试题二</div>
            <el-button type="primary" @click="goDetail2" style="width: 60px;height: 30px;">查看</el-button>
          </div>
        </div>
        <div class="card" style="display: inline-block;margin-left: 50px">
          <img src="../../assets/imgs/paper/paper3.png" @click="goDetail3"  alt="" style="width: 100%; height: 200px; " class="image-class">
          <div style="display: flex; align-items: center">
            <div style="flex: 1; font-size: 18px"><i class="el-icon-date"></i> 试题三</div>
            <el-button type="primary" @click="goDetail3" style="width: 60px;height: 30px;">查看</el-button>
          </div>
        </div>
        <div class="card" style="display: inline-block;margin-left: 50px;margin-top: 40px">
          <img src="../../assets/imgs/paper/paper4.png" @click="goDetail4" alt="" style="width: 100%; height: 200px; " class="image-class">
          <div style="display: flex; align-items: center">
            <div style="flex: 1; font-size: 18px"><i ></i> 试题四</div>
            <el-button type="primary" @click="goDetail4" style="width: 60px;height: 30px;">查看</el-button>
          </div>
        </div>
        <div class="card" style="display: inline-block;margin-left: 50px">
          <img src="../../assets/imgs/paper/paper5.png"  @click="goDetail5" alt="" style="width: 100%; height: 200px; " class="image-class">
          <div style="display: flex; align-items: center">
            <div style="flex: 1; font-size: 18px"><i class="el-icon-date"></i> 试题五</div>
            <el-button type="primary" @click="goDetail5" style="width: 60px;height: 30px;">查看</el-button>
          </div>
        </div>
        <div class="card" style="display: inline-block;margin-left: 50px">
          <img src="../../assets/imgs/paper/paper6.png" @click="goDetail6" alt="" style="width: 100%; height: 200px; " class="image-class">
          <div style="display: flex; align-items: center">
            <div style="flex: 1; font-size: 18px"><i class="el-icon-date"></i> 试题六</div>
            <el-button type="primary" @click="goDetail6" style="width: 60px;height: 30px;">查看</el-button>
          </div>
        </div>
      </div>

      <div style="text-align: center;margin-top: 30px">
        <div class="wrapper" style="margin-left: 650px;margin-top: 50px">
          <span>重</span>
          <span>磅</span>
          <span>挑</span>
          <span>战</span>
        </div></div>
      <div class="container" style="display: inline-block">
        <div class="card" style="display: inline-block;margin-left: 200px ">
          <h2>随机选择题</h2>
          <i class="fas fa-arrow-right"></i>
          <p>select</p>
          <div class="pic"></div>
          <ul>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
          </ul>
          <div class="social">
            <i class="fab fa-facebook-f"></i>
            <i class="fab fa-twitter"></i>
            <i class="fab fa-instagram"></i>
            <i class="fab fa-github"></i>
          </div>
          <button @click="goTo" >
          </button>
        </div>
        <div class="card card2" style="display: inline-block">
          <h2>随机判断题</h2>
          <i class="fas fa-arrow-right"></i>
          <p>judge</p>
          <div class="pic"></div>
          <ul>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
          </ul>
          <div class="social">
            <i class="fab fa-facebook-f"></i>
            <i class="fab fa-twitter"></i>
            <i class="fab fa-instagram"></i>
            <i class="fab fa-github"></i>
          </div>
          <button @click="goTo1">
          </button>
        </div>
      </div>

    </div>
  </div>
</template>

<script>
export default {
  name: "Question",
  data() {
    return {
      tableData: [],  // 所有的数据
      pageNum: 1,   // 当前的页码
      pageSize: 8,  // 每页显示的个数
      total: 0,
      name: null,
      question:[]
    }
  },
  created() {
    this.load(1)
  },
  methods: {
    goDetail(id) {
      location.href = '/front/questionDetail?id=' + id
    },
    goDetail1() {
      location.href = '/front/paper1'
    },
    goDetail2() {
      location.href = '/front/paper2'
    },
    goDetail3() {
      location.href = '/front/paper3'
    },
    goDetail4() {
      location.href = '/front/paper4'
    },
    goDetail5() {
      location.href = '/front/paper5'
    },
    goDetail6() {
      location.href = '/front/paper6'
    },
    goTo() {
      location.href = '/front/exam'
    },
    goTo1(){
      location.href = '/front/examJudge'
    },

  }
}
</script>

<style scoped>
.image-class:hover {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.8), 0 6px 20px 0 rgba(0, 0, 0, 0.5);
}


* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

i {
  opacity: 0;
  font-size: 18px;
  color: #fff;
  will-change: transform;
  -webkit-transform: scale(0.1);
  transform: scale(0.1);
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
}

h5{
  pointer-events:none;
}

body {
  background-color: #E6E5E1;
  width: 100vw;
  height: 100vh;
}

.container {
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;

  .card {
    position: relative;
    width: 500px;
    height: 200px;
    background-color: #fff;
    overflow: hidden;
    margin-bottom: 4px;

    &:before {
      content: "";
      z-index: 99;
      position: absolute;
      top: -10px;
      left: 32px;
      display: block;
      width: 16px;
      height: 16px;
      border-radius: 16px;
      background-color: #E6E5E1;
    }
    &:after {
      content: "";
      z-index: 99;
      position: absolute;
      bottom: -10px;
      left: 32px;
      display: block;
      width: 16px;
      height: 16px;
      border-radius: 16px;
      background-color: #E6E5E1;
    }
    ul {
      z-index: 99;
      position: absolute;
      left: 39px;
      top: 5px;
      list-style-type: none;
      li {
        width: 2px;
        height: 2px;
        border-radius: 2px;
        margin: 6px 0;
        background-color: #E6E5E1;
      }
    }
    h5 {
      z-index: 99;
      font-family: "Poppins", sans-serif;
      position: absolute;
      bottom: 0;
      right: 130px;
      font-size: 60px;
      font-weight: 700;
      color: #fff;
    }

    .fa-arrow-right {
      z-index: 100;
      position: absolute;
      right: 75px;
      bottom: 25px;
      font-size: 40px;
      cursor: pointer;
    }
    p {
      z-index: 99;
      position: absolute;
      top: 20px;
      right: 70px;
      color: #333;
      opacity: 0.7;
      font-size: 12px;
      letter-spacing: 1px;
      writing-mode: vertical-lr;
      -webkit-transition: all 0.2s ease;
      transition: all 0.2s ease;
    }
    .pic {
      z-index: 100;
      width: 400px;
      height: 200px;
      background-image: url("https://images.unsplash.com/photo-1525543907410-b2562b6796d6?ixlib=rb-0.3.5&s=9ff8e5e718a6a40cbd0e1471235912f4&auto=format&fit=crop&w=3452&q=80");
      background-size: 100% 100%;
    }

    .social {
      position: absolute;
      left: 60px;
      top: 0;
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      -ms-flex-pack: distribute;
      justify-content: space-around;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      width: 180px;
      height: 64px;
      border-radius: 80px;
    }

    .social i:nth-of-type(1) {
      -webkit-transition-delay: 0.4s;
      transition-delay: 0.4s;
    }

    .social i:nth-of-type(2) {
      -webkit-transition-delay: 0.3s;
      transition-delay: 0.3s;
    }

    .social i:nth-of-type(3) {
      -webkit-transition-delay: 0.2s;
      transition-delay: 0.2s;
    }

    .social i:nth-of-type(4) {
      -webkit-transition-delay: 0.1s;
      transition-delay: 0.1s;
    }

    &:hover i {
      opacity: 1;
      -webkit-transform: scale(1);
      transform: scale(1);
    }

    button {
      position: absolute;
      right: 14px;
      bottom: 14px;
      width: 30px;
      height: 30px;
      background-color: orange;
      border: none;
      border-radius: 30px;
      cursor: pointer;
      outline:none;
      transition: all 0.3s ease;
      mix-blend-mode: hard-light;

      i {
        font-size: 3rem;
      }
    }

    &:hover button {
      transform: scale(16.5);
    }

    &:hover p {
      color: #fff;
    }

    &:hover .pic {
      filter: grayscale(0);

    }
  }

  .card2 {
    .pic {
      background-image: url("https://images.unsplash.com/photo-1528785198459-ec50485704c7?ixlib=rb-0.3.5&s=3a2fc3039516555bbb2e9cd2967bd321&auto=format&fit=crop&w=1537&q=80");
    }
    button {
      background-color: #2b26c3;
    }
  }
}


.wrapper{
  width:440px;
  height:70px;
  /*position: absolute;*/
  left:50%;
  top:50%;
  transform: translate(-50%, -50%);
  text-align: center;
}
.wrapper span{
  font-size: 50px;
  font-weight: bold;
  color: #4b4b4b;
  animation: lighting 1000ms alternate infinite ease;
}
@keyframes lighting{
  0%,85%{
    color: #4b4b4b;
    text-shadow: none;
  }
  100%{
    color:#fff200;
    text-shadow: 0 0 5px #fff200, 0 0 3px #ff9f1a;
  }
}
.wrapper span:nth-child(1){
  animation-delay: 150ms;
}
.wrapper span:nth-child(2){
  animation-delay: 300ms;
}
.wrapper span:nth-child(3){
  animation-delay: 450ms;
}
.wrapper span:nth-child(4){
  animation-delay: 600ms;
}
.wrapper span:nth-child(5){
  animation-delay: 750ms;
}
.wrapper span:nth-child(6){
  animation-delay: 900ms;
  margin-left: 20px;
}
.wrapper span:nth-child(7){
  animation-delay: 1050ms;
}
.wrapper span:nth-child(8){
  animation-delay: 1200ms;
}
.wrapper span:nth-child(9){
  animation-delay: 1350ms;
}
.wrapper span:nth-child(10){
  animation-delay: 1500ms;
}
</style>