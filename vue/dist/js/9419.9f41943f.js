"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[9419],{9419:function(t,e,s){s.r(e),s.d(e,{default:function(){return u}});var a=function(){var t=this,e=t._self._c;return e("div",{staticClass:"main-content1"},[e("div",{staticStyle:{width:"70%",margin:"30px auto","min-height":"1000px"}},[e("div",{},[t._m(0),e("div",{staticStyle:{"margin-left":"1200px"}},[e("button",{staticStyle:{height:"50px",width:"100px","background-color":"deepskyblue",color:"black"},on:{click:t.submit}},[t._v("试题提交")])])]),e("div",{staticStyle:{"margin-top":"20px"}},[e("div",{staticStyle:{"font-size":"18px"}},[t._v("题库内容")]),t._l(t.question,(function(s,a){return e("div",{attrs:{keys:a}},[e("div",{staticStyle:{"font-size":"20px","margin-top":"10px","margin-bottom":"20px"}},[t._v(t._s(a+1)+"."+t._s(s.content))]),e("div",{staticStyle:{"font-size":"16px"}},[e("div",[e("el-radio",{class:{answer:t.flag&&"A"===s.answer},attrs:{label:"A"},model:{value:s["studentAnswer"],callback:function(e){t.$set(s,"studentAnswer",e)},expression:"item['studentAnswer']"}},[t._v("A."+t._s(s.a))])],1),e("div",[e("el-radio",{class:{answer:t.flag&&"B"===s.answer},attrs:{label:"B"},model:{value:s["studentAnswer"],callback:function(e){t.$set(s,"studentAnswer",e)},expression:"item['studentAnswer']"}},[t._v("B."+t._s(s.b))])],1),e("div",[e("el-radio",{class:{answer:t.flag&&"C"===s.answer},attrs:{label:"C"},model:{value:s["studentAnswer"],callback:function(e){t.$set(s,"studentAnswer",e)},expression:"item['studentAnswer']"}},[t._v("C."+t._s(s.c))])],1),e("div",[e("el-radio",{class:{answer:t.flag&&"D"===s.answer},attrs:{label:"D"},model:{value:s["studentAnswer"],callback:function(e){t.$set(s,"studentAnswer",e)},expression:"item['studentAnswer']"}},[t._v("D."+t._s(s.d))])],1),!0===t.flag?e("div",{staticClass:"detail"},[t._v("解析："+t._s(s.detail))]):t._e()])])}))],2)])])},n=[function(){var t=this,e=t._self._c;return e("div",{staticClass:"container"},[e("div",{staticClass:"box"},[e("div",{staticClass:"title"},[e("span",{staticClass:"block"}),e("h1",[t._v("小试牛刀1"),e("span")])])])])}],i={data(){let t=this.$route.query.id;return{questionId:t,questionData:{},judgeData:{},question:[],score:0,flag:!1}},mounted(){this.loadQuestion(),this.loadJudge()},methods:{loadQuestion(){this.$request.get("/allquestion/randomJudge").then((t=>{"200"===t.code?this.question=t.data:this.$message.error(t.msg)}))},loadJudge(){this.$request.get("/judge/selectAll").then((t=>{"200"===t.code?this.judgeData=t.data:this.$message.error(t.msg)}))},submit(){this.flag=!0,this.question.forEach((t=>{t.answer===t.studentAnswer&&(this.score+=2)})),this.$alert(this.score,"测验的成绩为",{confirmButtonText:"确定",callback:t=>{}})}}},l=i,r=s(3736),o=(0,r.Z)(l,a,n,!1,null,null,null),u=o.exports}}]);
//# sourceMappingURL=9419.9f41943f.js.map