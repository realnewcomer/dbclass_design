"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[8204],{8204:function(t,e,a){a.r(e),a.d(e,{default:function(){return c}});var l=function(){var t=this,e=t._self._c;return e("div",{staticClass:"main-content"},[e("div",{staticStyle:{width:"70%",margin:"30px auto"}},[e("div",{staticStyle:{"margin-bottom":"20px"}},[e("el-input",{staticStyle:{width:"200px"},attrs:{placeholder:"请输入课程名称",size:"mini"},model:{value:t.name,callback:function(e){t.name=e},expression:"name"}}),e("el-button",{staticStyle:{"margin-left":"10px"},attrs:{type:"info",plain:"",size:"mini"},on:{click:function(e){return t.load(1)}}},[t._v("查询")]),e("el-button",{staticStyle:{"margin-left":"10px"},attrs:{type:"warning",plain:"",size:"mini"},on:{click:t.reset}},[t._v("重置")])],1),e("div",{staticClass:"table"},[e("el-table",{attrs:{data:t.tableData,stripe:""}},[e("el-table-column",{attrs:{prop:"id",label:"序号",width:"80",align:"center",sortable:""}}),e("el-table-column",{attrs:{prop:"img",label:"课程封面","show-overflow-tooltip":"",width:"200"},scopedSlots:t._u([{key:"default",fn:function(a){return[e("div",{staticStyle:{display:"flex","align-items":"center"}},[a.row.img?e("el-image",{staticStyle:{width:"60px",height:"40px","border-radius":"5px",border:"1px solid #cccccc"},attrs:{src:a.row.img,"preview-src-list":[a.row.img]}}):t._e()],1)]}}])}),e("el-table-column",{attrs:{prop:"name",label:"课程名称","show-overflow-tooltip":"",width:"400"},scopedSlots:t._u([{key:"default",fn:function(a){return[e("a",{attrs:{href:"/front/scoreDetail?id="+a.row.id}},[t._v(t._s(a.row.name))])]}}])}),e("el-table-column",{attrs:{prop:"type",label:"课程类型"},scopedSlots:t._u([{key:"default",fn:function(a){return["VIDEO"===a.row.type?e("span",{staticStyle:{color:"#b67259"}},[t._v("视频课")]):e("span",{staticStyle:{color:"#448231"}},[t._v("图文课")])]}}])}),e("el-table-column",{attrs:{prop:"price",label:"需要积分"},scopedSlots:t._u([{key:"default",fn:function(a){return[a.row.price>0?e("span",{staticStyle:{color:"#12b127","font-size":"15px"}},[t._v(t._s(a.row.price)+" 积分")]):e("span",{staticStyle:{color:"green"}},[t._v("公开课")])]}}])}),e("el-table-column",{attrs:{prop:"time",label:"发布时间"}})],1),e("div",{staticClass:"pagination",staticStyle:{"margin-top":"20px"}},[e("el-pagination",{attrs:{background:"","current-page":t.pageNum,"page-sizes":[5,10,20],"page-size":t.pageSize,layout:"total, prev, pager, next",total:t.total},on:{"current-change":t.handleCurrentChange}})],1)],1)])])},i=[],n={data(){return{user:JSON.parse(localStorage.getItem("xm-user")||"{}"),tableData:[],pageNum:1,pageSize:10,total:0,name:null}},mounted(){this.load(1)},methods:{load(t){t&&(this.pageNum=t),this.$request.get("/score/selectPage",{params:{pageNum:this.pageNum,pageSize:this.pageSize,name:this.name}}).then((t=>{this.tableData=t.data?.list,this.total=t.data?.total}))},reset(){this.name=null,this.load(1)},handleCurrentChange(t){this.load(t)}}},r=n,s=a(3736),o=(0,s.Z)(r,l,i,!1,null,null,null),c=o.exports}}]);
//# sourceMappingURL=8204.acd585c6.js.map