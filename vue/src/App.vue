<template>
  <div id = "app">

      <div style="z-index: 1">
        <iframe src="http://10.124.24.175:80/" frameborder="0" v-if="$route.path!='/login'&&$route.path!='/home'&&$route.path!='/admin'&&$route.path!='/information'&&$route.path!='/user'&&$route.path!='/scoreOrder'&&$route.path!='/comment'&&$route.path!='/allQuestion'&&$route.path!='/orders'&&$route.path!='/score'&&$route.path!='/course'&&$route.path!='/notice'&&$route.path!='/adminPerson'&&$route.path!='/password'" style="color: blue;z-index: 9999;position: fixed;width: 250px;height: 300px;margin-left: 1400px;margin-top: 500px"></iframe>

        <iframe src="https://b954ae6ea994f16d81.gradio.live" frameborder="0" v-if="$route.path!='/login'&&$route.path!='/home'&&$route.path!='/admin'&&$route.path!='/information'&&$route.path!='/user'&&$route.path!='/scoreOrder'&&$route.path!='/comment'&&$route.path!='/allQuestion'&&$route.path!='/orders'&&$route.path!='/score'&&$route.path!='/course'&&$route.path!='/notice'&&$route.path!='/adminPerson'&&$route.path!='/password'&&flag" style="color: blue;z-index: 9999;position: fixed;width: 1000px;height: 700px;margin-left: 350px;margin-top: 100px"></iframe>

        <div class="hover_wrapper" style="z-index: 9999;position: fixed;margin-left: 25px;margin-top: 65px" v-if="$route.path!='/login'&&$route.path!='/home'&&$route.path!='/admin'&&$route.path!='/information'&&$route.path!='/user'&&$route.path!='/scoreOrder'&&$route.path!='/comment'&&$route.path!='/allQuestion'&&$route.path!='/orders'&&$route.path!='/score'&&$route.path!='/course'&&$route.path!='/notice'&&$route.path!='/adminPerson'&&$route.path!='/password'">
          <div style="z-index: 9999;position: fixed;margin-left: 1600px;margin-top: 395px;" @click="begin"><a href="#" style="height: 150px;font-size: 18px;width: 10px" class="w">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            开启
          </a></div>
          <div style="z-index: 9999;position: fixed;margin-left: 1600px;margin-top: 540px" @click="end()"><a href="#" style="height: 150px;font-size: 18px" class="w">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            关闭
          </a></div>

          <div class="hover_text"></div>
          <div @mouseover="showHover=true" @mouseout="showHover=false" class="btn">
            <img src="./assets/imgs/任务.png" style="width: 50px;height: 50px">
            <div class="hover_container" v-if="showHover" style="">

              <el-timeline>
                <el-timeline-item style="height: 60px;width: 200px">
                  <el-card :class="{aa:this.personData.flag1 === 'true'}">
                    <h4 >{{this.personData.content1}}</h4>
                    <p></p>
                  </el-card>
                </el-timeline-item>
                <el-timeline-item  placement="top" style="height: 70px;width: 200px">
                  <el-card :class="{aa:this.personData.flag2 === 'true'}">
                    <h4>{{this.personData.content2}}</h4>
                    <p></p>
                  </el-card>
                </el-timeline-item>
                <el-timeline-item  placement="top" style="height: 70px;width: 200px">
                  <el-card :class="{aa:this.personData.examFlag1 === 'true'}">
                    <h4>{{this.personData.exam1}}</h4>
                    <p></p>
                  </el-card>
                </el-timeline-item>
                <el-timeline-item  placement="top" style="height: 70px;width: 200px">
                  <el-card :class="{aa:this.personData.flag3 === 'true'}">
                    <h4>{{this.personData.content3}}</h4>
                    <p></p>
                  </el-card>
                </el-timeline-item>
                <el-timeline-item  placement="top" style="height: 70px;width: 200px">
                  <el-card :class="{aa:this.personData.demoFlag1 === 'true'}">
                    <h4>{{this.personData.demo1}}</h4>
                    <p></p>
                  </el-card>
                </el-timeline-item>
                <el-timeline-item  placement="top" style="height: 70px;width: 200px">
                  <el-card :class="{aa:this.personData.flag4 === 'true'}">
                    <h4>{{this.personData.content4}}</h4>
                    <p></p>
                  </el-card>
                </el-timeline-item>
                <el-timeline-item  placement="top" style="height: 70px;width: 200px">
                  <el-card :class="{aa:this.personData.flag5 === 'true'}">
                    <h4>{{this.personData.content5}}</h4>
                    <p></p>
                  </el-card>
                </el-timeline-item>
                <el-timeline-item  placement="top" style="height: 70px;width: 200px">
                  <el-card :class="{aa:this.personData.demoFlag2 === 'true'}">
                    <h4>{{this.personData.demo2}}</h4>
                    <p></p>
                  </el-card>
                </el-timeline-item>
                <el-timeline-item  placement="top" style="height: 70px;width: 200px">
                  <el-card :class="{aa:this.personData.examFlag2 === 'true'}">
                    <h4>{{this.personData.exam2}}</h4>
                    <p></p>
                  </el-card>
                </el-timeline-item>
              </el-timeline>


            </div>
          </div>
        </div>
      <router-view/>
    </div>
<!--    <Live2d></Live2d>-->

  </div>
</template>

<script>
import Live2d from '@/components/live2d/index'
export default {
  name: 'App',
  components: {
    Live2d
  },
  data(){
    return{
      showHover: false,
      tableData: [],
      personData:[],
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      activities: [{
        content: '活动按期开始',
        timestamp: '2018-04-15'
      }, {
        content: '通过审核',
        timestamp: '2018-04-13'
      }, {
        content: '创建成功',
        timestamp: '2018-04-11'
      }],
      flag:false
    }
  },
  mounted() {
    this.loadPerson()
    this.loadNavigation()
  },
  methods: {
    begin(){
      this.flag = true
    },
    end(){
      this.flag = false
    },
    loadPerson(){
      this.$request.get('/navigation/selectByUserId/' +this.user.id).then(res=>{
        if (res.code === '200') {
          this.personData = res.data
          console.log((this.personData))
          console.log((this.personData.content1))
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loadNavigation(){
      let data = {userId:this.user.id}
      this.$request.post('/navigation/isCreate',data)

    },
  }
}
</script>

<style>
.aa {
  background-color: rgb(254,147,105) !important;
}
@import url('https://fonts.googleapis.com/css2?family=Raleway:wght@400;700&display=swap');

.w{
  position: relative;
  display: inline-block;
  padding: 25px 30px;
  margin: 40px 0;
  color: #03e9f4;
  text-decoration: none;
  text-transform: uppercase;
  transition: 0.5s;
  letter-spacing: 4px;
  overflow: hidden;
  margin-right: 50px;

}
.w:hover{
  background: #03e9f4;
  color: #050801;
  box-shadow: 0 0 5px #03e9f4,
  0 0 25px #03e9f4,
  0 0 50px #03e9f4,
  0 0 200px #03e9f4;
  -webkit-box-reflect:below 1px linear-gradient(transparent, #0005);
}
.w:nth-child(1){
  filter: hue-rotate(270deg);
}
.w:nth-child(2){
  filter: hue-rotate(110deg);
}
.w span{
  position: absolute;
  display: block;
}
.w span:nth-child(1){
  top: 0;
  left: 0;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg,transparent,#03e9f4);
  animation: animate1 1s linear infinite;
}
@keyframes animate1{
  0%{
    left: -100%;
  }
  50%,100%{
    left: 100%;
  }
}
.w span:nth-child(2){
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg,transparent,#03e9f4);
  animation: animate2 1s linear infinite;
  animation-delay: 0.25s;
}
@keyframes animate2{
  0%{
    top: -100%;
  }
  50%,100%{
    top: 100%;
  }
}
.w span:nth-child(3){
  bottom: 0;
  right: 0;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg,transparent,#03e9f4);
  animation: animate3 1s linear infinite;
  animation-delay: 0.50s;
}
@keyframes animate3{
  0%{
    right: -100%;
  }
  50%,100%{
    right: 100%;
  }
}


.w span:nth-child(4){
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg,transparent,#03e9f4);
  animation: animate4 1s linear infinite;
  animation-delay: 0.75s;
}
@keyframes animate4{
  0%{
    bottom: -100%;
  }
  50%,100%{
    bottom: 100%;
  }
}

</style>