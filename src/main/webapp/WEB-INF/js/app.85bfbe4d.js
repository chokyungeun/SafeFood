(function(t){function e(e){for(var a,i,s=e[0],c=e[1],u=e[2],d=0,p=[];d<s.length;d++)i=s[d],Object.prototype.hasOwnProperty.call(o,i)&&o[i]&&p.push(o[i][0]),o[i]=0;for(a in c)Object.prototype.hasOwnProperty.call(c,a)&&(t[a]=c[a]);l&&l(e);while(p.length)p.shift()();return r.push.apply(r,u||[]),n()}function n(){for(var t,e=0;e<r.length;e++){for(var n=r[e],a=!0,s=1;s<n.length;s++){var c=n[s];0!==o[c]&&(a=!1)}a&&(r.splice(e--,1),t=i(i.s=n[0]))}return t}var a={},o={app:0},r=[];function i(e){if(a[e])return a[e].exports;var n=a[e]={i:e,l:!1,exports:{}};return t[e].call(n.exports,n,n.exports,i),n.l=!0,n.exports}i.m=t,i.c=a,i.d=function(t,e,n){i.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:n})},i.r=function(t){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},i.t=function(t,e){if(1&e&&(t=i(t)),8&e)return t;if(4&e&&"object"===typeof t&&t&&t.__esModule)return t;var n=Object.create(null);if(i.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var a in t)i.d(n,a,function(e){return t[e]}.bind(null,a));return n},i.n=function(t){var e=t&&t.__esModule?function(){return t["default"]}:function(){return t};return i.d(e,"a",e),e},i.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},i.p="/";var s=window["webpackJsonp"]=window["webpackJsonp"]||[],c=s.push.bind(s);s.push=e,s=s.slice();for(var u=0;u<s.length;u++)e(s[u]);var l=c;r.push([0,"chunk-vendors"]),n()})({0:function(t,e,n){t.exports=n("56d7")},"034f":function(t,e,n){"use strict";var a=n("85ec"),o=n.n(a);o.a},"17ff":function(t,e,n){},"2ce4":function(t,e,n){"use strict";var a=n("f862"),o=n.n(a);o.a},"31bd":function(t,e,n){},"56d7":function(t,e,n){"use strict";n.r(e);n("e260"),n("e6cf"),n("cca6"),n("a79d");var a=n("2b0e"),o=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{attrs:{id:"app"}},[n("TodoHeader"),n("router-view")],1)},r=[],i=n("8c4f"),s=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("header",[n("h2",[t._v("Q&A Test")]),n("div",[n("button",[n("router-link",{attrs:{to:"/input"}},[t._v("새 글 추가")])],1),t._v(" "),n("button",[n("router-link",{attrs:{to:"/list"}},[t._v("목록")])],1)])])},c=[],u={},l=u,d=(n("76a1"),n("2877")),p=Object(d["a"])(l,s,c,!1,null,"29c3493f",null),f=p.exports,m=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"inputBox shadow"},[n("table",{staticClass:"table table-striped"},[n("tr",[n("td",[t._v("ID")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.id,expression:"qna.id"}],attrs:{type:"text",placeholder:"ID 입력"},domProps:{value:t.qna.id},on:{input:function(e){e.target.composing||t.$set(t.qna,"id",e.target.value)}}})])]),n("tr",[n("td",[t._v("작성자")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.name,expression:"qna.name"}],attrs:{type:"text",placeholder:"이름 입력"},domProps:{value:t.qna.name},on:{input:function(e){e.target.composing||t.$set(t.qna,"name",e.target.value)}}})])]),n("tr",[n("td",[t._v("제목")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.title,expression:"qna.title"}],attrs:{type:"text",placeholder:"제목 입력",size:"42"},domProps:{value:t.qna.title},on:{input:function(e){e.target.composing||t.$set(t.qna,"title",e.target.value)}}})])]),n("tr",[n("td",[t._v("글내용")]),n("td",{attrs:{colspan:"4"}},[n("textarea",{directives:[{name:"model",rawName:"v-model",value:t.qna.content,expression:"qna.content"}],staticStyle:{width:"95%",height:"200px"},attrs:{name:"content",placeholder:"내용 입력"},domProps:{value:t.qna.content},on:{input:function(e){e.target.composing||t.$set(t.qna,"content",e.target.value)}}})])]),n("tr",[n("td",{staticClass:"text-center",attrs:{colspan:"4"}},[n("span",{staticClass:"addContainer",on:{click:t.addQna}},[n("div",{staticClass:"addBtn far fa-check-circle",attrs:{"aria-hidden":"true"}})])])])])])},h=[],v={GET_QNALIST:"getQnaList",GET_QNA:"getQna",ADD_QNA:"addQna",ADD_COMMENT:"addComment",REMOVE_QNA:"removeQna",UPDATE_QNA:"updateQna"},q={data:function(){return{qna:{title:"",id:"",content:"",name:""}}},methods:{addQna:function(){this.$store.dispatch(v.ADD_QNA,{qna:this.qna}),this.$router.push("/list"),this.clear()},clear:function(){this.todo={}}}},_=q,g=(n("ab68"),Object(d["a"])(_,m,h,!1,null,"59728564",null)),b=g.exports,w=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("ul",t._l(t.qnalist,(function(e){return n("li",{key:e.num},[n("i",{staticClass:"checkBtn fab fa-quora"}),n("span",{directives:[{name:"show",rawName:"v-show",value:null!=e.comment,expression:"qnaItem.comment != null"}],staticStyle:{"font-weight":"bold",color:"blue","font-size":"5px"}},[t._v("[답변완료] ")]),n("span",{on:{click:function(n){return t.getQna(e.num)}}},[t._v(t._s(e.title))]),n("span",{directives:[{name:"show",rawName:"v-show",value:e.wdate.substring(0,10)==(new Date).getFullYear()+"-"+((new Date).getMonth()+1)+"-"+(new Date).getDate(),expression:"\n          qnaItem.wdate.substring(0, 10) ==\n            new Date().getFullYear() +\n              '-' +\n              (new Date().getMonth() + 1) +\n              '-' +\n              new Date().getDate()\n        "}],staticStyle:{color:"red","font-size":"3px"}},[t._v(" New ")]),n("span",{staticClass:"removeBtn",attrs:{type:"button"},on:{click:function(n){return t.removeQna(e.num)}}},[n("i",{staticClass:"far fa-trash-alt"})])])})),0)])},x=[],Q={created:function(){this.$store.dispatch(v.GET_QNALIST)},computed:{qnalist:function(){return this.$store.state.qnalist}},methods:{removeQna:function(t){this.$store.dispatch(v.REMOVE_QNA,{num:t})},getQna:function(t){this.$router.push("/detail/"+t)}}},N=Q,T=(n("f017"),Object(d["a"])(N,w,x,!1,null,"2df56857",null)),y=T.exports,A=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("table",{staticClass:"table text-center"},[t._m(0),n("tbody",[n("tr",[n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.num))]),n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.content))]),n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.wdate))]),n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.name))]),n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.comment))])])])]),n("button",{on:{click:function(e){return t.updateQna(t.qna)}}},[t._v("질문 수정")]),n("br"),n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.comment,expression:"qna.comment"}],attrs:{type:"text",placeholder:"댓글 입력",size:"42"},domProps:{value:t.qna.comment},on:{input:function(e){e.target.composing||t.$set(t.qna,"comment",e.target.value)}}}),n("button",{directives:[{name:"show",rawName:"v-show",value:"admin"==t.qna.id,expression:"qna.id == 'admin'"}],on:{click:function(e){return t.addComment()}}},[t._v("댓글 입력")])])},E=[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("thead",[n("tr",[n("th",{attrs:{width:"100",bgcolor:"#ffeded"}},[t._v("번호")]),n("th",{attrs:{width:"200",bgcolor:"#ffeded"}},[t._v("내용")]),n("th",{attrs:{width:"100",bgcolor:"#ffeded"}},[t._v("작성날짜")]),n("th",{attrs:{width:"150",bgcolor:"#ffeded"}},[t._v("작성자")]),n("th",{attrs:{width:"150",bgcolor:"#ffeded"}},[t._v("댓글")])])])}],O={created:function(){this.getQna(this.$route.params.num)},computed:{qna:function(){return this.$store.state.qna}},methods:{getQna:function(t){this.$store.dispatch(v.GET_QNA,{num:t})},addComment:function(){this.$store.dispatch(v.ADD_COMMENT,{qna:this.qna})},updateQna:function(t){this.$router.push("/update/"+t)},clear:function(){this.todo={}}}},$=O,D=(n("b6a6"),Object(d["a"])($,A,E,!1,null,"4ad2fe73",null)),j=D.exports,C=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"inputBox shadow"},[n("table",{staticClass:"table table-striped"},[n("tr",[n("td",[t._v("ID")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.id,expression:"qna.id"}],attrs:{type:"text",readonly:""},domProps:{value:t.qna.id},on:{input:function(e){e.target.composing||t.$set(t.qna,"id",e.target.value)}}})])]),n("tr",[n("td",[t._v("작성자")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.name,expression:"qna.name"}],attrs:{type:"text",readonly:""},domProps:{value:t.qna.name},on:{input:function(e){e.target.composing||t.$set(t.qna,"name",e.target.value)}}})])]),n("tr",[n("td",[t._v("제목")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.title,expression:"qna.title"}],attrs:{type:"text",size:"42",readonly:""},domProps:{value:t.qna.title},on:{input:function(e){e.target.composing||t.$set(t.qna,"title",e.target.value)}}})])]),n("tr",[n("td",[t._v("글내용")]),n("td",{attrs:{colspan:"4"}},[n("textarea",{directives:[{name:"model",rawName:"v-model",value:t.qna.content,expression:"qna.content"}],staticStyle:{width:"95%",height:"200px"},attrs:{name:"content"},domProps:{value:t.qna.content},on:{input:function(e){e.target.composing||t.$set(t.qna,"content",e.target.value)}}})])]),n("tr",[n("td",{staticClass:"text-center",attrs:{colspan:"4"}},[n("span",{staticClass:"addContainer",on:{click:t.updateQna}},[n("div",{staticClass:"addBtn far fa-check-circle",attrs:{"aria-hidden":"true"}})])])])])])},P=[],S={data:function(){return{qna2:{title:"",id:"",content:"",name:""}}},created:function(){return this.$route.params.qna},computed:{qna:function(){return this.$store.state.qna}},methods:{updateQna:function(){console.log("qna2 d알려ㅜ"),console.log(this.qna),this.$store.dispatch(v.UPDATE_QNA,{qna:this.qna}),this.$router.push("/list"),this.clear()},clear:function(){this.todo={}}}},M=S,k=(n("2ce4"),Object(d["a"])(M,C,P,!1,null,"657ffc62",null)),G=k.exports;a["a"].use(i["a"]);var I,L,B=new i["a"]({routes:[{path:"/",component:y},{path:"/input",component:b},{path:"/list",component:y},{path:"/detail/:num",component:j},{path:"/update/:qna",component:G}]}),z={name:"app",router:B,components:{TodoHeader:f}},R=z,U=(n("034f"),Object(d["a"])(R,o,r,!1,null,null,null)),V=U.exports,F=n("2fa7"),H=n("2f62"),J=n("bc3a"),Y=n.n(J),K=Y.a.create({baseURL:"http://localhost:8080",headers:{"Content-type":"application/json"}});a["a"].use(H["a"]);var W=new H["a"].Store({state:{qnalist:[],qna:{}},actions:(I={},Object(F["a"])(I,v.GET_QNALIST,(function(t){K.get("/qna/all").then((function(e){t.commit(v.GET_QNALIST,{qnalist:e.data}),console.log(e.data)})).catch((function(t){return alert("getQnaList처리에 실패하였습니다. "+t)}))})),Object(F["a"])(I,v.GET_QNA,(function(t,e){console.log("여기는 get",e.num),K.get("/qna/read/"+e.num).then((function(e){t.commit(v.GET_QNA,{qna:e.data}),console.log(e.data)})).catch((function(t){return alert("get_qna 처리에 실패하였습니다. "+t)}))})),Object(F["a"])(I,v.ADD_QNA,(function(t,e){K.post("/qna/insert/",e.qna).then((function(e){t.dispatch(v.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("postqnalist처리에 실패하였습니다. "+t)}))})),Object(F["a"])(I,v.REMOVE_QNA,(function(t,e){K.delete("/qna/delete/"+e.num).then((function(e){t.dispatch(v.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("deleteqna처리에 실패하였습니다. "+t)}))})),Object(F["a"])(I,v.ADD_COMMENT,(function(t,e){K.put("/qna/insertcomment/",e.qna).then((function(e){t.dispatch(v.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("putqnacomment처리에 실패하였습니다. "+t)}))})),Object(F["a"])(I,v.UPDATE_QNA,(function(t,e){K.put("/qna/update/",e.qna).then((function(e){t.dispatch(v.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("updateqna처리에 실패하였습니다. "+t)}))})),I),mutations:(L={},Object(F["a"])(L,v.GET_QNALIST,(function(t,e){t.qnalist=e.qnalist})),Object(F["a"])(L,v.GET_QNA,(function(t,e){t.qna=e.qna})),Object(F["a"])(L,v.ADD_COMMENT,(function(t,e){t.message=e.message})),L)}),X=W;a["a"].config.productionTip=!1,new a["a"]({render:function(t){return t(V)},store:X}).$mount("#app")},"76a1":function(t,e,n){"use strict";var a=n("17ff"),o=n.n(a);o.a},"7db6":function(t,e,n){},"85ec":function(t,e,n){},"93c1":function(t,e,n){},ab68:function(t,e,n){"use strict";var a=n("7db6"),o=n.n(a);o.a},b6a6:function(t,e,n){"use strict";var a=n("93c1"),o=n.n(a);o.a},f017:function(t,e,n){"use strict";var a=n("31bd"),o=n.n(a);o.a},f862:function(t,e,n){}});
//# sourceMappingURL=app.85bfbe4d.js.map