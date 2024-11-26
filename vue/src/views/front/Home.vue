<template>
  <!-- 用户页面设计 -->
  <div>

    <section class="parallax">
      <img src="../../../src/assets/imgs/home/hill1.png" id="hill1">
      <img src="../../../src/assets/imgs/home/hill2.png" id="hill2">
      <img src="../../../src/assets/imgs/home/hill3.png" id="hill3">
      <img src="../../../src/assets/imgs/home/hill4.png" id="hill4">
      <img src="../../../src/assets/imgs/home/hill5.png" id="hill5">
      <img src="../../../src/assets/imgs/home/tree.png" id="tree">
      <h2 id="text">online study</h2>
      <img src="../../../src/assets/imgs/home/leaf.png" id="leaf">
      <img src="../../../src/assets/imgs/home/plant.png" id="plant">
    </section>
    <!-- 用户页面设计 -->
    <div id="aaa">
      <div style="width: 80%;margin: 30px auto;min-height: 1300px">
        <div>
          <div style="display: flex">
            <div style="flex: 1">
              <span style="font-size: 24px; color: white; margin-right: 50px">在线课程</span>
              <el-button type="primary" @click="initValue('VIDEO')">视频课程</el-button>
            </div>
            <div style="width: 365px ">
              <el-button type="info" @click="signin">签到</el-button>
              <span style="margin-left: 10px; color: #12b127; font-weight: 550">上次签到：</span>
              <span style="color: white">{{ signInData?.time }}</span>
            </div>
          </div>
          <!-- 课程展示模块 -->
          <div style="display: flex; margin-top: 20px; height: 300px">
            <div style="flex: 1; margin-right: 10px; width: 0">
              <div><img src="../../assets/courseImg/1.png" alt="" style="width: 100%; height: 240px; border-radius: 5px;cursor: pointer;
          "class="image-class" @click="navTo1('/front/course1')"></div>
              <div style="font-size: 15px; margin-top: 5px" class="overflowShow" >第一章
              </div>
            </div>
            <div style="flex: 2; margin-left: 10px">
              <el-row :gutter="20">
                <el-col :span="6" >
                  <div><img src="../../assets/courseImg/2.png" alt="" style="width: 100%; height: 100px; border-radius: 5px;cursor: pointer" class="image-class" @click="navTo1('/front/course2')"></div>
                  <div style="color: white; margin-top: 10px;" class="overflowShow">第二章</div>
                </el-col>
                <el-col :span="6" >
                  <div><img src="../../assets/courseImg/3.png" alt="" style="width: 100%; height: 100px; border-radius: 5px;cursor: pointer" class="image-class" @click="navTo1('/front/course3')"></div>
                  <div style="color: white; margin-top: 10px" class="overflowShow">第三章
                  </div>
                </el-col>
                <el-col :span="6"   >
                  <div><img src="../../assets/courseImg/4.png" alt="" style="width: 100%; height: 100px; border-radius: 5px;cursor: pointer" class="image-class" @click="navTo1('/front/course4')"></div>
                  <div style="color: white; margin-top: 10px" class="overflowShow">第四章
                  </div>
                </el-col>
                <el-col :span="6"   >
                  <div><img src="../../assets/courseImg/5.png" alt="" style="width: 100%; height: 100px; border-radius: 5px;cursor: pointer" class="image-class" @click="navTo1('/front/course5')"></div>
                  <div style="color: white; margin-top: 10px" class="overflowShow">第五章
                  </div>
                </el-col>
                <el-col :span="6"   >
                  <div><img src="../../assets/courseImg/6.png" alt="" style="width: 100%; height: 100px; border-radius: 5px;cursor: pointer" class="image-class" @click="navTo1('/front/course6')"></div>
                  <div style="color: white; margin-top: 10px" class="overflowShow">第六章
                  </div>
                </el-col>
                <el-col :span="6"   >
                  <div><img src="../../assets/courseImg/7.png" alt="" style="width: 100%; height: 100px; border-radius: 5px;cursor: pointer" class="image-class" @click="navTo1('/front/course7')"></div>
                  <div style="color: white; margin-top: 10px" class="overflowShow">第七章
                  </div>
                </el-col>
                <el-col :span="6"   >
                  <div><img src="../../assets/courseImg/8.png" alt="" style="width: 100%; height: 100px; border-radius: 5px;cursor: pointer" class="image-class" @click="navTo1('/front/course8')"></div>
                  <div style="color: white; margin-top: 10px" class="overflowShow">第八章
                  </div>
                </el-col>
                <el-col :span="6"   >
                  <div><img src="../../assets/courseImg/9.png" alt="" style="width: 100%; height: 100px; border-radius: 5px;cursor: pointer" class="image-class" @click="navTo1('/front/course9')"></div>
                  <div style="color: white; margin-top: 10px" class="overflowShow">第九章
                  </div>
                </el-col>
              </el-row>
            </div>
          </div>


          <div style="margin-top: 50px;">
            <span style="font-size: 24px; ;color: white; margin-right: 50px;width: 160px">在线资源</span>
          </div>
          <div style="display: flex; margin-top: 20px; height: 300px">
            <div style="flex: 2; margin-right: 10px">
              <el-row :gutter="20">
                <el-col :span="6" style="margin-bottom: 35px" v-for = "item in leftData">
                  <div><img :src="item.img" alt="" style="width: 100%; height: 100px; border-radius: 5px;cursor: pointer" class="image-class" @click = "navToInformation(item.id)"></div>
                  <div style="color: white; margin-top: 10px" class="overflowShow">
                    {{ item.name }}</div>
                </el-col>
              </el-row>
            </div>
            <div style="flex: 1; margin-left: 10px; width: 0">
              <div><img :src="fileRecommend?.img" alt="" style="width: 100%; height: 270px; border-radius: 5px ; cursor:pointer;" class="image-class" @click ="navToInformation(fileRecommend.id)"></div>
              <div style="font-size: 15px; margin-top: 5px" class="overflowShow">{{fileRecommend?.name}}
              </div>
            </div>
          </div>

          <div style="margin-top: 50px;">
            <span style="font-size: 24px; ;color: white; margin-right: 50px;width: 160px">海量资源</span>
            <el-button type="success" @click="initValue('SCORE')">积分专区</el-button>
            <el-button type="warning" @click="initValue('TEXT')">图文课程</el-button>
          </div>
          <div style="display: flex; margin-top: 20px; height: 300px">
            <div style="flex: 2; margin-right: 10px">
              <el-row :gutter="20">
                <el-col :span="4" style="margin-bottom: 35px" v-for = "item in rightData">
                  <div><img :src="item.img" alt="" style="width: 100%; height: 100px; border-radius: 5px;cursor: pointer" class="image-class" @click = "navTo(item.id)"></div>
                  <div style="color: white; margin-top: 10px" class="overflowShow">
                    {{ item.name }}</div>
                </el-col>
              </el-row>
            </div>


          </div>

          <div style="margin-top: 100px;">
            <div style="font-size: 24px; ;color: white; margin-right: 50px;width: 160px;margin-top: 50px">猜你喜欢</div>
          </div>
          <div style="display: flex; margin-top: 20px; height: 300px">
            <div style="flex: 2; margin-right: 10px">
              <el-row :gutter="20">
                <el-col :span="4" v-for="item in recommendData" >
                  <img @click="navTo1('/front/courseDetail?id=' + item.id)" :src="item.img" alt="" style="width: 100%; height: 100px; border-radius: 10px; border: #cccccc 1px solid">
                  <div style="margin-top: 10px; font-weight: 500; font-size: 16px; width: 180px; color: white; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">{{item.name}}</div>
                </el-col>
              </el-row>
            </div>
            </div>
          </div>

        </div>


      </div>


  </div>

</template>

<script>

export default {

  data() {

    return {
      carouselData: [
        require('@/assets/imgs/return6.jpg'),
        require('@/assets/imgs/return11.jpg'),
        require('@/assets/imgs/return8.jpg'),
        require('@/assets/imgs/return9.jpg'),
      ],
      recommend: {},
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      type :'SCORE',
      rightData:[],
      recommendImg: {},
      fileRecommend :{},
      leftData:[],
      signInData:{},
      recommendData:[],
      showHover: false,
      tableData: [],
      personData:[],

    }
  },
  mounted() {
    this.getData()
    this.getInformation()
    this.getSign()
    this.loadRecommend()
    window.addEventListener('scroll', () => {
      let value = window.scrollY;
      let text = document.getElementById('text');
      let leaf = document.getElementById('leaf');
      let hill1 = document.getElementById('hill1');
      let hill4 = document.getElementById('hill4');
      let hill5 = document.getElementById('hill5');


      text.style.marginTop = value * 1.5 + 'px';
      leaf.style.top = value * -1.5 + 'px';
      leaf.style.left = value * 1.5 + 'px';
      hill5.style.left = value * 1.5 + 'px';
      hill4.style.left = value * -1.5 + 'px';
      hill1.style.top = value * 0.5 + 'px';
    })
  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    navTo(id) {
      if (this.type === 'SCORE') {
        // 我们往积分课程详情页跳
        location.href = '/front/scoreDetail?id=' + id
      } else {
        // 往课程详情页跳
        location.href = '/front/courseDetail?id=' + id
      }
    },
    navToScore(id){
      location.href='/front/scoreDetail?id=' + id
    },
    navTo1(url){
      location.href = url
    },
    navToInformation(id){
      location.href = '/front/informationDetail?id=' +id
    },
    getInformation() {
      // 1. 获取推荐的那个资料
      this.$request.get('/information/getRecommend').then(res => {
        if (res.code === '200') {
          this.fileRecommend = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
      // 2. 获取非推荐的8个资料
      this.$request.get('/information/selectTop8').then(res => {
        if (res.code === '200') {
          this.leftData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    initValue(type){
      this.type = type
      this.getData()
    },
    getData() {
      // 积分专区这边的数据
      if ('SCORE' === this.type) {
        // 1. 获取推荐的那个积分课程
        this.getRecommend('/score/getRecommend')
        // 2. 获取推荐之外的最新的8个课程
        this.getRightData('/score/getTop8')
      } else {
        // 1. 获取推荐的那个视频课程
        this.getRecommend('/course/getRecommend?type=' + 'TEXT')
        // 2. 获取推荐之外的最新的8个视频课程
        this.getRightData('/course/selectTop8?type=' + 'TEXT')
      }
    },

    getRecommend(url) {
      this.$request.get(url).then(res => {
        if (res.code === '200') {
          this.recommend = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    getRightData(url) {
      this.$request.get(url).then(res => {
        if (res.code === '200') {
          this.rightData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    getSign() {
      this.$request.get('/signin/selectByUserId?id=' + this.user.id).then(res => {
        if (res.code === '200') {
          // 渲染数据到页面
          this.signInData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    signin() {
      let data = {
        userId: this.user.id
      }
      this.$request.post('/signin/add', data).then(res => {
        if (res.code === '200') {
          this.$message.success('签到成功，恭喜你获得10个积分')
          this.getSign()
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loadRecommend() {
      this.$request.get('/course/recommend').then(res => {
        if (res.code === '200') {
          this.recommendData = res.data
        } else {

        }
      })
    },

  }
}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

.image-class:hover {
  box-shadow: 0 4px 8px 0 rgba(255, 255, 255, 0.8), 0 6px 20px 0 rgba(0, 0, 0, 0.5);
}



* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

::selection {
  background: rgba(0, 0, 0, .2);
}

body {
  background: #f9f9f9;
  min-height: 100vh;
  overflow-x: hidden;
}

header {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  padding: 30px 100px;
  display: flex;
  justify-content: flex-start;
  align-items: center;
  z-index: 100;
}

.logo {
  font-size: 2em;
  color: #359381;
  pointer-events: none;
  margin-right: 270px;
}

.navigation a {
  text-decoration: none;
  color: #359381;
  padding: 6px 15px;
  border-radius: 20px;
  margin: 0 10px;
  font-weight: 600;
}

.navigation a:hover,
.navigation a.active {
  background: #359381;
  color: #fff;
}

.parallax {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

#text {
  position: absolute;
  font-size: 5em;
  color: #fff;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, .2);
}

.parallax img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  pointer-events: none;
}

#aaa {
  position: relative;
  background: rgb(0,51,41);
  padding: 100px;
}

.sec h2 {
  font-size: 3em;
  color: #fff;
  margin-bottom: 10px;
}

.sec p {
  font-size: 1em;
  color: #fff;
  font-weight: 300;
}

.wrapper {
  width: 100%;
  perspective: 800;
}

.cube {
  position: relative;
  top: 160px;
  margin: 0 auto;
  height: 200px;
  width: 200px;

  animation : spin 5s infinite linear;
  transform-style: preserve-3d;
}

@keyframes spin {
  from { transform: rotateY(0) rotateX(0); }
  to   { transform: rotateY(-360deg) rotateX(360deg); }
}

.cube > div {
  position: absolute;
  height: 200px;
  width: 200px;
  border: 1px solid #333;
  opacity: .8;
}

.cube > div:hover {
  opacity: 1;
  transition: opacity .3s linear;
}

.one {
  transform: rotateX(90deg) translateZ(100px);
  background-color: #E3493B;
}

.two {
  transform: translateZ(100px);
  background-color: #23B5AF;
}

.three {
  transform: rotateY(90deg) translateZ(100px);
  background-color: #E8487F;
}

.four {
  transform: rotateY(180deg) translateZ(100px);
  background-color: #28B78D;
}

.five {
  transform: rotateY(-90deg) translateZ(100px);
  background-color: #FF5B00;
}

.six {
  transform: rotateX(-90deg) translateZ(100px);
  background-color: #FEEB51;
}

</style>