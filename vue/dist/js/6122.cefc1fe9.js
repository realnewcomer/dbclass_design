"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[6122],{6122:function(t,e,i){i.r(e),i.d(e,{default:function(){return c}});var s=function(){var t=this,e=t._self._c;return e("div",[t._m(0),e("div",{attrs:{id:"aaa"}},[e("div",{staticStyle:{width:"80%",margin:"30px auto","min-height":"1300px"}},[e("div",[e("div",{staticStyle:{display:"flex"}},[e("div",{staticStyle:{flex:"1"}},[e("span",{staticStyle:{"font-size":"24px",color:"white","margin-right":"50px"}},[t._v("在线课程")]),e("el-button",{attrs:{type:"primary"},on:{click:function(e){return t.initValue("VIDEO")}}},[t._v("视频课程")]),e("el-button",{attrs:{type:"success"},on:{click:function(e){return t.initValue("SCORE")}}},[t._v("积分专区")]),e("el-button",{attrs:{type:"warning"},on:{click:function(e){return t.initValue("TEXT")}}},[t._v("图文课程")])],1),e("div",{staticStyle:{width:"365px"}},[e("el-button",{attrs:{type:"info"},on:{click:t.signin}},[t._v("签到")]),e("span",{staticStyle:{"margin-left":"10px",color:"#12b127","font-weight":"550"}},[t._v("上次签到：")]),e("span",{staticStyle:{color:"white"}},[t._v(t._s(t.signInData?.time))])],1)]),e("div",{staticStyle:{display:"flex","margin-top":"20px",height:"300px"}},[e("div",{staticStyle:{flex:"1","margin-right":"10px",width:"0"}},[e("div",[e("img",{staticClass:"image-class",staticStyle:{width:"100%",height:"270px","border-radius":"5px",cursor:"pointer"},attrs:{src:t.recommend.img,alt:""},on:{click:function(e){return t.navTo(t.recommend.id)}}})]),e("div",{staticClass:"overflowShow",staticStyle:{"font-size":"15px","margin-top":"5px"}},[t._v(t._s(t.recommend.name)+" ")])]),e("div",{staticStyle:{flex:"2","margin-left":"10px"}},[e("el-row",{attrs:{gutter:20}},t._l(t.rightData,(function(i){return e("el-col",{staticStyle:{"margin-bottom":"35px"},attrs:{span:6}},[e("div",[e("img",{staticClass:"image-class",staticStyle:{width:"100%",height:"100px","border-radius":"5px",cursor:"pointer"},attrs:{src:i.img,alt:""},on:{click:function(e){return t.navTo(i.id)}}})]),e("div",{staticClass:"overflowShow",staticStyle:{color:"white","margin-top":"10px"}},[t._v(" "+t._s(i.name))])])})),1)],1)]),t._m(1),e("div",{staticStyle:{display:"flex","margin-top":"20px",height:"300px"}},[e("div",{staticStyle:{flex:"2","margin-right":"10px"}},[e("el-row",{attrs:{gutter:20}},t._l(t.leftData,(function(i){return e("el-col",{staticStyle:{"margin-bottom":"35px"},attrs:{span:6}},[e("div",[e("img",{staticClass:"image-class",staticStyle:{width:"100%",height:"100px","border-radius":"5px",cursor:"pointer"},attrs:{src:i.img,alt:""},on:{click:function(e){return t.navToInformation(i.id)}}})]),e("div",{staticClass:"overflowShow",staticStyle:{color:"white","margin-top":"10px"}},[t._v(" "+t._s(i.name))])])})),1)],1),e("div",{staticStyle:{flex:"1","margin-left":"10px",width:"0"}},[e("div",[e("img",{staticClass:"image-class",staticStyle:{width:"100%",height:"270px","border-radius":"5px",cursor:"pointer"},attrs:{src:t.fileRecommend?.img,alt:""},on:{click:function(e){return t.navToInformation(t.fileRecommend.id)}}})]),e("div",{staticClass:"overflowShow",staticStyle:{"font-size":"15px","margin-top":"5px"}},[t._v(t._s(t.fileRecommend?.name)+" ")])])]),t._m(2),e("div",{staticStyle:{display:"flex","margin-top":"20px",height:"300px"}},[e("div",{staticStyle:{flex:"2","margin-right":"10px"}},[e("el-row",{attrs:{gutter:20}},t._l(t.recommendData,(function(i){return e("el-col",{attrs:{span:5}},[e("img",{staticStyle:{width:"100%",height:"175px","border-radius":"10px",border:"#cccccc 1px solid"},attrs:{src:i.img,alt:""},on:{click:function(e){return t.navTo1("/front/courseDetail?id="+i.id)}}}),e("div",{staticStyle:{"margin-top":"10px","font-weight":"500","font-size":"16px",width:"180px",color:"white","text-overflow":"ellipsis",overflow:"hidden","white-space":"nowrap"}},[t._v(t._s(i.name))])])})),1)],1)])])])])])},r=[function(){var t=this,e=t._self._c;return e("section",{staticClass:"parallax"},[e("img",{attrs:{src:i(7977),id:"hill1"}}),e("img",{attrs:{src:i(8665),id:"hill2"}}),e("img",{attrs:{src:i(4776),id:"hill3"}}),e("img",{attrs:{src:i(6138),id:"hill4"}}),e("img",{attrs:{src:i(4559),id:"hill5"}}),e("img",{attrs:{src:i(200),id:"tree"}}),e("h2",{attrs:{id:"text"}},[t._v("online study")]),e("img",{attrs:{src:i(1102),id:"leaf"}}),e("img",{attrs:{src:i(623),id:"plant"}})])},function(){var t=this,e=t._self._c;return e("div",{staticStyle:{"margin-top":"50px"}},[e("div",{staticStyle:{"font-size":"24px",color:"white","margin-right":"50px",width:"160px"}},[t._v("在线资源")])])},function(){var t=this,e=t._self._c;return e("div",{staticStyle:{"margin-top":"100px"}},[e("div",{staticStyle:{"font-size":"24px",color:"white","margin-right":"50px",width:"160px","margin-top":"50px"}},[t._v("猜你喜欢")])])}],n={data(){return{carouselData:[i(3657),i(6235),i(604),i(1044)],recommend:{},user:JSON.parse(localStorage.getItem("xm-user")||"{}"),type:"VIDEO",rightData:[],recommendImg:{},fileRecommend:{},leftData:[],signInData:{},recommendData:[]}},mounted(){this.getData(),this.getInformation(),this.getSign(),this.loadRecommend(),window.addEventListener("scroll",(()=>{let t=window.scrollY,e=document.getElementById("text"),i=document.getElementById("leaf"),s=document.getElementById("hill1"),r=document.getElementById("hill4"),n=document.getElementById("hill5");e.style.marginTop=1.5*t+"px",i.style.top=-1.5*t+"px",i.style.left=1.5*t+"px",n.style.left=1.5*t+"px",r.style.left=-1.5*t+"px",s.style.top=.5*t+"px"}))},methods:{navTo(t){"SCORE"===this.type?location.href="/front/scoreDetail?id="+t:location.href="/front/courseDetail?id="+t},navTo1(t){location.href=t},navToInformation(t){location.href="/front/informationDetail?id="+t},getInformation(){this.$request.get("/information/getRecommend").then((t=>{"200"===t.code?this.fileRecommend=t.data:this.$message.error(t.msg)})),this.$request.get("/information/selectTop8").then((t=>{"200"===t.code?this.leftData=t.data:this.$message.error(t.msg)}))},initValue(t){this.type=t,this.getData()},getData(){"SCORE"===this.type?(this.getRecommend("/score/getRecommend"),this.getRightData("/score/getTop8")):(this.getRecommend("/course/getRecommend?type="+this.type),this.getRightData("/course/selectTop8?type="+this.type))},getRecommend(t){this.$request.get(t).then((t=>{"200"===t.code?this.recommend=t.data:this.$message.error(t.msg)}))},getRightData(t){this.$request.get(t).then((t=>{"200"===t.code?this.rightData=t.data:this.$message.error(t.msg)}))},getSign(){this.$request.get("/signin/selectByUserId?id="+this.user.id).then((t=>{"200"===t.code?this.signInData=t.data:this.$message.error(t.msg)}))},signin(){let t={userId:this.user.id};this.$request.post("/signin/add",t).then((t=>{"200"===t.code?(this.$message.success("签到成功，恭喜你获得10个积分"),this.getSign()):this.$message.error(t.msg)}))},loadRecommend(){this.$request.get("/course/recommend").then((t=>{"200"===t.code?this.recommendData=t.data:this.$message.error(t.msg)}))}}},a=n,o=i(3736),l=(0,o.Z)(a,s,r,!1,null,null,null),c=l.exports},7977:function(t,e,i){t.exports=i.p+"img/hill1.9cfe4bde.png"},8665:function(t,e,i){t.exports=i.p+"img/hill2.16039fc0.png"},4776:function(t,e,i){t.exports=i.p+"img/hill3.41fc328e.png"},6138:function(t,e,i){t.exports=i.p+"img/hill4.5cd1fe1c.png"},4559:function(t,e,i){t.exports=i.p+"img/hill5.8a42e80c.png"},1102:function(t,e,i){t.exports=i.p+"img/leaf.3ef00638.png"},623:function(t,e,i){t.exports=i.p+"img/plant.44118a69.png"},200:function(t,e,i){t.exports=i.p+"img/tree.4dd74a42.png"},6235:function(t,e,i){t.exports=i.p+"img/return11.78de7800.jpg"},3657:function(t,e,i){t.exports=i.p+"img/return6.630e8eb5.jpg"},604:function(t,e,i){t.exports=i.p+"img/return8.8ca7e815.jpg"},1044:function(t,e,i){t.exports=i.p+"img/return9.7067824e.jpg"}}]);
//# sourceMappingURL=6122.cefc1fe9.js.map