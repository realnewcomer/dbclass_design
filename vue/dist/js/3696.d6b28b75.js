"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[3696],{3696:function(t,s,e){e.r(s),e.d(s,{default:function(){return u}});var i=function(){var t=this,s=t._self._c;return s("div",{staticClass:"main-content1"},[s("div",{staticStyle:{width:"70%",margin:"30px auto","min-height":"1000px"}},[s("div",{},[t._m(0),s("div",{staticStyle:{"margin-left":"1200px"}},[s("button",{staticStyle:{height:"50px",width:"100px","background-color":"deepskyblue",color:"black"},on:{click:t.submit}},[t._v("试题提交")])])]),s("div",{staticStyle:{"margin-top":"20px"}},[s("div",{staticStyle:{"font-size":"18px"}},[t._v("题库内容")]),t._l(t.question,(function(e,i){return s("div",{attrs:{keys:i}},[s("div",{staticStyle:{"font-size":"20px","margin-top":"10px","margin-bottom":"20px"}},[t._v(t._s(i+1)+"."+t._s(e.content))]),s("div",{staticStyle:{"font-size":"16px"}},[s("div",[s("span",[s("el-radio",{class:{answer:t.flag&&"是"===e.answer},attrs:{label:"是"},model:{value:e["studentAnswer"],callback:function(s){t.$set(e,"studentAnswer",s)},expression:"item['studentAnswer']"}},[t._v("√")])],1)]),s("div",[s("span",[s("el-radio",{class:{answer:t.flag&&"否"===e.answer},attrs:{label:"否"},model:{value:e["studentAnswer"],callback:function(s){t.$set(e,"studentAnswer",s)},expression:"item['studentAnswer']"}},[t._v("×")])],1)]),!0===t.flag?s("div",{staticClass:"detail"},[t._v("解析："+t._s(e.detail))]):t._e()])])}))],2)])])},a=[function(){var t=this,s=t._self._c;return s("div",{staticClass:"container"},[s("div",{staticClass:"box"},[s("div",{staticClass:"title"},[s("span",{staticClass:"block"}),s("h1",[t._v("小试牛刀2"),s("span")])])])])}],n={data(){let t=this.$route.query.id;return{questionId:t,questionData:{},judgeData:{},question:[],score:0,flag:!1}},mounted(){this.loadQuestion(),this.loadJudge()},methods:{loadQuestion(){this.$request.get("/allquestion/randomQuestion").then((t=>{"200"===t.code?this.question=t.data:this.$message.error(t.msg)}))},submit(){this.flag=!0,this.question.forEach((t=>{t.answer===t.studentAnswer&&(this.score+=2)})),this.$alert(this.score,"测验的成绩为",{confirmButtonText:"确定",callback:t=>{}})}}},l=n,o=e(3736),r=(0,o.Z)(l,i,a,!1,null,null,null),u=r.exports}}]);
//# sourceMappingURL=3696.d6b28b75.js.map