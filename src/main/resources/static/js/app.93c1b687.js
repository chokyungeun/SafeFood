(function(t){function e(e){for(var a,i,c=e[0],s=e[1],l=e[2],d=0,f=[];d<c.length;d++)i=c[d],Object.prototype.hasOwnProperty.call(o,i)&&o[i]&&f.push(o[i][0]),o[i]=0;for(a in s)Object.prototype.hasOwnProperty.call(s,a)&&(t[a]=s[a]);u&&u(e);while(f.length)f.shift()();return r.push.apply(r,l||[]),n()}function n(){for(var t,e=0;e<r.length;e++){for(var n=r[e],a=!0,c=1;c<n.length;c++){var s=n[c];0!==o[s]&&(a=!1)}a&&(r.splice(e--,1),t=i(i.s=n[0]))}return t}var a={},o={app:0},r=[];function i(e){if(a[e])return a[e].exports;var n=a[e]={i:e,l:!1,exports:{}};return t[e].call(n.exports,n,n.exports,i),n.l=!0,n.exports}i.m=t,i.c=a,i.d=function(t,e,n){i.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:n})},i.r=function(t){"undefined"!==typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},i.t=function(t,e){if(1&e&&(t=i(t)),8&e)return t;if(4&e&&"object"===typeof t&&t&&t.__esModule)return t;var n=Object.create(null);if(i.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var a in t)i.d(n,a,function(e){return t[e]}.bind(null,a));return n},i.n=function(t){var e=t&&t.__esModule?function(){return t["default"]}:function(){return t};return i.d(e,"a",e),e},i.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},i.p="/";var c=window["webpackJsonp"]=window["webpackJsonp"]||[],s=c.push.bind(c);c.push=e,c=c.slice();for(var l=0;l<c.length;l++)e(c[l]);var u=s;r.push([0,"chunk-vendors"]),n()})({0:function(t,e,n){t.exports=n("56d7")},"034f":function(t,e,n){"use strict";var a=n("85ec"),o=n.n(a);o.a},"06be":function(t,e,n){},"09d0":function(t,e,n){"use strict";var a=n("06be"),o=n.n(a);o.a},"399e":function(t,e,n){},"545b":function(t,e,n){"use strict";var a=n("751b"),o=n.n(a);o.a},"56d7":function(t,e,n){"use strict";n.r(e);n("e260"),n("e6cf"),n("cca6"),n("a79d");var a=n("2b0e"),o=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{attrs:{id:"app"}},[n("TodoHeader"),n("router-view")],1)},r=[],i=n("8c4f"),c=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("header",[t._m(0),n("div",[n("button",[n("router-link",{attrs:{to:"/input"}},[t._v("새 글 추가")])],1),n("button",[n("router-link",{attrs:{to:"/list"}},[t._v("목록")])],1),n("br"),n("br")])])},s=[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("h2",[t._v(" Q&A "),n("img",{staticClass:"img-fluid",attrs:{src:"resources/img/animat-campfire-color.gif",alt:"Image",width:"80px",height:"80px"}})])}],l={GET_QNALIST:"getQnaList",GET_QNA:"getQna",ADD_QNA:"addQna",ADD_COMMENT:"addComment",REMOVE_QNA:"removeQna",UPDATE_QNA:"updateQna",GET_ID:"getid"},u={created:function(){this.$store.dispatch(l.GET_ID),console.log(this.$store.dispatch(l.GET_ID))},computed:function(){this.$store.dispatch(l.GET_ID),console.log(this.$store.dispatch(l.GET_ID))}},d=u,f=(n("eb4a"),n("2877")),p=Object(f["a"])(d,c,s,!1,null,"aca75b02",null),m=p.exports,h=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("TABLE",{attrs:{border:"1",cellspacing:"1",cellpadding:"1"}},[n("tr",[n("td",{attrs:{bgcolor:"#ffeded"}},[t._v("ID")]),n("td",{attrs:{colspan:"3"}},[n("input",{attrs:{type:"text",readonly:"readonly"},domProps:{value:t.cid}})])]),n("tr",[n("td",{attrs:{bgcolor:"#ffeded"}},[t._v("닉네임")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.name,expression:"qna.name"}],attrs:{type:"text",placeholder:"닉네임 입력"},domProps:{value:t.qna.name},on:{input:function(e){e.target.composing||t.$set(t.qna,"name",e.target.value)}}})])]),n("tr",[n("td",{attrs:{bgcolor:"#ffeded"}},[t._v("제목")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.title,expression:"qna.title"}],attrs:{type:"text",placeholder:"제목 입력",size:"42"},domProps:{value:t.qna.title},on:{input:function(e){e.target.composing||t.$set(t.qna,"title",e.target.value)}}})])]),n("tr",[n("td",{attrs:{bgcolor:"#ffeded"}},[t._v("글내용")]),n("td",{attrs:{colspan:"4"}},[n("textarea",{directives:[{name:"model",rawName:"v-model",value:t.qna.content,expression:"qna.content"}],staticStyle:{width:"95%",height:"200px"},attrs:{name:"content",placeholder:"내용 입력"},domProps:{value:t.qna.content},on:{input:function(e){e.target.composing||t.$set(t.qna,"content",e.target.value)}}})])])]),n("button",{staticStyle:{"font-family":"'Sunflower', sans-serif"},on:{click:function(e){return t.addQna()}}},[t._v("질문 입력")])],1)},v=[],g={data:function(){return{qna:{title:"",content:"",name:""}}},created:{cid:function(){return this.$store.state.cid}},computed:{cid:function(){return this.$store.state.cid}},methods:{addQna:function(){this.$store.dispatch(l.ADD_QNA,{qna:this.qna,id:this.cid}),this.$router.push("/list"),this.clear()},clear:function(){this.todo={}}}},_=g,b=(n("545b"),Object(f["a"])(_,h,v,!1,null,"421796b9",null)),q=b.exports,w=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("center",[n("div",[n("table",{attrs:{border:"1",cellspacing:"1",cellpadding:"1"}},[n("tr",[n("th",{attrs:{width:"200",bgcolor:"#ffeded"}},[t._v("제목")]),n("th",{attrs:{width:"100",bgcolor:"#ffeded"}},[t._v("글쓴이")]),n("th",{attrs:{width:"150",bgcolor:"#ffeded"}},[t._v("날짜")]),n("th",{attrs:{width:"100",bgcolor:"#ffeded"}},[t._v("조회수")])]),t._l(t.qnalist,(function(e){return n("tr",{key:e.num},[n("td",{attrs:{align:"center"}},[n("span",{directives:[{name:"show",rawName:"v-show",value:null!=e.comment,expression:"qnaItem.comment != null"}],staticStyle:{"font-weight":"bold",color:"blue","font-size":"5px"}},[t._v("[답변완료]")]),n("span",{staticStyle:{"text-align":"center"},on:{click:function(n){return t.getQna(e.num)}}},[t._v(t._s(e.title))]),t._v(" "),n("span",{directives:[{name:"show",rawName:"v-show",value:e.wdate.substring(0,10)==(new Date).getFullYear()+"-"+((new Date).getMonth()+1)+"-"+(new Date).getDate(),expression:"qnaItem.wdate.substring(0, 10) == new Date().getFullYear() + '-' + (new Date().getMonth() + 1) + '-' + new Date().getDate()"}],staticStyle:{color:"red","font-size":"3px"}},[n("img",{staticClass:"img-fluid",attrs:{src:"resources/img/new.jpg",alt:"Image"}})])]),n("td",{attrs:{align:"center"}},[t._v(t._s(e.name))]),n("td",{attrs:{align:"center"}},[t._v(t._s(e.wdate.substring(0,10)))]),n("td",{attrs:{align:"center"}},[t._v(t._s(e.count))])])}))],2)])])},E=[],T={created:function(){this.$store.dispatch(l.GET_QNALIST)},computed:{qnalist:function(){return this.$store.state.qnalist}},methods:{removeQna:function(t){this.$store.dispatch(l.REMOVE_QNA,{num:t})},getQna:function(t){this.$router.push("/detail/"+t)}}},y=T,Q=(n("f622"),Object(f["a"])(y,w,E,!1,null,"49f33b78",null)),x=Q.exports,$=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("table",{attrs:{border:"1",cellspacing:"1",cellpadding:"1"}},[t._m(0),n("tbody",[n("tr",[n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.num))]),n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.content))]),n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.wdate))]),n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.name))]),n("td",{attrs:{align:"center"}},[t._v(t._s(t.qna.comment))])])])]),n("button",{on:{click:function(e){return t.updateQna(t.qna)}}},[t._v("질문 수정")]),n("br"),n("br"),n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.comment,expression:"qna.comment"}],attrs:{type:"text",placeholder:"댓글 입력",size:"42"},domProps:{value:t.qna.comment},on:{input:function(e){e.target.composing||t.$set(t.qna,"comment",e.target.value)}}}),n("button",{staticStyle:{"font-family":"'Sunflower', sans-serif"},on:{click:function(e){return t.addComment()}}},[t._v("댓글 입력")])])},N=[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("thead",[n("tr",[n("th",{attrs:{width:"100",bgcolor:"#ffeded"}},[t._v("번호")]),n("th",{attrs:{width:"200",bgcolor:"#ffeded"}},[t._v("내용")]),n("th",{attrs:{width:"100",bgcolor:"#ffeded"}},[t._v("작성날짜")]),n("th",{attrs:{width:"150",bgcolor:"#ffeded"}},[t._v("작성자")]),n("th",{attrs:{width:"150",bgcolor:"#ffeded"}},[t._v("댓글")])])])}],A={created:function(){this.getQna(this.$route.params.num)},computed:{qna:function(){return this.$store.state.qna}},methods:{getQna:function(t){this.$store.dispatch(l.GET_QNA,{num:t})},addComment:function(){this.$store.dispatch(l.ADD_COMMENT,{qna:this.qna})},updateQna:function(t){this.$router.push("/update/"+t)},clear:function(){this.todo={}}}},D=A,O=(n("09d0"),Object(f["a"])(D,$,N,!1,null,"4997a95d",null)),j=O.exports,S=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("table",{attrs:{border:"1",cellspacing:"1",cellpadding:"1"}},[n("tr",[n("td",{attrs:{bgcolor:"#ffeded"}},[t._v("ID")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.id,expression:"qna.id"}],attrs:{type:"text",readonly:""},domProps:{value:t.qna.id},on:{input:function(e){e.target.composing||t.$set(t.qna,"id",e.target.value)}}})])]),n("tr",[n("td",{attrs:{bgcolor:"#ffeded"}},[t._v("작성자")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.name,expression:"qna.name"}],attrs:{type:"text",readonly:""},domProps:{value:t.qna.name},on:{input:function(e){e.target.composing||t.$set(t.qna,"name",e.target.value)}}})])]),n("tr",[n("td",{attrs:{bgcolor:"#ffeded"}},[t._v("제목")]),n("td",{attrs:{colspan:"3"}},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.qna.title,expression:"qna.title"}],attrs:{type:"text",size:"42",readonly:""},domProps:{value:t.qna.title},on:{input:function(e){e.target.composing||t.$set(t.qna,"title",e.target.value)}}})])]),n("tr",[n("td",{attrs:{bgcolor:"#ffeded"}},[t._v("글내용")]),n("td",{attrs:{colspan:"4"}},[n("textarea",{directives:[{name:"model",rawName:"v-model",value:t.qna.content,expression:"qna.content"}],staticStyle:{width:"95%",height:"200px"},attrs:{name:"content"},domProps:{value:t.qna.content},on:{input:function(e){e.target.composing||t.$set(t.qna,"content",e.target.value)}}})])])]),n("button",{staticStyle:{"font-family":"'Sunflower', sans-serif"},on:{click:function(e){return t.updateQna()}}},[t._v("질문 수정")])])},I=[],G={created:function(){return this.$route.params.qna},computed:{qna:function(){return this.$store.state.qna}},methods:{updateQna:function(){this.$store.dispatch(l.UPDATE_QNA,{qna:this.qna}),this.$router.push("/list"),this.clear()},clear:function(){this.todo={}}}},P=G,M=(n("97ad"),Object(f["a"])(P,S,I,!1,null,"1737991b",null)),L=M.exports;a["a"].use(i["a"]);var k,C,z=new i["a"]({routes:[{path:"/",component:x},{path:"/input",component:q},{path:"/list",component:x},{path:"/detail/:num",component:j},{path:"/update/:qna",component:L}]}),R={name:"app",router:z,components:{TodoHeader:m}},U=R,V=(n("034f"),Object(f["a"])(U,o,r,!1,null,null,null)),F=V.exports,H=n("2fa7"),J=n("2f62"),Y=n("bc3a"),B=n.n(Y),K=B.a.create({baseURL:"http://70.12.108.203:8080",headers:{"Content-type":"application/json"}});a["a"].use(J["a"]);var W=new J["a"].Store({state:{qnalist:[],qna:{},cid:""},actions:(k={},Object(H["a"])(k,l.GET_QNALIST,(function(t){K.get("/qna/all").then((function(e){t.commit(l.GET_QNALIST,{qnalist:e.data}),console.log(e.data)})).catch((function(t){return alert("getQnaList처리에 실패하였습니다. "+t)}))})),Object(H["a"])(k,l.GET_QNA,(function(t,e){console.log("여기는 get",e.num),K.get("/qna/read/"+e.num).then((function(e){t.commit(l.GET_QNA,{qna:e.data}),console.log(e.data)})).catch((function(t){return alert("get_qna 처리에 실패하였습니다. "+t)}))})),Object(H["a"])(k,l.ADD_QNA,(function(t,e){K.post("/qna/insert/",e.qna).then((function(e){t.dispatch(l.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("postqnalist처리에 실패하였습니다. "+t)}))})),Object(H["a"])(k,l.REMOVE_QNA,(function(t,e){K.delete("/qna/delete/"+e.num).then((function(e){t.dispatch(l.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("deleteqna처리에 실패하였습니다. "+t)}))})),Object(H["a"])(k,l.ADD_COMMENT,(function(t,e){K.put("/qna/insertcomment/",e.qna).then((function(e){t.dispatch(l.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("putqnacomment처리에 실패하였습니다. "+t)}))})),Object(H["a"])(k,l.UPDATE_QNA,(function(t,e){K.put("/qna/update/",e.qna).then((function(e){t.dispatch(l.GET_QNALIST),console.log(e.data)})).catch((function(t){return alert("updateqna처리에 실패하였습니다. "+t)}))})),Object(H["a"])(k,l.GET_ID,(function(t){K.get("/qna/getid").then((function(e){t.commit(l.GET_ID,{cid:e.data}),console.log("axios~~~"+e.data),console.log("axios~~~"+e.data.id)})).catch((function(t){return alert("getid처리에 실패하였습니다. "+t)}))})),k),mutations:(C={},Object(H["a"])(C,l.GET_QNALIST,(function(t,e){t.qnalist=e.qnalist})),Object(H["a"])(C,l.GET_QNA,(function(t,e){t.qna=e.qna})),Object(H["a"])(C,l.ADD_COMMENT,(function(t,e){t.message=e.message})),Object(H["a"])(C,l.GET_ID,(function(t,e){t.cid=e.cid,console.log("mutations~~~"+e.cid)})),C)}),X=W;a["a"].config.productionTip=!1,new a["a"]({render:function(t){return t(F)},store:X}).$mount("#app")},"60c1":function(t,e,n){},"751b":function(t,e,n){},"85ec":function(t,e,n){},"97ad":function(t,e,n){"use strict";var a=n("d8b1"),o=n.n(a);o.a},d8b1:function(t,e,n){},eb4a:function(t,e,n){"use strict";var a=n("60c1"),o=n.n(a);o.a},f622:function(t,e,n){"use strict";var a=n("399e"),o=n.n(a);o.a}});
//# sourceMappingURL=app.93c1b687.js.map