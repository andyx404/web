(this.webpackJsonpcantonese_name=this.webpackJsonpcantonese_name||[]).push([[0],{104:function(e,t,a){},109:function(e,t,a){"use strict";a.r(t);var n=a(0),r=a.n(n),s=a(10),i=a.n(s),o=(a(80),a(16)),c=a(17),l=a(19),u=a(20),p=a(139),h=a(58),m=a.n(h),d=a(59),g=a.n(d),v=[{id:0,name:"\u666e\u901a\u8bdd",defaultTarget:0},{id:1,name:"\u7ca4\u8bed",defaultTarget:2}],f=[{id:0,name:"\u7ca4\u8bed(\u7b80\u4f53)",source:0},{id:1,name:"\u7ca4\u8bed(\u7e41\u4f53)",source:0},{id:2,name:"\u666e\u901a\u8bdd(\u7b80\u4f53)",source:1},{id:3,name:"\u666e\u901a\u8bdd(\u7e41\u4f53)",source:1}];function y(e){var t=v.find((function(t){return t.id===e}));return t?t.name:""}function k(e){var t=f.find((function(t){return t.id===e}));return t?t.name:""}var S=[{lang:"zh-CN",name:"\u666e\u901a\u8bdd"},{lang:"zh-HK",name:"\u7ca4\u8bed"}];function T(e){var t=S.find((function(t){return t.lang===e}));return t?t.name:""}var E=a(60),C=a.n(E),w=a(21),b=a(141),B=a(140),N=a(142),x=a(111),A=a(68),O=a(5),j=a(143),z=(a(104),a(25)),L=a.n(z),I=a(132),H=function(e){Object(u.a)(a,e);var t=Object(l.a)(a);function a(e){var n;return Object(o.a)(this,a),(n=t.call(this,e)).anchorEl=void 0,n.state={sourceType:e.sourceType||0,targetType:e.targetType||0,sourceLangSelectorShow:!1,targetLangSelectorShow:!1},n}return Object(c.a)(a,[{key:"changeSourceType",value:function(e){var t=v.find((function(t){return t.id===e}));if(t){var a={sourceType:e,targetType:t.defaultTarget};this.setState(a),this.props.onChangeType&&this.props.onChangeType(a.sourceType,a.targetType)}}},{key:"changeTargetType",value:function(e){var t={targetType:e};this.setState(t),this.props.onChangeType&&this.props.onChangeType(this.state.sourceType,t.targetType)}},{key:"handleShowLangSelector",value:function(e,t){switch(this.anchorEl=e,t){case 0:this.setState({sourceLangSelectorShow:!0});break;case 1:this.setState({targetLangSelectorShow:!0})}}},{key:"render",value:function(){var e=this;return r.a.createElement("div",{className:"languageBar"},r.a.createElement("div",{className:"singleLangBar"},v.map((function(t){return r.a.createElement("div",{key:t.id,onClick:function(){return e.changeSourceType(t.id)},className:L()("buttonInGroups",e.state.sourceType===t.id?"active":"")},t.name)}))),r.a.createElement("div",{className:"langSelector"},r.a.createElement("div",{className:"lang-btn"},r.a.createElement("select",{value:this.state.sourceType,onChange:function(t){e.changeSourceType(parseInt(t.currentTarget.value))}},v.map((function(e){return r.a.createElement("option",{key:e.id,value:e.id},e.name)}))))),r.a.createElement("div",{className:"swap-wrap"},r.a.createElement(I.a,null)),r.a.createElement("div",{className:"langSelector"},r.a.createElement("div",{className:"lang-btn"},r.a.createElement("select",{value:this.state.targetType,onChange:function(t){e.changeTargetType(parseInt(t.currentTarget.value))}},f.filter((function(t){return t.source===e.state.sourceType})).map((function(e){return r.a.createElement("option",{key:e.id,value:e.id},e.name)}))))),r.a.createElement("div",{className:"singleLangBar",style:{paddingLeft:"0"}},f.filter((function(t){return t.source===e.state.sourceType})).map((function(t){return r.a.createElement("div",{key:t.id,onClick:function(){return e.changeTargetType(t.id)},className:L()("buttonInGroups",e.state.targetType===t.id?"active":"")},t.name)}))))}}]),a}(r.a.Component),D=a(134),K=a(135),F=a(136),G=[],P=new Map;function U(){if("undefined"!==typeof speechSynthesis)var e=setInterval((function(){(G=speechSynthesis.getVoices()).length>0&&clearInterval(e)}),100)}function J(){return window.speechSynthesis}U(),"undefined"!==typeof speechSynthesis&&void 0!==speechSynthesis.onvoiceschanged&&(speechSynthesis.onvoiceschanged=U);var R={speakByAudio:function(e,t,a){var n="text=".concat(encodeURIComponent(e),"&lang=").concat(t,"&speed=").concat(a||"");return new Audio("https://www.google.cn/speech-api/v2/synthesize?key=AIzaSyCkfPOPZXDKNn8hhgu3JrA62wIgC93d44k&enc=mpeg&client=chromium&"+n)},canUseSpeechSynthesis:J,canSupportLang:function(e){return!!J()&&G.filter((function(t){return t.lang===e})).length>0},pickBestVoice:function(e){var t=P.get(e);if(t)return t;if(!J())return null;var a=G.filter((function(t){return t.lang===e}));if(G.length>0){var n=a.find((function(e){return e.localService}));return n?(P.set(e,n),n):(P.set(e,a[0]),a[0])}return null}},W=a(144),_=["zh-CN","zh-HK"],M=function(e){Object(u.a)(a,e);var t=Object(l.a)(a);function a(e){var n;return Object(o.a)(this,a),(n=t.call(this,e)).ttsAudio=void 0,n.state={sourceType:e.sourceType,value:e.value||"",isSpeaking:!1,speakSpeed:.5},n}return Object(c.a)(a,[{key:"onEdit",value:function(e){e.target.scrollHeight>=e.target.offsetHeight&&(e.target.style.height=e.target.scrollHeight+"px"),e.target.value.length>50?e.target.style.fontSize="18px":e.target.style.fontSize="24px",this.props.onChangeText&&this.props.onChangeText(e.target.value),this.setState({value:e.target.value,speakSpeed:.5})}},{key:"onClickClear",value:function(){this.setState({value:""}),this.props.onChangeText&&this.props.onChangeText("")}},{key:"onClickSpeak",value:function(){var e=this;this.state.isSpeaking&&this.ttsAudio?(this.ttsAudio.pause(),delete this.context.ttsAudio,this.setState({isSpeaking:!1})):(w.a.event({category:"\u7ffb\u8bd1",action:"\u6717\u8bfb",label:y(this.props.sourceType),value:this.state.value.length}),this.ttsAudio&&(this.ttsAudio.pause(),delete this.ttsAudio),this.ttsAudio=R.speakByAudio(this.state.value,_[this.props.sourceType],this.state.speakSpeed),this.ttsAudio.onended=function(){e.setState({isSpeaking:!1})},this.ttsAudio.play().then((function(){e.setState({isSpeaking:!0,speakSpeed:.5===e.state.speakSpeed?.24:.5})})))}},{key:"render",value:function(){var e=this;return r.a.createElement("div",{className:"input-container"},r.a.createElement("div",{className:"source-wrap"},r.a.createElement("div",{className:"source-input"},r.a.createElement("textarea",{className:"source-text-input",autoCapitalize:"off",autoComplete:"off",autoCorrect:"off",placeholder:"\u8f93\u5165\u6587\u5b57",value:this.state.value,maxLength:200,onChange:function(t){return e.onEdit(t)},style:{height:"auto",fontSize:"24px"}})),r.a.createElement("div",{className:"source-header"},r.a.createElement("div",{onClick:function(){return e.onClickClear()},hidden:!this.state.value},r.a.createElement(W.a,{title:"\u6e05\u9664\u6587\u5b57","aria-label":"\u6e05\u9664\u6587\u5b57",placement:"top"},r.a.createElement(D.a,{style:{color:"#737373"}})))),r.a.createElement("div",{className:"source-footer source-or-target-footer"},r.a.createElement("div",{className:"source-footer-button",hidden:!this.state.value.trim().length,onClick:function(){return e.onClickSpeak()}},r.a.createElement("div",{hidden:this.state.isSpeaking},r.a.createElement(W.a,{title:"\u6717\u8bfb","aria-label":"\u6717\u8bfb",placement:"top"},r.a.createElement(K.a,null))),r.a.createElement("div",{hidden:!this.state.isSpeaking},r.a.createElement(W.a,{title:"\u505c\u6b62\u6717\u8bfb","aria-label":"\u505c\u6b62\u6717\u8bfb",placement:"top"},r.a.createElement(F.a,null)))),r.a.createElement("div",{className:"character-count"},this.state.value.length>0&&r.a.createElement("span",null,this.state.value.length,"/",200)))))}}],[{key:"getDerivedStateFromProps",value:function(e,t){return e.sourceType!==t.sourceType?{speakSpeed:.5}:null}}]),a}(r.a.Component),V=a(66),X=a.n(V),Y=a(137),Z=a(145);function $(e){return r.a.createElement(j.a,Object.assign({elevation:6,variant:"filled"},e))}var q=function(e){Object(u.a)(a,e);var t=Object(l.a)(a);function a(e){var n;return Object(o.a)(this,a),(n=t.call(this,e)).ttsAudio=void 0,n.state={lang:e.lang,isSpeaking:!1,speakSpeed:.5,value:e.value,showSnackBar:!1,snackBarType:"success",snackBarText:""},n}return Object(c.a)(a,[{key:"onClickCopy",value:function(){X()(this.props.value)?this.setState({showSnackBar:!0,snackBarText:"\u590d\u5236\u7ffb\u8bd1\u7ed3\u679c\u6210\u529f\uff01",snackBarType:"success"}):prompt("\u60a8\u7684\u6d4f\u89c8\u5668\u4e0d\u652f\u6301\u590d\u5236\uff01\u8bf7\u9009\u4e2d\u6240\u6709\u5185\u5bb9\u540e\uff0c\u6309Ctrl+C\u590d\u5236\u7ffb\u8bd1\u7ed3\u679c",this.props.value)}},{key:"handleSnackBarClose",value:function(){this.setState({showSnackBar:!1})}},{key:"onClickSpeak",value:function(){var e=this;this.state.isSpeaking&&this.ttsAudio?(this.ttsAudio.pause(),delete this.context.ttsAudio,this.setState({isSpeaking:!1})):(w.a.event({category:"\u7ffb\u8bd1",action:"\u6717\u8bfb",label:T(this.props.lang),value:this.state.value.length}),this.ttsAudio&&(this.ttsAudio.pause(),delete this.ttsAudio),this.ttsAudio=R.speakByAudio(this.props.value,this.props.lang,this.state.speakSpeed),this.ttsAudio.onended=function(){e.setState({isSpeaking:!1})},this.ttsAudio.play().then((function(){e.setState({isSpeaking:!0,speakSpeed:.5===e.state.speakSpeed?.24:.5})})))}},{key:"render",value:function(){var e=this;return r.a.createElement("div",{className:L()("result-container",0===this.props.value.length?"empty":"")},0===this.props.value.length?r.a.createElement("span",{className:"empty-placeholder"},0===this.props.status?"\u6b64\u5904\u663e\u793a\u7ffb\u8bd1\u7ed3\u679c":"\u6b63\u5728\u7ffb\u8bd1..."):r.a.createElement("div",{className:"result"},r.a.createElement("div",{className:"text-wrap"},r.a.createElement("div",{className:"result-shield-container"},r.a.createElement("div",{className:L()("translate","translation",this.props.value.length>50?"small":"")},this.props.value,1===this.props.status?"...":""))),r.a.createElement("div",{className:"target-footer source-or-target-footer"},r.a.createElement("div",{className:"target-footer-button",onClick:function(){return e.onClickSpeak()}},r.a.createElement("div",{hidden:this.state.isSpeaking},r.a.createElement(W.a,{title:"\u6717\u8bfb","aria-label":"\u6717\u8bfb",placement:"top"},r.a.createElement(K.a,null))),r.a.createElement("div",{hidden:!this.state.isSpeaking},r.a.createElement(W.a,{title:"\u505c\u6b62\u6717\u8bfb","aria-label":"\u505c\u6b62\u6717\u8bfb",placement:"top"},r.a.createElement(F.a,null)))),r.a.createElement("div",{className:"target-footer-button right-position",onClick:function(){return e.onClickCopy()}},r.a.createElement(W.a,{title:"\u590d\u5236\u7ffb\u8bd1\u7ed3\u679c","aria-label":"\u590d\u5236\u7ffb\u8bd1\u7ed3\u679c",placement:"top"},r.a.createElement(Y.a,null))),r.a.createElement(Z.a,{open:this.state.showSnackBar,autoHideDuration:2e3,onClose:function(){e.handleSnackBarClose()}},r.a.createElement($,{severity:this.state.snackBarType},this.state.snackBarText)))))}}],[{key:"getDerivedStateFromProps",value:function(e,t){return e.lang!==t.lang||e.value!==t.value?{speakSpeed:.5}:null}}]),a}(r.a.Component),Q=a(138),ee="\u9ea6\u9ea6\u5c0f\u5bb6",te=2012;function ae(){return r.a.createElement(x.a,{variant:"body2",color:"textSecondary",align:"center"},"Copyright \xa9 ",te,"-",(new Date).getFullYear()," ",r.a.createElement(Q.a,{color:"inherit",href:"https://blog.micblo.com/",target:"_blank"},ee),". ","All Rights Reserved.")}var ne=a(40),re=a.n(ne),se=a(67),ie=a.n(se);function oe(e){return r.a.createElement(j.a,Object.assign({elevation:6,variant:"filled"},e))}var ce=Object(A.a)({palette:{primary:re.a,secondary:re.a,warning:ie.a}}),le=function(e){Object(u.a)(a,e);var t=Object(l.a)(a);function a(e){var n;return Object(o.a)(this,a),(n=t.call(this,e)).timer=void 0,w.a.initialize("UA-140134498-1"),w.a.pageview(window.location.pathname+window.location.search),n.state={sourceType:0,targetType:0,resultLang:"zh-HK",source:"",result:"",status:0,showSnackBar:!1,snackBarType:"warning",snackBarText:""},n}return Object(c.a)(a,[{key:"onChangeText",value:function(e){var t=this;this.state.result.trim()!==e.trim()&&(this.timer&&(clearTimeout(this.timer),this.timer=void 0),this.setState({source:e}),this.timer=setTimeout((function(){t.timer=void 0,t.translate()}),400))}},{key:"shouldComponentUpdate",value:function(e,t){return this.state.sourceType===t.sourceType&&this.state.targetType===t.targetType||(this.timer&&(clearTimeout(this.timer),this.timer=void 0),this.translate(t.sourceType,t.targetType)),!0}},{key:"translate",value:function(e,t){var a=this;void 0===e&&(e=this.state.sourceType),void 0===t&&(t=this.state.targetType);var n={type:e.toString(),text:this.state.source.trim(),t:t%2?"1":""};0!==n.text.length?(w.a.event({category:"\u7ffb\u8bd1",action:"\u7ffb\u8bd1\u53e5\u5b50",label:y(e)+"\u8f6c"+k(t),value:this.state.source.trim().length}),this.setState({status:1}),m.a.post("/api/v2/translate",g.a.stringify(n),{headers:{"Content-Type":"application/x-www-form-urlencoded"}}).then((function(e){return e.data?200!==e.data.state?a.setState({showSnackBar:!0,snackBarText:e.data.err||"\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5",snackBarType:"warning"}):void a.setState({status:0,result:e.data.content}):a.setState({showSnackBar:!0,snackBarText:"\u670d\u52a1\u6545\u969c\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5",snackBarType:"warning"})})).catch((function(e){a.setState({showSnackBar:!0,snackBarText:"\u65e0\u6cd5\u8bbf\u95ee\u5230\u670d\u52a1\u5668\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5",snackBarType:"warning"})}))):this.setState({status:0,result:""})}},{key:"onChangeType",value:function(e,t){var a="zh-CN";switch(e){case 0:a="zh-HK";break;case 1:a="zh-CN"}this.setState({resultLang:a,sourceType:e,targetType:t})}},{key:"handleSnackBarClose",value:function(){this.setState({showSnackBar:!1})}},{key:"render",value:function(){var e=this,t=this.props.classes;return r.a.createElement(r.a.Fragment,null,r.a.createElement(p.a,{theme:ce},r.a.createElement("div",{className:"App"},r.a.createElement(B.a,null),r.a.createElement(b.a,{position:"relative"},r.a.createElement(N.a,null,r.a.createElement(x.a,{variant:"h6",color:"inherit",noWrap:!0,style:{cursor:"default"}},"\u7231\u7ca4\u8bed \u7ca4\u8bed\u7ffb\u8bd1\u5668"))),r.a.createElement("main",null,r.a.createElement("div",{className:"top-bar"}),r.a.createElement("div",{className:t.container},r.a.createElement(H,{sourceType:this.state.sourceType,targetType:this.state.targetType,onChangeType:function(t,a){e.onChangeType(t,a)}}),r.a.createElement("div",{className:"main-container"},r.a.createElement(M,{sourceType:this.state.sourceType,targetType:this.state.targetType,onChangeText:function(t){e.onChangeText(t)}}),r.a.createElement(q,{lang:this.state.resultLang,value:this.state.result,status:this.state.status}))),r.a.createElement("div",{className:"feedback-link"},"\u8bed\u97f3\u5408\u6210\u670d\u52a1\u7531 Google \u63d0\u4f9b"),r.a.createElement("div",{style:{marginTop:"30px"}},r.a.createElement(C.a.Google,{client:"ca-pub-9861052559690015",slot:"1259885204",format:"auto",responsive:"true"}))),r.a.createElement("footer",{className:t.footer},r.a.createElement(x.a,{variant:"body2",align:"center",color:"textSecondary",component:"p"},"\u5982\u679c\u60a8\u7684\u6d4f\u89c8\u5668\u7248\u672c\u8fc7\u4f4e\uff0c",r.a.createElement(Q.a,{href:"/legacy/"},"\u70b9\u8fd9\u91cc\u8fd8\u53ef\u4ee5\u4f7f\u7528\u65e7\u7248")),r.a.createElement(ae,null))),r.a.createElement(Z.a,{open:this.state.showSnackBar,autoHideDuration:3e3,anchorOrigin:{vertical:"top",horizontal:"center"},onClose:function(){e.handleSnackBarClose()}},r.a.createElement(oe,{severity:this.state.snackBarType},this.state.snackBarText))))}}]),a}(r.a.Component),ue=Object(O.a)((function(e){return{container:{background:"#fff",borderBottom:"#e0e0e0 1px solid"},footer:{padding:e.spacing(6)}}}))(le);Boolean("localhost"===window.location.hostname||"[::1]"===window.location.hostname||window.location.hostname.match(/^127(?:\.(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$/));i.a.render(r.a.createElement(r.a.StrictMode,null,r.a.createElement(ue,null)),document.getElementById("root")),"serviceWorker"in navigator&&navigator.serviceWorker.ready.then((function(e){e.unregister()})).catch((function(e){console.error(e.message)}))},75:function(e,t,a){e.exports=a(109)},80:function(e,t,a){}},[[75,1,2]]]);
//# sourceMappingURL=main.a312cb1a.chunk.js.map