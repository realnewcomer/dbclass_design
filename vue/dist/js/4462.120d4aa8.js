"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[4462],{4462:function(e,t,a){a.r(t),a.d(t,{default:function(){return c}});var l=function(){var e=this,t=e._self._c;return t("div",[t("div",{staticClass:"search"},[t("el-input",{staticStyle:{width:"200px"},attrs:{placeholder:"请输入关键字查询"},model:{value:e.name,callback:function(t){e.name=t},expression:"name"}}),t("el-button",{staticStyle:{"margin-left":"10px"},attrs:{type:"info",plain:""},on:{click:function(t){return e.load(1)}}},[e._v("查询")]),t("el-button",{staticStyle:{"margin-left":"10px"},attrs:{type:"warning",plain:""},on:{click:e.reset}},[e._v("重置")])],1),t("div",{staticClass:"operation"},[t("el-button",{attrs:{type:"primary",plain:""},on:{click:e.handleAdd}},[e._v("新增")]),t("el-button",{attrs:{type:"danger",plain:""},on:{click:e.delBatch}},[e._v("批量删除")])],1),t("div",{staticClass:"table"},[t("el-table",{attrs:{data:e.tableData,strip:""},on:{"selection-change":e.handleSelectionChange}},[t("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),t("el-table-column",{attrs:{prop:"id",label:"序号",width:"70",align:"center",sortable:""}}),t("el-table-column",{attrs:{prop:"name",label:"名称"}}),t("el-table-column",{attrs:{prop:"type",label:"类型"},scopedSlots:e._u([{key:"default",fn:function(a){return[1===a.row.type?t("span",[e._v("选择题")]):e._e(),2===a.row.type?t("span",[e._v("判断题")]):e._e(),3===a.row.type?t("span",[e._v("问答题")]):e._e()]}}])}),t("el-table-column",{attrs:{prop:"content",label:"内容"}}),t("el-table-column",{attrs:{prop:"a",label:"a选项"}}),t("el-table-column",{attrs:{prop:"b",label:"b选项"}}),t("el-table-column",{attrs:{prop:"c",label:"c选项"}}),t("el-table-column",{attrs:{prop:"d",label:"d选项"}}),t("el-table-column",{attrs:{prop:"answer",label:"答案"}}),t("el-table-column",{attrs:{prop:"detail",label:"解析"}}),t("el-table-column",{attrs:{label:"操作",align:"center",width:"180"},scopedSlots:e._u([{key:"default",fn:function(a){return[t("el-button",{attrs:{size:"mini",type:"primary",plain:""},on:{click:function(t){return e.handleEdit(a.row)}}},[e._v("编辑")]),t("el-button",{attrs:{size:"mini",type:"danger",plain:""},on:{click:function(t){return e.del(a.row.id)}}},[e._v("删除")])]}}])})],1),t("div",{staticClass:"pagination"},[t("el-pagination",{attrs:{background:"","current-page":e.pageNum,"page-sizes":[5,10,20],"page-size":e.pageSize,layout:"total, prev, pager, next",total:e.total},on:{"current-change":e.handleCurrentChange}})],1)],1),t("el-dialog",{attrs:{title:"信息",visible:e.fromVisible,width:"40%","close-on-click-modal":!1,"destroy-on-close":""},on:{"update:visible":function(t){e.fromVisible=t}}},[t("el-form",{ref:"formRef",staticStyle:{"padding-right":"50px"},attrs:{model:e.form,"label-width":"150px",rules:e.rules}},[t("el-form-item",{attrs:{label:"类型"}},[t("el-select",{staticStyle:{width:"100%"},attrs:{clearable:"",placeholder:"请选择"},model:{value:e.form.type,callback:function(t){e.$set(e.form,"type",t)},expression:"form.type"}},e._l([{name:"选择题",value:1},{name:"判断题",value:2},{name:"问答题",value:3}],(function(e){return t("el-option",{key:e.value,attrs:{label:e.name,value:e.value}})})),1)],1),t("el-form-item",{attrs:{label:"内容",prop:"content"}},[t("el-input",{attrs:{placeholder:"内容"},model:{value:e.form.content,callback:function(t){e.$set(e.form,"content",t)},expression:"form.content"}})],1),1===e.form.type?t("el-form-item",{attrs:{label:"a选项",prop:"a"}},[t("el-input",{attrs:{placeholder:"a选项"},model:{value:e.form.a,callback:function(t){e.$set(e.form,"a",t)},expression:"form.a"}})],1):e._e(),1===e.form.type?t("el-form-item",{attrs:{label:"b选项",prop:"b"}},[t("el-input",{attrs:{placeholder:"b选项"},model:{value:e.form.b,callback:function(t){e.$set(e.form,"b",t)},expression:"form.b"}})],1):e._e(),1===e.form.type?t("el-form-item",{attrs:{label:"c选项",prop:"c"}},[t("el-input",{attrs:{placeholder:"c选项"},model:{value:e.form.c,callback:function(t){e.$set(e.form,"c",t)},expression:"form.c"}})],1):e._e(),1===e.form.type?t("el-form-item",{attrs:{label:"d选项",prop:"d"}},[t("el-input",{attrs:{placeholder:"d选项"},model:{value:e.form.d,callback:function(t){e.$set(e.form,"d",t)},expression:"form.d"}})],1):e._e(),1===e.form.type?t("el-form-item",{attrs:{label:"答案",prop:"answer"}},[t("el-radio",{attrs:{label:"A"},model:{value:e.form.answer,callback:function(t){e.$set(e.form,"answer",t)},expression:"form.answer"}},[e._v("A")]),t("el-radio",{attrs:{label:"B"},model:{value:e.form.answer,callback:function(t){e.$set(e.form,"answer",t)},expression:"form.answer"}},[e._v("B")]),t("el-radio",{attrs:{label:"C"},model:{value:e.form.answer,callback:function(t){e.$set(e.form,"answer",t)},expression:"form.answer"}},[e._v("C")]),t("el-radio",{attrs:{label:"D"},model:{value:e.form.answer,callback:function(t){e.$set(e.form,"answer",t)},expression:"form.answer"}},[e._v("D")])],1):e._e(),2===e.form.type?t("el-form-item",{attrs:{label:"答案",prop:"answer"}},[t("el-radio",{attrs:{label:"是"},model:{value:e.form.answer,callback:function(t){e.$set(e.form,"answer",t)},expression:"form.answer"}},[e._v("是")]),t("el-radio",{attrs:{label:"否"},model:{value:e.form.answer,callback:function(t){e.$set(e.form,"answer",t)},expression:"form.answer"}},[e._v("否")])],1):e._e(),3===e.form.type?t("el-form-item",{attrs:{label:"答案",prop:"answer"}},[t("el-input",{attrs:{type:"textarea",placeholder:"答案"},model:{value:e.form.answer,callback:function(t){e.$set(e.form,"answer",t)},expression:"form.answer"}})],1):e._e(),t("el-form-item",{attrs:{label:"解析",prop:"detail"}},[t("el-input",{attrs:{placeholder:"解析"},model:{value:e.form.detail,callback:function(t){e.$set(e.form,"detail",t)},expression:"form.detail"}})],1)],1),t("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[t("el-button",{on:{click:function(t){e.fromVisible=!1}}},[e._v("取 消")]),t("el-button",{attrs:{type:"primary"},on:{click:e.save}},[e._v("确 定")])],1)],1)],1)},r=[],s={name:"Allquestion",data(){return{tableData:[],pageNum:1,pageSize:10,total:0,name:null,fromVisible:!1,form:{},user:JSON.parse(localStorage.getItem("xm-user")||"{}"),rules:{},ids:[],courses:[],question:[]}},created(){this.load(1),this.$request.get("/course/selectAll").then((e=>{this.courses=e.data}))},methods:{handleAdd(){this.form={},this.fromVisible=!0},handleEdit(e){this.form=JSON.parse(JSON.stringify(e)),this.fromVisible=!0},save(){this.$refs.formRef.validate((e=>{e&&this.$request({url:this.form.id?"/allquestion/update":"/allquestion/add",method:this.form.id?"PUT":"POST",data:this.form}).then((e=>{"200"===e.code?(this.$message.success("保存成功"),this.load(1),this.fromVisible=!1):this.$message.error(e.msg)}))}))},del(e){this.$confirm("您确定删除吗？","确认删除",{type:"warning"}).then((t=>{this.$request.delete("/allquestion/delete/"+e).then((e=>{"200"===e.code?(this.$message.success("操作成功"),this.load(1)):this.$message.error(e.msg)}))})).catch((()=>{}))},handleSelectionChange(e){this.ids=e.map((e=>e.id))},delBatch(){this.ids.length?this.$confirm("您确定批量删除这些数据吗？","确认删除",{type:"warning"}).then((e=>{this.$request.delete("/allquestion/delete/batch",{data:this.ids}).then((e=>{"200"===e.code?(this.$message.success("操作成功"),this.load(1)):this.$message.error(e.msg)}))})).catch((()=>{})):this.$message.warning("请选择数据")},load(e){e&&(this.pageNum=e),this.$request.get("/allquestion/selectPage",{params:{pageNum:this.pageNum,pageSize:this.pageSize,name:this.name}}).then((e=>{"200"===e.code?(this.tableData=e.data?.list,this.total=e.data?.total):this.$message.error(e.msg)}))},reset(){this.name=null,this.load(1)},handleCurrentChange(e){this.load(e)},takePaper(){this.$request.get("/allquestion/randomJudge").then((e=>{this.question=e.data}))}}},o=s,n=a(3736),i=(0,n.Z)(o,l,r,!1,null,"5a9073a4",null),c=i.exports}}]);
//# sourceMappingURL=4462.120d4aa8.js.map