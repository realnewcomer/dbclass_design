"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[155],{155:function(t,i,e){e.r(i),e.d(i,{default:function(){return c}});var a=function(){var t=this,i=t._self._c;return i("div",{staticClass:"main-content"},[i("div",{staticStyle:{width:"70%",margin:"30px auto","min-height":"1000px"}},[i("div",{staticStyle:{"text-align":"center"}},[i("span",{staticStyle:{"font-size":"20px","font-weight":"550",color:"#333333","margin-left":"20px"}},[t._v(t._s(t.informationData.name))])]),i("div",{staticStyle:{"text-align":"center","margin-top":"15px"}},[t.informationData.score>0?i("span",{staticStyle:{color:"red"}},[t._v("下载该资源需要 "+t._s(t.informationData.score)+" 积分")]):i("span",{staticStyle:{color:"#12b127"}},[t._v("免费白嫖")]),i("span",{staticStyle:{color:"#666666","margin-left":"50px"}},[t._v("发布时间："+t._s(t.informationData.time))])]),i("div",[0===t.informationData.score||t.flag?i("div",[i("video",{staticStyle:{width:"100%",height:"600px"},attrs:{src:t.informationData.video,controls:""}}),i("div",{staticStyle:{"margin-top":"10px"}},[t._v("资料链接："),i("a",{attrs:{href:t.informationData.file,target:"_blank"}},[t._v(t._s(t.informationData.file))])])]):i("div",[i("span",{staticStyle:{color:"red","margin-right":"20px"}},[t._v("该资料需要积分，兑换后可解锁")]),i("el-button",{attrs:{type:"warning",size:"mini"},on:{click:t.exchange}},[t._v("兑换资料")])],1)]),i("div",{staticStyle:{"margin-top":"20px"}},[i("div",{staticStyle:{"font-size":"18px"}},[t._v("资料介绍")]),i("div",{staticClass:"w-e-text w-e-text-container",staticStyle:{"margin-top":"10px"},domProps:{innerHTML:t._s(t.informationData.content)}})])])])},n=[],s=(e(7438),{data(){let t=this.$route.query.id;return{user:JSON.parse(localStorage.getItem("xm-user")||"{}"),informationId:t,informationData:{},flag:!1}},mounted(){this.loadInformation()},methods:{loadInformation(){this.$request.get("/information/selectById/"+this.informationId).then((t=>{"200"===t.code?this.informationData=t.data:this.$message.error(t.msg)}))},check(){this.$request.get("/fileorder/selectAll",{params:{userId:this.user.id,fileId:this.informationId}}).then((t=>{"200"===t.code?t.data?.length>0&&(this.flag=!0):this.$message.error(t.msg)}))},exchange(){let t={fileId:this.informationId,userId:this.user.id,score:this.informationData.score};this.$request.post("/fileorder/add",t).then((t=>{"200"===t.code?(this.$message.success("兑换成功"),this.loadInformation(),this.check()):this.$message.error(t.msg)}))}}}),o=s,r=e(3736),l=(0,r.Z)(o,a,n,!1,null,null,null),c=l.exports}}]);
//# sourceMappingURL=155.6352e335.js.map