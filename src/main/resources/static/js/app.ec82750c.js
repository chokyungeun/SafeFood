(function(t){function e(e){for(var a,c,i=e[0],s=e[1],u=e[2],d=0,f=[];d<i.length;d++)c=i[d],Object.prototype.hasOwnProperty.call(o,c)&&o[c]&&f.push(o[c][0]),o[c]=0;for(a in s)Object.prototype.hasOwnProperty.call(s,a)&&(t[a]=s[a]);l&&l(e);while(f.length)f.shift()();return r.push.apply(r,u||[]),n()}function n(){for(var t,e=0;e<r.length;e++){for(var n=r[e],a=!0,i=1;i<n.length;i++){var s=n[i];0!==o[s]&&(a=!1)}a&&(r.splice(e--,1),t=c(c.s=n[0]))}return t}var a={},o={app:0},r=[];function c(e){if(a[e])return a[e].exports;var n=a[e]={i:e,l:!1,exports:{}};return t[e].call(n.exports,n,n.exports,c),n.l=!0,n.exports}c.m=t,c.c=a,c.d=function(t,e,n){c.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:n})},c.r=function(t){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},c.t=function(t,e){if(1&e&&(t=c(t)),8&e)return t;if(4&e&&"object"===typeof t&&t&&t.__esModule)return t;var n=Object.create(null);if(c.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var a in t)c.d(n,a,function(e){return t[e]}.bind(null,a));return n},c.n=function(t){var e=t&&t.__esModule?function(){return t["default"]}:function(){return t};return c.d(e,"a",e),e},c.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},c.p="/";var i=window["webpackJsonp"]=window["webpackJsonp"]||[],s=i.push.bind(i);i.push=e,i=i.slice();for(var u=0;u<i.length;u++)e(i[u]);var l=s;r.push([0,"chunk-vendors"]),n()})({0:function(t,e,n){t.exports=n("56d7")},"034f":function(t,e,n){"use strict";var a=n("85ec"),o=n.n(a);o.a},2315:function(t,e,n){"use strict";var a=n("f8d1"),o=n.n(a);o.a},"369b":function(t,e,n){},"56d7":function(t,e,n){"use strict";n.r(e);n("e260"),n("e6cf"),n("cca6"),n("a79d");var a=n("2b0e"),o=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{attrs:{id:"app"}},[n("TodoHeader"),n("router-view")],1)},r=[],c=n("8c4f"),i=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("header",[n("h2",[t._v("Q&A Test")]),n("div",[n("button",[n("router-link",{attrs:{to:"/input"}},[t._v("새 글 추가")])],1),t._v(" "),n("button",[n("router-link",{attrs:{to:"/list"}},[t._v("목록")])],1)])])},s=[],u={},l=u,d=(n("2315"),n("2877")),f=Object(d["a"])(l,i,s,!1,null,"6beeabc1",null),p=f.exports,m=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"inputBox shadow"},[t._v(" ID : "),n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.id,expression:"qna.id"}],attrs:{type:"text",placeholder:"ID 입력"},domProps:{value:t.qna.id},on:{input:function(e){e.target.composing||t.$set(t.qna,"id",e.target.value)}}}),t._v(" 제목 : "),n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.title,expression:"qna.title"}],attrs:{type:"text",placeholder:"제목 입력"},domProps:{value:t.qna.title},on:{input:function(e){e.target.composing||t.$set(t.qna,"title",e.target.value)}}}),t._v(" 이름 : "),n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.name,expression:"qna.name"}],attrs:{type:"text",placeholder:"이름 입력"},domProps:{value:t.qna.name},on:{input:function(e){e.target.composing||t.$set(t.qna,"name",e.target.value)}}}),t._v(" 내용 : "),n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.content,expression:"qna.content"}],attrs:{type:"text",placeholder:"내용 입력"},domProps:{value:t.qna.content},on:{input:function(e){e.target.composing||t.$set(t.qna,"content",e.target.value)}}}),n("span",{staticClass:"addContainer",on:{click:t.addQna}},[n("div",{staticClass:"addBtn far fa-check-circle",attrs:{"aria-hidden":"true"}})])])},h=[],v={GET_QNALIST:"getQnaList",GET_QNA:"getQna",ADD_QNA:"addQna",ADD_COMMENT:"addComment",REMOVE_QNA:"removeQna",UPDATE_QNA:"updateQna"},_={data:function(){return{qna:{title:"",id:"",content:"",name:""}}},methods:{addQna:function(){this.$store.dispatch(v.ADD_QNA,{qna:this.qna}),this.$router.push("/list"),this.clear()},clear:function(){this.todo={}}}},g=_,b=(n("8b1a"),Object(d["a"])(g,m,h,!1,null,"198f3ddc",null)),q=b.exports,Q=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("ul",t._l(t.qnalist,(function(e){return n("li",{key:e.num},[n("i",{staticClass:"checkBtn fab fa-quora"}),n("span",{on:{click:function(n){return t.getQna(e.num)}}},[t._v(t._s(e.title))]),n("span",{staticClass:"removeBtn",attrs:{type:"button"},on:{click:function(n){return t.removeQna(e.num)}}},[n("i",{staticClass:"far fa-trash-alt"})])])})),0)])},T=[],A={created:function(){this.$store.dispatch(v.GET_QNALIST)},computed:{qnalist:function(){return this.$store.state.qnalist}},methods:{removeQna:function(t){this.$store.dispatch(v.REMOVE_QNA,{num:t})},getQna:function(t){this.$router.push("/detail/"+t)}}},E=A,O=(n("5843"),Object(d["a"])(E,Q,T,!1,null,"7e306e35",null)),N=O.exports,w=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("table",{staticClass:"table text-center"},[t._m(0),n("tbody",[n("tr",[n("td",{attrs:{align:"center"}},[t._v(" "+t._s(t.qna.num))]),n("td",{attrs:{align:"center"}},[t._v(" "+t._s(t.qna.content))]),n("td",{attrs:{align:"center"}},[t._v(" "+t._s(t.qna.wdate))]),n("td",{attrs:{align:"center"}},[t._v(" "+t._s(t.qna.name))])])])])])},y=[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("thead",[n("tr",[n("th",{attrs:{width:"100",bgcolor:"#ffeded"}},[t._v("번호")]),n("th",{attrs:{width:"200",bgcolor:"#ffeded"}},[t._v("내용")]),n("th",{attrs:{width:"100",bgcolor:"#ffeded"}},[t._v("작성날짜")]),n("th",{attrs:{width:"150",bgcolor:"#ffeded"}},[t._v("작성자")])])])}],j={created:function(){this.getQna(this.$route.params.num)},computed:{qna:function(){return this.$store.state.qna}},methods:{getQna:function(t){this.$store.dispatch(v.GET_QNA,{num:t})},clear:function(){this.todo={}}}},x=j,$=(n("b13f"),Object(d["a"])(x,w,y,!1,null,"0bafef50",null)),D=$.exports;a["a"].use(c["a"]);var S,G,C=new c["a"]({mode:"history",routes:[{path:"/",component:N},{path:"/input",component:q},{path:"/list",component:N},{path:"/detail/:num",component:D}]}),M={name:"app",router:C,components:{TodoHeader:p}},P=M,L=(n("034f"),Object(d["a"])(P,o,r,!1,null,null,null)),k=L.exports,I=(n("b0c0"),n("2fa7")),R=n("2f62"),B=n("bc3a"),U=n.n(B),V=U.a.create({baseURL:"http://localhost:8080",headers:{"Content-type":"application/json"}});a["a"].use(R["a"]);var H=new R["a"].Store({state:{qnalist:[],qna:{}},actions:(S={},Object(I["a"])(S,v.GET_QNALIST,(function(t){console.log("test"),V.get("/safefood/qna/all").then((function(e){t.commit(v.GET_QNALIST,{qnalist:e.data}),console.log(e.data)})).catch((function(t){return alert("getQnaList처리에 실패하였습니다. "+t)}))})),Object(I["a"])(S,v.GET_QNA,(function(t,e){console.log("여기는 get",e.num),V.get("/safefood/qna/read/"+e.num).then((function(e){t.commit(v.GET_QNA,{qna:e.data}),console.log(e.data)})).catch((function(t){return alert("get_qna 처리에 실패하였습니다. "+t)}))})),Object(I["a"])(S,v.ADD_QNA,(function(t,e){console.log(e),console.log("add 되나여"),V.post("/safefood/qna/insert/",e.qna).then((function(e){console.log("Real"),t.dispatch(v.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("postqnalist처리에 실패하였습니다. "+t)}))})),Object(I["a"])(S,v.REMOVE_QNA,(function(t,e){console.log("여기는 delete!"),console.log(e.num),V.delete("/safefood/qna/delete/"+e.num).then((function(e){t.dispatch(v.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("deleteqna처리에 실패하였습니다. "+t)}))})),Object(I["a"])(S,v.ADD_COMMENT,(function(t,e){console.log(e.qna),V.put("/safefood/qna/insertcomment/",{num:e.num,comment:e.comment}).then((function(e){t.dispatch(v.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("putqnacomment처리에 실패하였습니다. "+t)}))})),Object(I["a"])(S,v.UPDATE_QNA,(function(t,e){V.put("/safefood/qna/update/",{id:e.id,num:e.num,name:e.name,wdate:e.wdate,title:e.title,content:e.content,count:e.count,comment:e.comment}).then((function(e){t.dispatch(v.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("updateqna처리에 실패하였습니다. "+t)}))})),S),mutations:(G={},Object(I["a"])(G,v.GET_QNALIST,(function(t,e){t.qnalist=e.qnalist})),Object(I["a"])(G,v.GET_QNA,(function(t,e){console.log("커밋"),t.qna=e.qna})),Object(I["a"])(G,v.ADD_COMMENT,(function(t,e){t.message=e.message})),G)}),J=H;a["a"].config.productionTip=!1,new a["a"]({render:function(t){return t(k)},store:J}).$mount("#app")},5843:function(t,e,n){"use strict";var a=n("369b"),o=n.n(a);o.a},"85ec":function(t,e,n){},"8b1a":function(t,e,n){"use strict";var a=n("b9d6"),o=n.n(a);o.a},b13f:function(t,e,n){"use strict";var a=n("d3a5"),o=n.n(a);o.a},b9d6:function(t,e,n){},d3a5:function(t,e,n){},f8d1:function(t,e,n){}});
//# sourceMappingURL=app.ec82750c.js.map