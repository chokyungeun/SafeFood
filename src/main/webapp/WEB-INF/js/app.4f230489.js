(function(t){function e(e){for(var a,i,c=e[0],s=e[1],u=e[2],d=0,p=[];d<c.length;d++)i=c[d],Object.prototype.hasOwnProperty.call(o,i)&&o[i]&&p.push(o[i][0]),o[i]=0;for(a in s)Object.prototype.hasOwnProperty.call(s,a)&&(t[a]=s[a]);l&&l(e);while(p.length)p.shift()();return r.push.apply(r,u||[]),n()}function n(){for(var t,e=0;e<r.length;e++){for(var n=r[e],a=!0,c=1;c<n.length;c++){var s=n[c];0!==o[s]&&(a=!1)}a&&(r.splice(e--,1),t=i(i.s=n[0]))}return t}var a={},o={app:0},r=[];function i(e){if(a[e])return a[e].exports;var n=a[e]={i:e,l:!1,exports:{}};return t[e].call(n.exports,n,n.exports,i),n.l=!0,n.exports}i.m=t,i.c=a,i.d=function(t,e,n){i.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:n})},i.r=function(t){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},i.t=function(t,e){if(1&e&&(t=i(t)),8&e)return t;if(4&e&&"object"===typeof t&&t&&t.__esModule)return t;var n=Object.create(null);if(i.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var a in t)i.d(n,a,function(e){return t[e]}.bind(null,a));return n},i.n=function(t){var e=t&&t.__esModule?function(){return t["default"]}:function(){return t};return i.d(e,"a",e),e},i.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},i.p="/";var c=window["webpackJsonp"]=window["webpackJsonp"]||[],s=c.push.bind(c);c.push=e,c=c.slice();for(var u=0;u<c.length;u++)e(c[u]);var l=s;r.push([0,"chunk-vendors"]),n()})({0:function(t,e,n){t.exports=n("56d7")},"034f":function(t,e,n){"use strict";var a=n("85ec"),o=n.n(a);o.a},"1f8b":function(t,e,n){"use strict";var a=n("3834"),o=n.n(a);o.a},3834:function(t,e,n){},"56d7":function(t,e,n){"use strict";n.r(e);n("e260"),n("e6cf"),n("cca6"),n("a79d");var a=n("2b0e"),o=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{attrs:{id:"app"}},[n("TodoHeader"),n("router-view")],1)},r=[],i=n("8c4f"),c=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("header",[n("h2",[t._v("Q&A Test")]),n("div",[n("button",[n("router-link",{attrs:{to:"/input"}},[t._v("새 글 추가")])],1),n("button",[n("router-link",{attrs:{to:"/list"}},[t._v("목록")])],1)])])},s=[],u={},l=u,d=(n("a0be"),n("2877")),p=Object(d["a"])(l,c,s,!1,null,"00910eef",null),f=p.exports,m=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"inputBox shadow"},[n("table",{staticClass:"table table-striped"},[n("tr",[n("td",[t._v("ID")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.id,expression:"qna.id"}],attrs:{type:"text",placeholder:"ID 입력"},domProps:{value:t.qna.id},on:{input:function(e){e.target.composing||t.$set(t.qna,"id",e.target.value)}}})])]),n("tr",[n("td",[t._v("작성자")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.name,expression:"qna.name"}],attrs:{type:"text",placeholder:"이름 입력"},domProps:{value:t.qna.name},on:{input:function(e){e.target.composing||t.$set(t.qna,"name",e.target.value)}}})])]),n("tr",[n("td",[t._v("제목")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.title,expression:"qna.title"}],attrs:{type:"text",placeholder:"제목 입력",size:"42"},domProps:{value:t.qna.title},on:{input:function(e){e.target.composing||t.$set(t.qna,"title",e.target.value)}}})])]),n("tr",[n("td",[t._v("글내용")]),n("td",{attrs:{colspan:"4"}},[n("textarea",{directives:[{name:"model",rawName:"v-model",value:t.qna.content,expression:"qna.content"}],staticStyle:{width:"95%",height:"200px"},attrs:{name:"content",placeholder:"내용 입력"},domProps:{value:t.qna.content},on:{input:function(e){e.target.composing||t.$set(t.qna,"content",e.target.value)}}})])]),n("tr",[n("td",{staticClass:"text-center",attrs:{colspan:"4"}},[n("span",{staticClass:"addContainer",on:{click:t.addQna}},[n("div",{staticClass:"addBtn far fa-check-circle",attrs:{"aria-hidden":"true"}})])])])])])},h=[],v={GET_QNALIST:"getQnaList",GET_QNA:"getQna",ADD_QNA:"addQna",ADD_COMMENT:"addComment",REMOVE_QNA:"removeQna",UPDATE_QNA:"updateQna"},_={data:function(){return{qna:{title:"",id:"",content:"",name:""}}},methods:{addQna:function(){this.$store.dispatch(v.ADD_QNA,{qna:this.qna}),this.$router.push("/list"),this.clear()},clear:function(){this.todo={}}}},g=_,b=(n("1f8b"),Object(d["a"])(g,m,h,!1,null,"e3be3ce4",null)),q=b.exports,w=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("ul",t._l(t.qnalist,(function(e){return n("li",{key:e.num},[n("i",{staticClass:"checkBtn fab fa-quora"}),n("span",{directives:[{name:"show",rawName:"v-show",value:null!=e.comment,expression:"qnaItem.comment!=null"}],staticStyle:{"font-weight":"bold",color:"blue","font-size":"5px"}},[t._v("[답변완료] ")]),n("span",{on:{click:function(n){return t.getQna(e.num)}}},[t._v(t._s(e.title))]),n("span",{directives:[{name:"show",rawName:"v-show",value:e.wdate.substring(0,10)==(new Date).getFullYear()+"-"+((new Date).getMonth()+1)+"-"+(new Date).getDate(),expression:"qnaItem.wdate.substring(0,10)==(new Date().getFullYear()+'-'+(new Date().getMonth()+1)+'-'+new Date().getDate())"}],staticStyle:{color:"red","font-size":"3px"}},[t._v(" New ")]),n("span",{staticClass:"removeBtn",attrs:{type:"button"},on:{click:function(n){return t.removeQna(e.num)}}},[n("i",{staticClass:"far fa-trash-alt"})])])})),0)])},Q=[],N={created:function(){this.$store.dispatch(v.GET_QNALIST)},computed:{qnalist:function(){return this.$store.state.qnalist}},methods:{removeQna:function(t){this.$store.dispatch(v.REMOVE_QNA,{num:t})},getQna:function(t){this.$router.push("/detail/"+t)}}},T=N,A=(n("780f"),Object(d["a"])(T,w,Q,!1,null,"17b2f02a",null)),E=A.exports,O=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("table",{staticClass:"table text-center"},[t._m(0),n("tbody",[n("tr",[n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.num))]),n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.content))]),n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.wdate))]),n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.name))]),n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.comment))])])])]),n("button",{on:{click:function(e){return t.updateQna(t.qna)}}},[t._v("질문 수정")]),n("br"),n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.comment,expression:"qna.comment"}],attrs:{type:"text",placeholder:"댓글 입력",size:"42"},domProps:{value:t.qna.comment},on:{input:function(e){e.target.composing||t.$set(t.qna,"comment",e.target.value)}}}),n("button",{directives:[{name:"show",rawName:"v-show",value:"admin"==t.qna.id,expression:"qna.id=='admin'"}],on:{click:function(e){return t.addComment()}}},[t._v("댓글 입력")])])},x=[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("thead",[n("tr",[n("th",{attrs:{width:"100",bgcolor:"#ffeded"}},[t._v("번호")]),n("th",{attrs:{width:"200",bgcolor:"#ffeded"}},[t._v("내용")]),n("th",{attrs:{width:"100",bgcolor:"#ffeded"}},[t._v("작성날짜")]),n("th",{attrs:{width:"150",bgcolor:"#ffeded"}},[t._v("작성자")]),n("th",{attrs:{width:"150",bgcolor:"#ffeded"}},[t._v("댓글")])])])}],y={created:function(){this.getQna(this.$route.params.num)},computed:{qna:function(){return this.$store.state.qna}},methods:{getQna:function(t){this.$store.dispatch(v.GET_QNA,{num:t})},addComment:function(){this.$store.dispatch(v.ADD_COMMENT,{qna:this.qna})},updateQna:function(t){this.$router.push("/update/"+t)},clear:function(){this.todo={}}}},D=y,j=(n("e765"),Object(d["a"])(D,O,x,!1,null,"f113126e",null)),$=j.exports;a["a"].use(i["a"]);var C,S,M=new i["a"]({mode:"history",routes:[{path:"/",component:E},{path:"/input",component:q},{path:"/list",component:E},{path:"/detail/:num",component:$}]}),G={name:"app",router:M,components:{TodoHeader:f}},P=G,k=(n("034f"),Object(d["a"])(P,o,r,!1,null,null,null)),I=k.exports,L=n("2fa7"),z=n("2f62"),B=n("bc3a"),R=n.n(B),U=R.a.create({baseURL:"http://localhost:8080",headers:{"Content-type":"application/json"}});a["a"].use(z["a"]);var V=new z["a"].Store({state:{qnalist:[],qna:{}},actions:(C={},Object(L["a"])(C,v.GET_QNALIST,(function(t){U.get("/qna/all").then((function(e){t.commit(v.GET_QNALIST,{qnalist:e.data}),console.log(e.data)})).catch((function(t){return alert("getQnaList처리에 실패하였습니다. "+t)}))})),Object(L["a"])(C,v.GET_QNA,(function(t,e){console.log("여기는 get",e.num),U.get("/qna/read/"+e.num).then((function(e){t.commit(v.GET_QNA,{qna:e.data}),console.log(e.data)})).catch((function(t){return alert("get_qna 처리에 실패하였습니다. "+t)}))})),Object(L["a"])(C,v.ADD_QNA,(function(t,e){U.post("/qna/insert/",e.qna).then((function(e){t.dispatch(v.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("postqnalist처리에 실패하였습니다. "+t)}))})),Object(L["a"])(C,v.REMOVE_QNA,(function(t,e){U.delete("/qna/delete/"+e.num).then((function(e){t.dispatch(v.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("deleteqna처리에 실패하였습니다. "+t)}))})),Object(L["a"])(C,v.ADD_COMMENT,(function(t,e){U.put("/qna/insertcomment/",e.qna).then((function(e){t.dispatch(v.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("putqnacomment처리에 실패하였습니다. "+t)}))})),Object(L["a"])(C,v.UPDATE_QNA,(function(t,e){U.put("/qna/update/",e.qna).then((function(e){t.dispatch(v.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("updateqna처리에 실패하였습니다. "+t)}))})),C),mutations:(S={},Object(L["a"])(S,v.GET_QNALIST,(function(t,e){t.qnalist=e.qnalist})),Object(L["a"])(S,v.GET_QNA,(function(t,e){t.qna=e.qna})),Object(L["a"])(S,v.ADD_COMMENT,(function(t,e){t.message=e.message})),S)}),F=V;a["a"].config.productionTip=!1,new a["a"]({render:function(t){return t(I)},store:F}).$mount("#app")},6691:function(t,e,n){},"780f":function(t,e,n){"use strict";var a=n("8605"),o=n.n(a);o.a},"85ec":function(t,e,n){},8605:function(t,e,n){},a0be:function(t,e,n){"use strict";var a=n("ce29"),o=n.n(a);o.a},ce29:function(t,e,n){},e765:function(t,e,n){"use strict";var a=n("6691"),o=n.n(a);o.a}});
//# sourceMappingURL=app.4f230489.js.map