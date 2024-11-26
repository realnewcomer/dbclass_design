"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[5329],{5329:function(e,t,s){s.r(t),s.d(t,{default:function(){return c}});var r=function(){var e=this,t=e._self._c;return t("div",{staticClass:"main-content",staticStyle:{background:"white",width:"70%","margin-left":"250px"}},[t("el-card",{staticStyle:{margin:"30px auto"}},[t("div",{staticStyle:{"text-align":"right","margin-bottom":"20px"}},[t("el-button",{attrs:{type:"primary"},on:{click:e.updatePassword}},[e._v("修改密码")]),t("el-button",{attrs:{type:"warning"},on:{click:e.initRecharge}},[e._v("充值")])],1),t("el-form",{staticStyle:{"padding-right":"20px"},attrs:{model:e.user,"label-width":"80px"}},[t("div",{staticStyle:{margin:"15px","text-align":"center"}},[t("el-upload",{staticClass:"avatar-uploader",attrs:{action:e.$baseUrl+"/files/upload","show-file-list":!1,"on-success":e.handleAvatarSuccess}},[e.user.avatar?t("img",{staticClass:"avatar",attrs:{src:e.user.avatar}}):t("i",{staticClass:"el-icon-plus avatar-uploader-icon"})])],1),t("el-form-item",{attrs:{label:"用户名",prop:"username"}},[t("el-input",{attrs:{placeholder:"用户名",disabled:""},model:{value:e.user.username,callback:function(t){e.$set(e.user,"username",t)},expression:"user.username"}})],1),t("el-form-item",{attrs:{label:"姓名",prop:"name"}},[t("el-input",{attrs:{placeholder:"姓名"},model:{value:e.user.name,callback:function(t){e.$set(e.user,"name",t)},expression:"user.name"}})],1),t("el-form-item",{attrs:{label:"电话",prop:"phone"}},[t("el-input",{attrs:{placeholder:"电话"},model:{value:e.user.phone,callback:function(t){e.$set(e.user,"phone",t)},expression:"user.phone"}})],1),t("el-form-item",{attrs:{label:"邮箱",prop:"email"}},[t("el-input",{attrs:{placeholder:"邮箱"},model:{value:e.user.email,callback:function(t){e.$set(e.user,"email",t)},expression:"user.email"}})],1),t("el-form-item",{attrs:{label:"会员",prop:"member"}},[t("el-input",{attrs:{disabled:""},model:{value:e.user.member,callback:function(t){e.$set(e.user,"member",t)},expression:"user.member"}})],1),t("el-form-item",{attrs:{label:"积分",prop:"score"}},[t("el-input",{attrs:{disabled:""},model:{value:e.user.score,callback:function(t){e.$set(e.user,"score",t)},expression:"user.score"}})],1),t("el-form-item",{attrs:{label:"余额",prop:"account"}},[t("el-input",{attrs:{disabled:""},model:{value:e.user.account,callback:function(t){e.$set(e.user,"account",t)},expression:"user.account"}})],1),t("div",{staticStyle:{"text-align":"center","margin-bottom":"20px"}},[t("el-button",{attrs:{type:"primary"},on:{click:e.update}},[e._v("保 存")])],1)],1)],1),t("el-dialog",{attrs:{title:"修改密码",visible:e.dialogVisible,width:"30%","close-on-click-modal":!1,"destroy-on-close":""},on:{"update:visible":function(t){e.dialogVisible=t}}},[t("el-form",{ref:"formRef",staticStyle:{"padding-right":"20px"},attrs:{model:e.user,"label-width":"80px",rules:e.rules}},[t("el-form-item",{attrs:{label:"原始密码",prop:"password"}},[t("el-input",{attrs:{"show-password":"",placeholder:"原始密码"},model:{value:e.user.password,callback:function(t){e.$set(e.user,"password",t)},expression:"user.password"}})],1),t("el-form-item",{attrs:{label:"新密码",prop:"newPassword"}},[t("el-input",{attrs:{"show-password":"",placeholder:"新密码"},model:{value:e.user.newPassword,callback:function(t){e.$set(e.user,"newPassword",t)},expression:"user.newPassword"}})],1),t("el-form-item",{attrs:{label:"确认密码",prop:"confirmPassword"}},[t("el-input",{attrs:{"show-password":"",placeholder:"确认密码"},model:{value:e.user.confirmPassword,callback:function(t){e.$set(e.user,"confirmPassword",t)},expression:"user.confirmPassword"}})],1)],1),t("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[t("el-button",{on:{click:function(t){e.fromVisible=!1}}},[e._v("取 消")]),t("el-button",{attrs:{type:"primary"},on:{click:e.save}},[e._v("确 定")])],1)],1),t("el-dialog",{attrs:{title:"个人充值",visible:e.rechargeVisible,width:"30%","close-on-click-modal":!1,"destroy-on-close":""},on:{"update:visible":function(t){e.rechargeVisible=t}}},[t("el-form",{ref:"formRef",staticStyle:{"padding-right":"20px"},attrs:{model:e.user,"label-width":"80px",rules:e.rules}},[t("el-form-item",{attrs:{label:"充值说明"}},[t("span",{staticStyle:{color:"red"}},[e._v("充值一次性满500，可成为会员")])]),t("el-form-item",{attrs:{label:"充值金额"}},[t("el-input",{attrs:{placeholder:"请输入充值金额"},model:{value:e.account,callback:function(t){e.account=t},expression:"account"}})],1),t("el-form-item",{attrs:{label:"支付方式"}},[t("el-radio",{attrs:{label:"支付宝"},model:{value:e.type,callback:function(t){e.type=t},expression:"type"}},[e._v("支付宝")]),t("el-radio",{attrs:{label:"微信"},model:{value:e.type,callback:function(t){e.type=t},expression:"type"}},[e._v("微信")])],1)],1),t("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[t("el-button",{on:{click:function(t){e.rechargeVisible=!1}}},[e._v("取 消")]),t("el-button",{attrs:{type:"primary"},on:{click:e.recharge}},[e._v("确 定")])],1)],1)],1)},a=[],l=(s(7658),{data(){const e=(e,t,s)=>{""===t?s(new Error("请确认密码")):t!==this.user.newPassword?s(new Error("确认密码错误")):s()};return{user:JSON.parse(localStorage.getItem("xm-user")||"{}"),dialogVisible:!1,rechargeVisible:!1,account:null,type:"支付宝",rules:{password:[{required:!0,message:"请输入原始密码",trigger:"blur"}],newPassword:[{required:!0,message:"请输入新密码",trigger:"blur"}],confirmPassword:[{validator:e,required:!0,trigger:"blur"}]}}},created(){this.loadPerson()},methods:{recharge(){this.$request.get("/user/recharge?account="+this.account).then((e=>{"200"===e.code?(this.$message.success("充值成功"),this.loadPerson(),this.rechargeVisible=!1):this.$message.error(e.msg)}))},initRecharge(){this.rechargeVisible=!0},loadPerson(){this.$request.get("/user/selectById/"+this.user.id).then((e=>{"200"===e.code?(this.user=e.data,localStorage.setItem("xm-user",JSON.stringify(this.user))):this.$message.error(e.msg)}))},update(){this.$request.put("/user/update",this.user).then((e=>{"200"===e.code?(this.$message.success("保存成功"),localStorage.setItem("xm-user",JSON.stringify(this.user)),this.$emit("update:user")):this.$message.error(e.msg)}))},handleAvatarSuccess(e,t,s){this.$set(this.user,"avatar",e.data)},updatePassword(){this.dialogVisible=!0},save(){this.$refs.formRef.validate((e=>{e&&this.$request.put("/updatePassword",this.user).then((e=>{"200"===e.code?(this.$message.success("修改密码成功"),this.$router.push("/login")):this.$message.error(e.msg)}))}))}}}),o=l,i=s(3736),u=(0,i.Z)(o,r,a,!1,null,"6a0c5de2",null),c=u.exports}}]);
//# sourceMappingURL=5329.60122d0a.js.map