// Garden Gnome Software - Skin
// Pano2VR 3.1.4/1952
// Filename: MIT_IPHONE.ggsk
// Generated Sat Aug 20 14:46:26 2016

function pano2vrSkin(player,base) {
	var me=this;
	var flag=false;
	this.player=player;
	this.player.skinObj=this;
	this.divSkin=player.divSkin;
	var basePath="";
	// auto detect base path
	if (base=='?') {
		var scripts = document.getElementsByTagName('script');
		for(var i=0;i<scripts.length;i++) {
			var src=scripts[i].src;
			if (src.indexOf('skin.js')>=0) {
				var p=src.lastIndexOf('/');
				if (p>=0) {
					basePath=src.substr(0,p+1);
				}
			}
		}
	} else
	if (base) {
		basePath=base;
	}
	this.elementMouseDown=new Array();
	this.elementMouseOver=new Array();
	var cssPrefix='';
	var domTransition='transition';
	var domTransform='transform';
	var prefixes='Webkit,Moz,O,ms,Ms'.split(',');
	var i;
	for(i=0;i<prefixes.length;i++) {
		if (typeof document.body.style[prefixes[i] + 'Transform'] !== 'undefined') {
			cssPrefix='-' + prefixes[i].toLowerCase() + '-';
			domTransition=prefixes[i] + 'Transition';
			domTransform=prefixes[i] + 'Transform';
		}
	}
	
	this.player.setMargins(0,0,0,0);
	
	this.updateSize=function(startElement) {
		var stack=new Array();
		stack.push(startElement);
		while(stack.length>0) {
			e=stack.pop();
			if (e.ggUpdatePosition) {
				e.ggUpdatePosition();
			}
			if (e.hasChildNodes()) {
				for(i=0;i<e.childNodes.length;i++) {
					stack.push(e.childNodes[i]);
				}
			}
		}
	}
	
	parameterToTransform=function(p) {
		return 'translate(' + p.rx + 'px,' + p.ry + 'px) rotate(' + p.a + 'deg) scale(' + p.sx + ',' + p.sy + ')';
	}
	
	this.findElements=function(id,regex) {
		var r=new Array();
		var stack=new Array();
		var pat=new RegExp(id,'');
		stack.push(me.divSkin);
		while(stack.length>0) {
			e=stack.pop();
			if (regex) {
				if (pat.test(e.ggId)) r.push(e);
			} else {
				if (e.ggId==id) r.push(e);
			}
			if (e.hasChildNodes()) {
				for(i=0;i<e.childNodes.length;i++) {
					stack.push(e.childNodes[i]);
				}
			}
		}
		return r;
	}
	
	this.preloadImages=function() {
		var preLoadImg=new Image();
		preLoadImg.src=basePath + 'images/info__a.png';
		preLoadImg.src=basePath + 'images/zoom_in0__a.png';
		preLoadImg.src=basePath + 'images/zoom_out0__a.png';
		preLoadImg.src=basePath + 'images/left0__a.png';
		preLoadImg.src=basePath + 'images/right0__a.png';
		preLoadImg.src=basePath + 'images/up0__a.png';
		preLoadImg.src=basePath + 'images/down0__a.png';
		preLoadImg.src=basePath + 'images/reset_view__a.png';
		preLoadImg.src=basePath + 'images/speed_controller__a.png';
		preLoadImg.src=basePath + 'images/fullscreen__a.png';
		preLoadImg.src=basePath + 'images/close__o.png';
		preLoadImg.src=basePath + 'images/close__a.png';
	}
	
	this.addSkin=function() {
		this._zoom=document.createElement('div');
		this._zoom.ggId='zoom'
		this._zoom.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._zoom.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 20px;';
		hs+='top:  50px;';
		hs+='width: 20px;';
		hs+='height: 140px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._zoom.setAttribute('style',hs);
		this.divSkin.appendChild(this._zoom);
		this._text_192=document.createElement('div');
		this._text_192.ggId='Text 192'
		this._text_192.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._text_192.ggVisible=true;
		this._text_192.ggUpdatePosition=function() {
			this.style[domTransition]='none';
			if (this.parentNode) {
				h=this.parentNode.offsetHeight;
				this.style.top=(139 + h) + 'px';
			}
		}
		hs ='position:absolute;';
		hs+='left: 24px;';
		hs+='top:  139px;';
		hs+='width: 197px;';
		hs+='height: 19px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		hs+='border: 0px solid #000000;';
		hs+='color: #000000;';
		hs+='text-align: left;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._text_192.setAttribute('style',hs);
		this._text_192.innerHTML="<b><span style=\"font-family: Arial;\"><font size=\"12\">Powered by <\/font><\/span><\/b>";
		this._button_196=document.createElement('div');
		this._button_196.ggId='Button 196'
		this._button_196.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._button_196.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 84px;';
		hs+='top:  -19px;';
		hs+='width: 59px;';
		hs+='height: 61px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._button_196.setAttribute('style',hs);
		this._button_196__img=document.createElement('img');
		this._button_196__img.setAttribute('src',basePath + 'images/button_196.png');
		this._button_196__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._button_196__img);
		this._button_196.appendChild(this._button_196__img);
		this._text_192.appendChild(this._button_196);
		this.divSkin.appendChild(this._text_192);
		this._container=document.createElement('div');
		this._container.ggId='Container'
		this._container.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._container.ggVisible=true;
		this._container.ggUpdatePosition=function() {
			this.style[domTransition]='none';
			if (this.parentNode) {
				w=this.parentNode.offsetWidth;
				this.style.left=(-246 + w/2) + 'px';
				h=this.parentNode.offsetHeight;
				this.style.top=(-75 + h) + 'px';
			}
		}
		hs ='position:absolute;';
		hs+='left: -246px;';
		hs+='top:  -75px;';
		hs+='width: 379px;';
		hs+='height: 60px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._container.setAttribute('style',hs);
		this._info=document.createElement('div');
		this._info.ggId='info'
		this._info.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._info.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 257px;';
		hs+='top:  -26px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._info.setAttribute('style',hs);
		this._info__img=document.createElement('img');
		this._info__img.setAttribute('src',basePath + 'images/info.png');
		this._info__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._info__img);
		this._info.appendChild(this._info__img);
		this._info.onclick=function () {
			me._screen.style[domTransition]='none';
			me._screen.style.visibility='inherit';
			me._screen.ggVisible=true;
			me._screen.style[domTransition]='none';
			me._screen.ggParameter.sx=1;me._screen.ggParameter.sy=1;
			me._screen.style[domTransform]=parameterToTransform(me._screen.ggParameter);
			me._screen.style[domTransition]='none';
			me._screen.ggParameter.a="0";
			me._screen.style[domTransform]=parameterToTransform(me._screen.ggParameter);
		}
		this._info.onmouseover=function () {
			if (me.player.transitionsDisabled) {
				me._info.style[domTransition]='none';
			} else {
				me._info.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._info.ggParameter.rx=0;me._info.ggParameter.ry=-4;
			me._info.style[domTransform]=parameterToTransform(me._info.ggParameter);
			me._txt_info.style[domTransition]='none';
			me._txt_info.style.visibility='inherit';
			me._txt_info.ggVisible=true;
		}
		this._info.onmouseout=function () {
			if (me.player.transitionsDisabled) {
				me._info.style[domTransition]='none';
			} else {
				me._info.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._info.ggParameter.rx=0;me._info.ggParameter.ry=0;
			me._info.style[domTransform]=parameterToTransform(me._info.ggParameter);
			me._txt_info.style[domTransition]='none';
			me._txt_info.style.visibility='hidden';
			me._txt_info.ggVisible=false;
		}
		this._info.onmousedown=function () {
			me._info__img.src=basePath + 'images/info__a.png';
		}
		this._info.onmouseup=function () {
			me._info__img.src=basePath + 'images/info.png';
		}
		this._txt_info=document.createElement('div');
		this._txt_info.ggId='txt info'
		this._txt_info.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_info.ggVisible=false;
		hs ='position:absolute;';
		hs+='left: -41px;';
		hs+='top:  25px;';
		hs+='width: 120px;';
		hs+='height: 26px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: hidden;';
		this._txt_info.setAttribute('style',hs);
		this._txt_info__img=document.createElement('img');
		this._txt_info__img.setAttribute('src',basePath + 'images/txt_info.png');
		this._txt_info__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_info__img);
		this._txt_info.appendChild(this._txt_info__img);
		this._info.appendChild(this._txt_info);
		this._container.appendChild(this._info);
		this._zoom_in0=document.createElement('div');
		this._zoom_in0.ggId='zoom in'
		this._zoom_in0.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._zoom_in0.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 256px;';
		hs+='top:  12px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._zoom_in0.setAttribute('style',hs);
		this._zoom_in0__img=document.createElement('img');
		this._zoom_in0__img.setAttribute('src',basePath + 'images/zoom_in0.png');
		this._zoom_in0__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._zoom_in0__img);
		this._zoom_in0.appendChild(this._zoom_in0__img);
		this._zoom_in0.onmouseover=function () {
			if (me.player.transitionsDisabled) {
				me._zoom_in0.style[domTransition]='none';
			} else {
				me._zoom_in0.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._zoom_in0.ggParameter.rx=0;me._zoom_in0.ggParameter.ry=-4;
			me._zoom_in0.style[domTransform]=parameterToTransform(me._zoom_in0.ggParameter);
			me._txt_zoom_in.style[domTransition]='none';
			me._txt_zoom_in.style.visibility='inherit';
			me._txt_zoom_in.ggVisible=true;
		}
		this._zoom_in0.onmouseout=function () {
			if (me.player.transitionsDisabled) {
				me._zoom_in0.style[domTransition]='none';
			} else {
				me._zoom_in0.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._zoom_in0.ggParameter.rx=0;me._zoom_in0.ggParameter.ry=0;
			me._zoom_in0.style[domTransform]=parameterToTransform(me._zoom_in0.ggParameter);
			me._txt_zoom_in.style[domTransition]='none';
			me._txt_zoom_in.style.visibility='hidden';
			me._txt_zoom_in.ggVisible=false;
			me.elementMouseDown['zoom_in0']=false;
		}
		this._zoom_in0.onmousedown=function () {
			me._zoom_in0__img.src=basePath + 'images/zoom_in0__a.png';
			me.elementMouseDown['zoom_in0']=true;
		}
		this._zoom_in0.onmouseup=function () {
			me._zoom_in0__img.src=basePath + 'images/zoom_in0.png';
			me.elementMouseDown['zoom_in0']=false;
		}
		this._zoom_in0.ontouchend=function () {
			me.elementMouseDown['zoom_in0']=false;
		}
		this._txt_zoom_in=document.createElement('div');
		this._txt_zoom_in.ggId='txt zoom in'
		this._txt_zoom_in.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_zoom_in.ggVisible=false;
		hs ='position:absolute;';
		hs+='left: -49px;';
		hs+='top:  23px;';
		hs+='width: 120px;';
		hs+='height: 26px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: hidden;';
		this._txt_zoom_in.setAttribute('style',hs);
		this._txt_zoom_in__img=document.createElement('img');
		this._txt_zoom_in__img.setAttribute('src',basePath + 'images/txt_zoom_in.png');
		this._txt_zoom_in__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_zoom_in__img);
		this._txt_zoom_in.appendChild(this._txt_zoom_in__img);
		this._zoom_in0.appendChild(this._txt_zoom_in);
		this._container.appendChild(this._zoom_in0);
		this._zoom_out0=document.createElement('div');
		this._zoom_out0.ggId='zoom out'
		this._zoom_out0.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._zoom_out0.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 290px;';
		hs+='top:  12px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._zoom_out0.setAttribute('style',hs);
		this._zoom_out0__img=document.createElement('img');
		this._zoom_out0__img.setAttribute('src',basePath + 'images/zoom_out0.png');
		this._zoom_out0__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._zoom_out0__img);
		this._zoom_out0.appendChild(this._zoom_out0__img);
		this._zoom_out0.onmouseover=function () {
			if (me.player.transitionsDisabled) {
				me._zoom_out0.style[domTransition]='none';
			} else {
				me._zoom_out0.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._zoom_out0.ggParameter.rx=0;me._zoom_out0.ggParameter.ry=-4;
			me._zoom_out0.style[domTransform]=parameterToTransform(me._zoom_out0.ggParameter);
			me._txt_zoom_out.style[domTransition]='none';
			me._txt_zoom_out.style.visibility='inherit';
			me._txt_zoom_out.ggVisible=true;
		}
		this._zoom_out0.onmouseout=function () {
			if (me.player.transitionsDisabled) {
				me._zoom_out0.style[domTransition]='none';
			} else {
				me._zoom_out0.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._zoom_out0.ggParameter.rx=0;me._zoom_out0.ggParameter.ry=0;
			me._zoom_out0.style[domTransform]=parameterToTransform(me._zoom_out0.ggParameter);
			me._txt_zoom_out.style[domTransition]='none';
			me._txt_zoom_out.style.visibility='hidden';
			me._txt_zoom_out.ggVisible=false;
			me.elementMouseDown['zoom_out0']=false;
		}
		this._zoom_out0.onmousedown=function () {
			me._zoom_out0__img.src=basePath + 'images/zoom_out0__a.png';
			me.elementMouseDown['zoom_out0']=true;
		}
		this._zoom_out0.onmouseup=function () {
			me._zoom_out0__img.src=basePath + 'images/zoom_out0.png';
			me.elementMouseDown['zoom_out0']=false;
		}
		this._zoom_out0.ontouchend=function () {
			me.elementMouseDown['zoom_out0']=false;
		}
		this._txt_zoom_out=document.createElement('div');
		this._txt_zoom_out.ggId='txt zoom out'
		this._txt_zoom_out.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_zoom_out.ggVisible=false;
		hs ='position:absolute;';
		hs+='left: -46px;';
		hs+='top:  22px;';
		hs+='width: 120px;';
		hs+='height: 26px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: hidden;';
		this._txt_zoom_out.setAttribute('style',hs);
		this._txt_zoom_out__img=document.createElement('img');
		this._txt_zoom_out__img.setAttribute('src',basePath + 'images/txt_zoom_out.png');
		this._txt_zoom_out__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_zoom_out__img);
		this._txt_zoom_out.appendChild(this._txt_zoom_out__img);
		this._zoom_out0.appendChild(this._txt_zoom_out);
		this._container.appendChild(this._zoom_out0);
		this._left0=document.createElement('div');
		this._left0.ggId='left'
		this._left0.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._left0.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 122px;';
		hs+='top:  10px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._left0.setAttribute('style',hs);
		this._left0__img=document.createElement('img');
		this._left0__img.setAttribute('src',basePath + 'images/left0.png');
		this._left0__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._left0__img);
		this._left0.appendChild(this._left0__img);
		this._left0.onmouseover=function () {
			if (me.player.transitionsDisabled) {
				me._left0.style[domTransition]='none';
			} else {
				me._left0.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._left0.ggParameter.rx=0;me._left0.ggParameter.ry=-4;
			me._left0.style[domTransform]=parameterToTransform(me._left0.ggParameter);
			me._txt_left.style[domTransition]='none';
			me._txt_left.style.visibility='inherit';
			me._txt_left.ggVisible=true;
		}
		this._left0.onmouseout=function () {
			if (me.player.transitionsDisabled) {
				me._left0.style[domTransition]='none';
			} else {
				me._left0.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._left0.ggParameter.rx=0;me._left0.ggParameter.ry=0;
			me._left0.style[domTransform]=parameterToTransform(me._left0.ggParameter);
			me._txt_left.style[domTransition]='none';
			me._txt_left.style.visibility='hidden';
			me._txt_left.ggVisible=false;
			me.elementMouseDown['left0']=false;
		}
		this._left0.onmousedown=function () {
			me._left0__img.src=basePath + 'images/left0__a.png';
			me.elementMouseDown['left0']=true;
		}
		this._left0.onmouseup=function () {
			me._left0__img.src=basePath + 'images/left0.png';
			me.elementMouseDown['left0']=false;
		}
		this._left0.ontouchend=function () {
			me.elementMouseDown['left0']=false;
		}
		this._txt_left=document.createElement('div');
		this._txt_left.ggId='txt left'
		this._txt_left.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_left.ggVisible=false;
		hs ='position:absolute;';
		hs+='left: -41px;';
		hs+='top:  26px;';
		hs+='width: 120px;';
		hs+='height: 26px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: hidden;';
		this._txt_left.setAttribute('style',hs);
		this._txt_left__img=document.createElement('img');
		this._txt_left__img.setAttribute('src',basePath + 'images/txt_left.png');
		this._txt_left__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_left__img);
		this._txt_left.appendChild(this._txt_left__img);
		this._left0.appendChild(this._txt_left);
		this._container.appendChild(this._left0);
		this._right0=document.createElement('div');
		this._right0.ggId='right'
		this._right0.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._right0.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 156px;';
		hs+='top:  10px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._right0.setAttribute('style',hs);
		this._right0__img=document.createElement('img');
		this._right0__img.setAttribute('src',basePath + 'images/right0.png');
		this._right0__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._right0__img);
		this._right0.appendChild(this._right0__img);
		this._right0.onmouseover=function () {
			if (me.player.transitionsDisabled) {
				me._right0.style[domTransition]='none';
			} else {
				me._right0.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._right0.ggParameter.rx=0;me._right0.ggParameter.ry=-4;
			me._right0.style[domTransform]=parameterToTransform(me._right0.ggParameter);
			me._txt_right.style[domTransition]='none';
			me._txt_right.style.visibility='inherit';
			me._txt_right.ggVisible=true;
		}
		this._right0.onmouseout=function () {
			if (me.player.transitionsDisabled) {
				me._right0.style[domTransition]='none';
			} else {
				me._right0.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._right0.ggParameter.rx=0;me._right0.ggParameter.ry=0;
			me._right0.style[domTransform]=parameterToTransform(me._right0.ggParameter);
			flag=(me._txt_right.style.visibility=='hidden');
			me._txt_right.style[domTransition]='none';
			me._txt_right.style.visibility=flag?'inherit':'hidden';
			me._txt_right.ggVisible=flag;
			me.elementMouseDown['right0']=false;
		}
		this._right0.onmousedown=function () {
			me._right0__img.src=basePath + 'images/right0__a.png';
			me.elementMouseDown['right0']=true;
		}
		this._right0.onmouseup=function () {
			me._right0__img.src=basePath + 'images/right0.png';
			me.elementMouseDown['right0']=false;
		}
		this._right0.ontouchend=function () {
			me.elementMouseDown['right0']=false;
		}
		this._txt_right=document.createElement('div');
		this._txt_right.ggId='txt right'
		this._txt_right.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_right.ggVisible=false;
		hs ='position:absolute;';
		hs+='left: -38px;';
		hs+='top:  24px;';
		hs+='width: 120px;';
		hs+='height: 26px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: hidden;';
		this._txt_right.setAttribute('style',hs);
		this._txt_right__img=document.createElement('img');
		this._txt_right__img.setAttribute('src',basePath + 'images/txt_right.png');
		this._txt_right__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_right__img);
		this._txt_right.appendChild(this._txt_right__img);
		this._right0.appendChild(this._txt_right);
		this._container.appendChild(this._right0);
		this._up0=document.createElement('div');
		this._up0.ggId='up'
		this._up0.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._up0.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 190px;';
		hs+='top:  11px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._up0.setAttribute('style',hs);
		this._up0__img=document.createElement('img');
		this._up0__img.setAttribute('src',basePath + 'images/up0.png');
		this._up0__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._up0__img);
		this._up0.appendChild(this._up0__img);
		this._up0.onmouseover=function () {
			if (me.player.transitionsDisabled) {
				me._up0.style[domTransition]='none';
			} else {
				me._up0.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._up0.ggParameter.rx=0;me._up0.ggParameter.ry=-4;
			me._up0.style[domTransform]=parameterToTransform(me._up0.ggParameter);
			me._txt_up.style[domTransition]='none';
			me._txt_up.style.visibility='inherit';
			me._txt_up.ggVisible=true;
		}
		this._up0.onmouseout=function () {
			if (me.player.transitionsDisabled) {
				me._up0.style[domTransition]='none';
			} else {
				me._up0.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._up0.ggParameter.rx=0;me._up0.ggParameter.ry=0;
			me._up0.style[domTransform]=parameterToTransform(me._up0.ggParameter);
			me._txt_up.style[domTransition]='none';
			me._txt_up.style.visibility='hidden';
			me._txt_up.ggVisible=false;
			me.elementMouseDown['up0']=false;
		}
		this._up0.onmousedown=function () {
			me._up0__img.src=basePath + 'images/up0__a.png';
			me.elementMouseDown['up0']=true;
		}
		this._up0.onmouseup=function () {
			me._up0__img.src=basePath + 'images/up0.png';
			me.elementMouseDown['up0']=false;
		}
		this._up0.ontouchend=function () {
			me.elementMouseDown['up0']=false;
		}
		this._txt_up=document.createElement('div');
		this._txt_up.ggId='txt up'
		this._txt_up.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_up.ggVisible=false;
		hs ='position:absolute;';
		hs+='left: -39px;';
		hs+='top:  25px;';
		hs+='width: 120px;';
		hs+='height: 26px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: hidden;';
		this._txt_up.setAttribute('style',hs);
		this._txt_up__img=document.createElement('img');
		this._txt_up__img.setAttribute('src',basePath + 'images/txt_up.png');
		this._txt_up__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_up__img);
		this._txt_up.appendChild(this._txt_up__img);
		this._up0.appendChild(this._txt_up);
		this._container.appendChild(this._up0);
		this._down0=document.createElement('div');
		this._down0.ggId='down'
		this._down0.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._down0.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 224px;';
		hs+='top:  12px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._down0.setAttribute('style',hs);
		this._down0__img=document.createElement('img');
		this._down0__img.setAttribute('src',basePath + 'images/down0.png');
		this._down0__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._down0__img);
		this._down0.appendChild(this._down0__img);
		this._down0.onmouseover=function () {
			if (me.player.transitionsDisabled) {
				me._down0.style[domTransition]='none';
			} else {
				me._down0.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._down0.ggParameter.rx=0;me._down0.ggParameter.ry=-4;
			me._down0.style[domTransform]=parameterToTransform(me._down0.ggParameter);
			me._txt_down.style[domTransition]='none';
			me._txt_down.style.visibility='inherit';
			me._txt_down.ggVisible=true;
		}
		this._down0.onmouseout=function () {
			if (me.player.transitionsDisabled) {
				me._down0.style[domTransition]='none';
			} else {
				me._down0.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._down0.ggParameter.rx=0;me._down0.ggParameter.ry=0;
			me._down0.style[domTransform]=parameterToTransform(me._down0.ggParameter);
			me._txt_down.style[domTransition]='none';
			me._txt_down.style.visibility='hidden';
			me._txt_down.ggVisible=false;
			me.elementMouseDown['down0']=false;
		}
		this._down0.onmousedown=function () {
			me._down0__img.src=basePath + 'images/down0__a.png';
			me.elementMouseDown['down0']=true;
		}
		this._down0.onmouseup=function () {
			me._down0__img.src=basePath + 'images/down0.png';
			me.elementMouseDown['down0']=false;
		}
		this._down0.ontouchend=function () {
			me.elementMouseDown['down0']=false;
		}
		this._txt_down=document.createElement('div');
		this._txt_down.ggId='txt down'
		this._txt_down.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_down.ggVisible=false;
		hs ='position:absolute;';
		hs+='left: -42px;';
		hs+='top:  24px;';
		hs+='width: 120px;';
		hs+='height: 26px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: hidden;';
		this._txt_down.setAttribute('style',hs);
		this._txt_down__img=document.createElement('img');
		this._txt_down__img.setAttribute('src',basePath + 'images/txt_down.png');
		this._txt_down__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_down__img);
		this._txt_down.appendChild(this._txt_down__img);
		this._down0.appendChild(this._txt_down);
		this._container.appendChild(this._down0);
		this._reset_view=document.createElement('div');
		this._reset_view.ggId='reset view'
		this._reset_view.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._reset_view.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 226px;';
		hs+='top:  -26px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._reset_view.setAttribute('style',hs);
		this._reset_view__img=document.createElement('img');
		this._reset_view__img.setAttribute('src',basePath + 'images/reset_view.png');
		this._reset_view__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._reset_view__img);
		this._reset_view.appendChild(this._reset_view__img);
		this._reset_view.onclick=function () {
			me.player.moveToDefaultView(0);
		}
		this._reset_view.onmouseover=function () {
			if (me.player.transitionsDisabled) {
				me._reset_view.style[domTransition]='none';
			} else {
				me._reset_view.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._reset_view.ggParameter.rx=0;me._reset_view.ggParameter.ry=-4;
			me._reset_view.style[domTransform]=parameterToTransform(me._reset_view.ggParameter);
			me._txt_reset_view.style[domTransition]='none';
			me._txt_reset_view.style.visibility='inherit';
			me._txt_reset_view.ggVisible=true;
		}
		this._reset_view.onmouseout=function () {
			if (me.player.transitionsDisabled) {
				me._reset_view.style[domTransition]='none';
			} else {
				me._reset_view.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._reset_view.ggParameter.rx=0;me._reset_view.ggParameter.ry=0;
			me._reset_view.style[domTransform]=parameterToTransform(me._reset_view.ggParameter);
			me._txt_reset_view.style[domTransition]='none';
			me._txt_reset_view.style.visibility='hidden';
			me._txt_reset_view.ggVisible=false;
		}
		this._reset_view.onmousedown=function () {
			me._reset_view__img.src=basePath + 'images/reset_view__a.png';
		}
		this._reset_view.onmouseup=function () {
			me._reset_view__img.src=basePath + 'images/reset_view.png';
		}
		this._txt_reset_view=document.createElement('div');
		this._txt_reset_view.ggId='txt reset view'
		this._txt_reset_view.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_reset_view.ggVisible=false;
		hs ='position:absolute;';
		hs+='left: -37px;';
		hs+='top:  26px;';
		hs+='width: 120px;';
		hs+='height: 26px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: hidden;';
		this._txt_reset_view.setAttribute('style',hs);
		this._txt_reset_view__img=document.createElement('img');
		this._txt_reset_view__img.setAttribute('src',basePath + 'images/txt_reset_view.png');
		this._txt_reset_view__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_reset_view__img);
		this._txt_reset_view.appendChild(this._txt_reset_view__img);
		this._reset_view.appendChild(this._txt_reset_view);
		this._container.appendChild(this._reset_view);
		this._speed_controller=document.createElement('div');
		this._speed_controller.ggId='Speed controller'
		this._speed_controller.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._speed_controller.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 321px;';
		hs+='top:  12px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._speed_controller.setAttribute('style',hs);
		this._speed_controller__img=document.createElement('img');
		this._speed_controller__img.setAttribute('src',basePath + 'images/speed_controller.png');
		this._speed_controller__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._speed_controller__img);
		this._speed_controller.appendChild(this._speed_controller__img);
		this._speed_controller.onclick=function () {
			me.player.startAutorotate("0.08","1","0.08");
			me._speed_controller.style[domTransition]='none';
			me._speed_controller.style.visibility='inherit';
			me._speed_controller.ggVisible=true;
		}
		this._speed_controller.ondblclick=function () {
			me.player.stopAutorotate();
		}
		this._speed_controller.onmouseover=function () {
			if (me.player.transitionsDisabled) {
				me._speed_controller.style[domTransition]='none';
			} else {
				me._speed_controller.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._speed_controller.ggParameter.rx=0;me._speed_controller.ggParameter.ry=-4;
			me._speed_controller.style[domTransform]=parameterToTransform(me._speed_controller.ggParameter);
			me._txt_autorotate.style[domTransition]='none';
			me._txt_autorotate.style.visibility='inherit';
			me._txt_autorotate.ggVisible=true;
			me._rotation_controller.style[domTransition]='none';
			me._rotation_controller.style.opacity='1';
			me._rotation_controller.style.visibility=me._rotation_controller.ggVisible?'inherit':'hidden';
		}
		this._speed_controller.onmouseout=function () {
			if (me.player.transitionsDisabled) {
				me._speed_controller.style[domTransition]='none';
			} else {
				me._speed_controller.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._speed_controller.ggParameter.rx=0;me._speed_controller.ggParameter.ry=0;
			me._speed_controller.style[domTransform]=parameterToTransform(me._speed_controller.ggParameter);
			me._txt_autorotate.style[domTransition]='none';
			me._txt_autorotate.style.visibility='hidden';
			me._txt_autorotate.ggVisible=false;
			if (me.player.transitionsDisabled) {
				me._rotation_controller.style[domTransition]='none';
			} else {
				me._rotation_controller.style[domTransition]='all 500ms ease-out 0ms';
			}
			me._rotation_controller.style.opacity='0';
			me._rotation_controller.style.visibility='hidden';
		}
		this._speed_controller.onmousedown=function () {
			me._speed_controller__img.src=basePath + 'images/speed_controller__a.png';
		}
		this._speed_controller.onmouseup=function () {
			me._speed_controller__img.src=basePath + 'images/speed_controller.png';
		}
		this._txt_autorotate=document.createElement('div');
		this._txt_autorotate.ggId='txt autorotate'
		this._txt_autorotate.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_autorotate.ggVisible=false;
		hs ='position:absolute;';
		hs+='left: -57px;';
		hs+='top:  24px;';
		hs+='width: 150px;';
		hs+='height: 26px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: hidden;';
		this._txt_autorotate.setAttribute('style',hs);
		this._txt_autorotate__img=document.createElement('img');
		this._txt_autorotate__img.setAttribute('src',basePath + 'images/txt_autorotate.png');
		this._txt_autorotate__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_autorotate__img);
		this._txt_autorotate.appendChild(this._txt_autorotate__img);
		this._speed_controller.appendChild(this._txt_autorotate);
		this._container.appendChild(this._speed_controller);
		this._fullscreen=document.createElement('div');
		this._fullscreen.ggId='fullscreen'
		this._fullscreen.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._fullscreen.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 357px;';
		hs+='top:  13px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._fullscreen.setAttribute('style',hs);
		this._fullscreen__img=document.createElement('img');
		this._fullscreen__img.setAttribute('src',basePath + 'images/fullscreen.png');
		this._fullscreen__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._fullscreen__img);
		this._fullscreen.appendChild(this._fullscreen__img);
		this._fullscreen.onclick=function () {
			me.player.toggleFullscreen();
		}
		this._fullscreen.onmouseover=function () {
			if (me.player.transitionsDisabled) {
				me._fullscreen.style[domTransition]='none';
			} else {
				me._fullscreen.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._fullscreen.ggParameter.rx=0;me._fullscreen.ggParameter.ry=-4;
			me._fullscreen.style[domTransform]=parameterToTransform(me._fullscreen.ggParameter);
			me._txt_fullscreen.style[domTransition]='none';
			me._txt_fullscreen.style.visibility='inherit';
			me._txt_fullscreen.ggVisible=true;
		}
		this._fullscreen.onmouseout=function () {
			if (me.player.transitionsDisabled) {
				me._fullscreen.style[domTransition]='none';
			} else {
				me._fullscreen.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._fullscreen.ggParameter.rx=0;me._fullscreen.ggParameter.ry=0;
			me._fullscreen.style[domTransform]=parameterToTransform(me._fullscreen.ggParameter);
			me._txt_fullscreen.style[domTransition]='none';
			me._txt_fullscreen.style.visibility='hidden';
			me._txt_fullscreen.ggVisible=false;
		}
		this._fullscreen.onmousedown=function () {
			me._fullscreen__img.src=basePath + 'images/fullscreen__a.png';
		}
		this._fullscreen.onmouseup=function () {
			me._fullscreen__img.src=basePath + 'images/fullscreen.png';
		}
		this._txt_fullscreen=document.createElement('div');
		this._txt_fullscreen.ggId='txt fullscreen'
		this._txt_fullscreen.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_fullscreen.ggVisible=false;
		hs ='position:absolute;';
		hs+='left: -37px;';
		hs+='top:  25px;';
		hs+='width: 120px;';
		hs+='height: 26px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: hidden;';
		this._txt_fullscreen.setAttribute('style',hs);
		this._txt_fullscreen__img=document.createElement('img');
		this._txt_fullscreen__img.setAttribute('src',basePath + 'images/txt_fullscreen.png');
		this._txt_fullscreen__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_fullscreen__img);
		this._txt_fullscreen.appendChild(this._txt_fullscreen__img);
		this._fullscreen.appendChild(this._txt_fullscreen);
		this._container.appendChild(this._fullscreen);
		this._zooming_value=document.createElement('div');
		this._zooming_value.ggId='Zooming Value'
		this._zooming_value.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._zooming_value.ggVisible=false;
		this._zooming_value.ggUpdatePosition=function() {
			this.style[domTransition]='none';
			if (this.parentNode) {
				w=this.parentNode.offsetWidth;
				this.style.left=(270 + w/2) + 'px';
			}
		}
		hs ='position:absolute;';
		hs+='left: 270px;';
		hs+='top:  28px;';
		hs+='width: 129px;';
		hs+='height: 29px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='opacity: 0.5;';
		hs+='visibility: hidden;';
		hs+='border: 0px solid #000000;';
		hs+='color: #000000;';
		hs+='text-align: center;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._zooming_value.setAttribute('style',hs);
		this._zooming_value.ggUpdateText=function() {
			this.innerHTML=me.player.getPanN().toFixed(1)+"\/"+me.player.getTilt().toFixed(1)+"\/"+me.player.getFov().toFixed(1);
		}
		this._zooming_value.ggUpdateText();
		this._container.appendChild(this._zooming_value);
		this._rotation_controller=document.createElement('div');
		this._rotation_controller.ggId='Rotation controller'
		this._rotation_controller.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._rotation_controller.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 329px;';
		hs+='top:  -12px;';
		hs+='width: 62px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='opacity: 0;';
		hs+='visibility: hidden;';
		this._rotation_controller.setAttribute('style',hs);
		this._rotation_controller.onmouseover=function () {
			me._rotation_controller.style[domTransition]='none';
			me._rotation_controller.style.opacity='1';
			me._rotation_controller.style.visibility=me._rotation_controller.ggVisible?'inherit':'hidden';
		}
		this._rotation_controller.onmouseout=function () {
			if (me.player.transitionsDisabled) {
				me._rotation_controller.style[domTransition]='none';
			} else {
				me._rotation_controller.style[domTransition]='all 500ms ease-out 0ms';
			}
			me._rotation_controller.style.opacity='0';
			me._rotation_controller.style.visibility='hidden';
		}
		this._bkgd=document.createElement('div');
		this._bkgd.ggId='bkgd'
		this._bkgd.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._bkgd.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 6px;';
		hs+='top:  3px;';
		hs+='width: 54px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='background-color: #f1f1f1;';
		this._bkgd.setAttribute('style',hs);
		this._rotation_controller.appendChild(this._bkgd);
		this._green_bar=document.createElement('div');
		this._green_bar.ggId='green bar'
		this._green_bar.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._green_bar.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 53px;';
		hs+='top:  4px;';
		hs+='width: 6px;';
		hs+='height: 17px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='background-color: #00ff00;';
		this._green_bar.setAttribute('style',hs);
		this._rotation_controller.appendChild(this._green_bar);
		this._vol_0=document.createElement('div');
		this._vol_0.ggId='vol 0'
		this._vol_0.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._vol_0.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 4px;';
		hs+='top:  3px;';
		hs+='width: 6px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._vol_0.setAttribute('style',hs);
		this._vol_0__img=document.createElement('img');
		this._vol_0__img.setAttribute('src',basePath + 'images/vol_0.png');
		this._vol_0__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._vol_0__img);
		this._vol_0.appendChild(this._vol_0__img);
		this._vol_0.onclick=function () {
			me.player.stopAutorotate();
		}
		this._vol_0.onmouseover=function () {
			me._green_bar.style[domTransition]='none';
			me._green_bar.style.visibility='inherit';
			me._green_bar.ggVisible=true;
			me._green_bar.style[domTransition]='none';
			me._green_bar.ggParameter.rx=-49;me._green_bar.ggParameter.ry=0;
			me._green_bar.style[domTransform]=parameterToTransform(me._green_bar.ggParameter);
			me._txt_0.style[domTransition]='none';
			me._txt_0.style.visibility='inherit';
			me._txt_0.ggVisible=true;
			me._txt_1.style[domTransition]='none';
			me._txt_1.style.visibility='hidden';
			me._txt_1.ggVisible=false;
			me._txt_2.style[domTransition]='none';
			me._txt_2.style.visibility='hidden';
			me._txt_2.ggVisible=false;
			me._txt_3.style[domTransition]='none';
			me._txt_3.style.visibility='hidden';
			me._txt_3.ggVisible=false;
			me._txt_4.style[domTransition]='none';
			me._txt_4.style.visibility='hidden';
			me._txt_4.ggVisible=false;
			me._txt_5.style[domTransition]='none';
			me._txt_5.style.visibility='hidden';
			me._txt_5.ggVisible=false;
			me._txt_6.style[domTransition]='none';
			me._txt_6.style.visibility='hidden';
			me._txt_6.ggVisible=false;
			me._txt_7.style[domTransition]='none';
			me._txt_7.style.visibility='hidden';
			me._txt_7.ggVisible=false;
			me._txt_8.style[domTransition]='none';
			me._txt_8.style.visibility='hidden';
			me._txt_8.ggVisible=false;
			me._txt_9.style[domTransition]='none';
			me._txt_9.style.visibility='hidden';
			me._txt_9.ggVisible=false;
			me._txt_10.style[domTransition]='none';
			me._txt_10.style.visibility='hidden';
			me._txt_10.ggVisible=false;
		}
		this._rotation_controller.appendChild(this._vol_0);
		this._vol_1=document.createElement('div');
		this._vol_1.ggId='vol 1'
		this._vol_1.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._vol_1.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 10px;';
		hs+='top:  3px;';
		hs+='width: 5px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._vol_1.setAttribute('style',hs);
		this._vol_1__img=document.createElement('img');
		this._vol_1__img.setAttribute('src',basePath + 'images/vol_1.png');
		this._vol_1__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._vol_1__img);
		this._vol_1.appendChild(this._vol_1__img);
		this._vol_1.onclick=function () {
			me.player.startAutorotate("0.05","1","0.05");
		}
		this._vol_1.onmouseover=function () {
			me._green_bar.style[domTransition]='none';
			me._green_bar.style.visibility='inherit';
			me._green_bar.ggVisible=true;
			me._green_bar.style[domTransition]='none';
			me._green_bar.ggParameter.rx=-44;me._green_bar.ggParameter.ry=0;
			me._green_bar.style[domTransform]=parameterToTransform(me._green_bar.ggParameter);
			me._txt_0.style[domTransition]='none';
			me._txt_0.style.visibility='hidden';
			me._txt_0.ggVisible=false;
			me._txt_2.style[domTransition]='none';
			me._txt_2.style.visibility='hidden';
			me._txt_2.ggVisible=false;
			me._txt_3.style[domTransition]='none';
			me._txt_3.style.visibility='hidden';
			me._txt_3.ggVisible=false;
			me._txt_4.style[domTransition]='none';
			me._txt_4.style.visibility='hidden';
			me._txt_4.ggVisible=false;
			me._txt_5.style[domTransition]='none';
			me._txt_5.style.visibility='hidden';
			me._txt_5.ggVisible=false;
			me._txt_6.style[domTransition]='none';
			me._txt_6.style.visibility='hidden';
			me._txt_6.ggVisible=false;
			me._txt_7.style[domTransition]='none';
			me._txt_7.style.visibility='hidden';
			me._txt_7.ggVisible=false;
			me._txt_8.style[domTransition]='none';
			me._txt_8.style.visibility='hidden';
			me._txt_8.ggVisible=false;
			me._txt_9.style[domTransition]='none';
			me._txt_9.style.visibility='hidden';
			me._txt_9.ggVisible=false;
			me._txt_10.style[domTransition]='none';
			me._txt_10.style.visibility='hidden';
			me._txt_10.ggVisible=false;
			me._txt_1.style[domTransition]='none';
			me._txt_1.style.visibility='inherit';
			me._txt_1.ggVisible=true;
		}
		this._rotation_controller.appendChild(this._vol_1);
		this._vol_2=document.createElement('div');
		this._vol_2.ggId='vol 2'
		this._vol_2.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._vol_2.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 15px;';
		hs+='top:  3px;';
		hs+='width: 5px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._vol_2.setAttribute('style',hs);
		this._vol_2__img=document.createElement('img');
		this._vol_2__img.setAttribute('src',basePath + 'images/vol_2.png');
		this._vol_2__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._vol_2__img);
		this._vol_2.appendChild(this._vol_2__img);
		this._vol_2.onclick=function () {
			me._green_bar.style[domTransition]='none';
			me._green_bar.style.visibility='inherit';
			me._green_bar.ggVisible=true;
		}
		this._vol_2.onmouseover=function () {
			me.player.startAutorotate("0.06","1","0.06");
			me._green_bar.style[domTransition]='none';
			me._green_bar.ggParameter.rx=-39;me._green_bar.ggParameter.ry=0;
			me._green_bar.style[domTransform]=parameterToTransform(me._green_bar.ggParameter);
			me._txt_2.style[domTransition]='none';
			me._txt_2.style.visibility='inherit';
			me._txt_2.ggVisible=true;
			me._txt_0.style[domTransition]='none';
			me._txt_0.style.visibility='hidden';
			me._txt_0.ggVisible=false;
			me._txt_1.style[domTransition]='none';
			me._txt_1.style.visibility='hidden';
			me._txt_1.ggVisible=false;
			me._txt_3.style[domTransition]='none';
			me._txt_3.style.visibility='hidden';
			me._txt_3.ggVisible=false;
			me._txt_4.style[domTransition]='none';
			me._txt_4.style.visibility='hidden';
			me._txt_4.ggVisible=false;
			me._txt_5.style[domTransition]='none';
			me._txt_5.style.visibility='hidden';
			me._txt_5.ggVisible=false;
			me._txt_6.style[domTransition]='none';
			me._txt_6.style.visibility='hidden';
			me._txt_6.ggVisible=false;
			me._txt_7.style[domTransition]='none';
			me._txt_7.style.visibility='hidden';
			me._txt_7.ggVisible=false;
			me._txt_8.style[domTransition]='none';
			me._txt_8.style.visibility='hidden';
			me._txt_8.ggVisible=false;
			me._txt_9.style[domTransition]='none';
			me._txt_9.style.visibility='hidden';
			me._txt_9.ggVisible=false;
			me._txt_10.style[domTransition]='none';
			me._txt_10.style.visibility='hidden';
			me._txt_10.ggVisible=false;
		}
		this._rotation_controller.appendChild(this._vol_2);
		this._vol_3=document.createElement('div');
		this._vol_3.ggId='vol 3'
		this._vol_3.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._vol_3.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 20px;';
		hs+='top:  3px;';
		hs+='width: 5px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._vol_3.setAttribute('style',hs);
		this._vol_3__img=document.createElement('img');
		this._vol_3__img.setAttribute('src',basePath + 'images/vol_3.png');
		this._vol_3__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._vol_3__img);
		this._vol_3.appendChild(this._vol_3__img);
		this._vol_3.onclick=function () {
			me._green_bar.style[domTransition]='none';
			me._green_bar.style.visibility='inherit';
			me._green_bar.ggVisible=true;
		}
		this._vol_3.onmouseover=function () {
			me.player.startAutorotate("0.08","1","0.08");
			me._green_bar.style[domTransition]='none';
			me._green_bar.ggParameter.rx=-34;me._green_bar.ggParameter.ry=0;
			me._green_bar.style[domTransform]=parameterToTransform(me._green_bar.ggParameter);
			me._txt_3.style[domTransition]='none';
			me._txt_3.style.visibility='inherit';
			me._txt_3.ggVisible=true;
			me._txt_0.style[domTransition]='none';
			me._txt_0.style.visibility='hidden';
			me._txt_0.ggVisible=false;
			me._txt_1.style[domTransition]='none';
			me._txt_1.style.visibility='hidden';
			me._txt_1.ggVisible=false;
			me._txt_2.style[domTransition]='none';
			me._txt_2.style.visibility='hidden';
			me._txt_2.ggVisible=false;
			me._txt_4.style[domTransition]='none';
			me._txt_4.style.visibility='hidden';
			me._txt_4.ggVisible=false;
			me._txt_5.style[domTransition]='none';
			me._txt_5.style.visibility='hidden';
			me._txt_5.ggVisible=false;
			me._txt_6.style[domTransition]='none';
			me._txt_6.style.visibility='hidden';
			me._txt_6.ggVisible=false;
			me._txt_7.style[domTransition]='none';
			me._txt_7.style.visibility='hidden';
			me._txt_7.ggVisible=false;
			me._txt_8.style[domTransition]='none';
			me._txt_8.style.visibility='hidden';
			me._txt_8.ggVisible=false;
			me._txt_9.style[domTransition]='none';
			me._txt_9.style.visibility='hidden';
			me._txt_9.ggVisible=false;
			me._txt_10.style[domTransition]='none';
			me._txt_10.style.visibility='hidden';
			me._txt_10.ggVisible=false;
		}
		this._rotation_controller.appendChild(this._vol_3);
		this._vol_4=document.createElement('div');
		this._vol_4.ggId='vol 4'
		this._vol_4.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._vol_4.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 25px;';
		hs+='top:  3px;';
		hs+='width: 5px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._vol_4.setAttribute('style',hs);
		this._vol_4__img=document.createElement('img');
		this._vol_4__img.setAttribute('src',basePath + 'images/vol_4.png');
		this._vol_4__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._vol_4__img);
		this._vol_4.appendChild(this._vol_4__img);
		this._vol_4.onclick=function () {
			me._green_bar.style[domTransition]='none';
			me._green_bar.style.visibility='inherit';
			me._green_bar.ggVisible=true;
		}
		this._vol_4.onmouseover=function () {
			me.player.startAutorotate("0.09","1","0.09");
			me._green_bar.style[domTransition]='none';
			me._green_bar.ggParameter.rx=-29;me._green_bar.ggParameter.ry=0;
			me._green_bar.style[domTransform]=parameterToTransform(me._green_bar.ggParameter);
			me._txt_4.style[domTransition]='none';
			me._txt_4.style.visibility='inherit';
			me._txt_4.ggVisible=true;
			me._txt_0.style[domTransition]='none';
			me._txt_0.style.visibility='hidden';
			me._txt_0.ggVisible=false;
			me._txt_1.style[domTransition]='none';
			me._txt_1.style.visibility='hidden';
			me._txt_1.ggVisible=false;
			me._txt_2.style[domTransition]='none';
			me._txt_2.style.visibility='hidden';
			me._txt_2.ggVisible=false;
			me._txt_3.style[domTransition]='none';
			me._txt_3.style.visibility='hidden';
			me._txt_3.ggVisible=false;
			me._txt_5.style[domTransition]='none';
			me._txt_5.style.visibility='hidden';
			me._txt_5.ggVisible=false;
			me._txt_6.style[domTransition]='none';
			me._txt_6.style.visibility='hidden';
			me._txt_6.ggVisible=false;
			me._txt_7.style[domTransition]='none';
			me._txt_7.style.visibility='hidden';
			me._txt_7.ggVisible=false;
			me._txt_8.style[domTransition]='none';
			me._txt_8.style.visibility='hidden';
			me._txt_8.ggVisible=false;
			me._txt_9.style[domTransition]='none';
			me._txt_9.style.visibility='hidden';
			me._txt_9.ggVisible=false;
			me._txt_10.style[domTransition]='none';
			me._txt_10.style.visibility='hidden';
			me._txt_10.ggVisible=false;
		}
		this._rotation_controller.appendChild(this._vol_4);
		this._vol_5=document.createElement('div');
		this._vol_5.ggId='vol 5'
		this._vol_5.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._vol_5.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 30px;';
		hs+='top:  3px;';
		hs+='width: 5px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._vol_5.setAttribute('style',hs);
		this._vol_5__img=document.createElement('img');
		this._vol_5__img.setAttribute('src',basePath + 'images/vol_5.png');
		this._vol_5__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._vol_5__img);
		this._vol_5.appendChild(this._vol_5__img);
		this._vol_5.onclick=function () {
			me._green_bar.style[domTransition]='none';
			me._green_bar.style.visibility='inherit';
			me._green_bar.ggVisible=true;
		}
		this._vol_5.onmouseover=function () {
			me.player.startAutorotate("0.1","1","0.1");
			me._green_bar.style[domTransition]='none';
			me._green_bar.ggParameter.rx=-24;me._green_bar.ggParameter.ry=0;
			me._green_bar.style[domTransform]=parameterToTransform(me._green_bar.ggParameter);
			me._txt_5.style[domTransition]='none';
			me._txt_5.style.visibility='inherit';
			me._txt_5.ggVisible=true;
			me._txt_0.style[domTransition]='none';
			me._txt_0.style.visibility='hidden';
			me._txt_0.ggVisible=false;
			me._txt_1.style[domTransition]='none';
			me._txt_1.style.visibility='hidden';
			me._txt_1.ggVisible=false;
			me._txt_2.style[domTransition]='none';
			me._txt_2.style.visibility='hidden';
			me._txt_2.ggVisible=false;
			me._txt_3.style[domTransition]='none';
			me._txt_3.style.visibility='hidden';
			me._txt_3.ggVisible=false;
			me._txt_4.style[domTransition]='none';
			me._txt_4.style.visibility='hidden';
			me._txt_4.ggVisible=false;
			me._txt_6.style[domTransition]='none';
			me._txt_6.style.visibility='hidden';
			me._txt_6.ggVisible=false;
			me._txt_7.style[domTransition]='none';
			me._txt_7.style.visibility='hidden';
			me._txt_7.ggVisible=false;
			me._txt_8.style[domTransition]='none';
			me._txt_8.style.visibility='hidden';
			me._txt_8.ggVisible=false;
			me._txt_9.style[domTransition]='none';
			me._txt_9.style.visibility='hidden';
			me._txt_9.ggVisible=false;
			me._txt_10.style[domTransition]='none';
			me._txt_10.style.visibility='hidden';
			me._txt_10.ggVisible=false;
		}
		this._rotation_controller.appendChild(this._vol_5);
		this._vol_6=document.createElement('div');
		this._vol_6.ggId='vol 6'
		this._vol_6.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._vol_6.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 35px;';
		hs+='top:  3px;';
		hs+='width: 5px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._vol_6.setAttribute('style',hs);
		this._vol_6__img=document.createElement('img');
		this._vol_6__img.setAttribute('src',basePath + 'images/vol_6.png');
		this._vol_6__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._vol_6__img);
		this._vol_6.appendChild(this._vol_6__img);
		this._vol_6.onclick=function () {
			me._green_bar.style[domTransition]='none';
			me._green_bar.style.visibility='inherit';
			me._green_bar.ggVisible=true;
		}
		this._vol_6.onmouseover=function () {
			me.player.startAutorotate("0.2","2","0.2");
			me._green_bar.style[domTransition]='none';
			me._green_bar.ggParameter.rx=-19;me._green_bar.ggParameter.ry=0;
			me._green_bar.style[domTransform]=parameterToTransform(me._green_bar.ggParameter);
			me._txt_6.style[domTransition]='none';
			me._txt_6.style.visibility='inherit';
			me._txt_6.ggVisible=true;
			me._txt_0.style[domTransition]='none';
			me._txt_0.style.visibility='hidden';
			me._txt_0.ggVisible=false;
			me._txt_1.style[domTransition]='none';
			me._txt_1.style.visibility='hidden';
			me._txt_1.ggVisible=false;
			me._txt_2.style[domTransition]='none';
			me._txt_2.style.visibility='hidden';
			me._txt_2.ggVisible=false;
			me._txt_3.style[domTransition]='none';
			me._txt_3.style.visibility='hidden';
			me._txt_3.ggVisible=false;
			me._txt_4.style[domTransition]='none';
			me._txt_4.style.visibility='hidden';
			me._txt_4.ggVisible=false;
			me._txt_5.style[domTransition]='none';
			me._txt_5.style.visibility='hidden';
			me._txt_5.ggVisible=false;
			me._txt_7.style[domTransition]='none';
			me._txt_7.style.visibility='hidden';
			me._txt_7.ggVisible=false;
			me._txt_8.style[domTransition]='none';
			me._txt_8.style.visibility='hidden';
			me._txt_8.ggVisible=false;
			me._txt_9.style[domTransition]='none';
			me._txt_9.style.visibility='hidden';
			me._txt_9.ggVisible=false;
			me._txt_10.style[domTransition]='none';
			me._txt_10.style.visibility='hidden';
			me._txt_10.ggVisible=false;
		}
		this._rotation_controller.appendChild(this._vol_6);
		this._vol_7=document.createElement('div');
		this._vol_7.ggId='vol 7'
		this._vol_7.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._vol_7.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 40px;';
		hs+='top:  3px;';
		hs+='width: 5px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._vol_7.setAttribute('style',hs);
		this._vol_7__img=document.createElement('img');
		this._vol_7__img.setAttribute('src',basePath + 'images/vol_7.png');
		this._vol_7__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._vol_7__img);
		this._vol_7.appendChild(this._vol_7__img);
		this._vol_7.onclick=function () {
			me._green_bar.style[domTransition]='none';
			me._green_bar.style.visibility='inherit';
			me._green_bar.ggVisible=true;
		}
		this._vol_7.onmouseover=function () {
			me.player.startAutorotate("0.3","3","0.3");
			me._green_bar.style[domTransition]='none';
			me._green_bar.ggParameter.rx=-14;me._green_bar.ggParameter.ry=0;
			me._green_bar.style[domTransform]=parameterToTransform(me._green_bar.ggParameter);
			me._txt_7.style[domTransition]='none';
			me._txt_7.style.visibility='inherit';
			me._txt_7.ggVisible=true;
			me._txt_0.style[domTransition]='none';
			me._txt_0.style.visibility='hidden';
			me._txt_0.ggVisible=false;
			me._txt_1.style[domTransition]='none';
			me._txt_1.style.visibility='hidden';
			me._txt_1.ggVisible=false;
			me._txt_2.style[domTransition]='none';
			me._txt_2.style.visibility='hidden';
			me._txt_2.ggVisible=false;
			me._txt_3.style[domTransition]='none';
			me._txt_3.style.visibility='hidden';
			me._txt_3.ggVisible=false;
			me._txt_4.style[domTransition]='none';
			me._txt_4.style.visibility='hidden';
			me._txt_4.ggVisible=false;
			me._txt_5.style[domTransition]='none';
			me._txt_5.style.visibility='hidden';
			me._txt_5.ggVisible=false;
			me._txt_6.style[domTransition]='none';
			me._txt_6.style.visibility='hidden';
			me._txt_6.ggVisible=false;
			me._txt_8.style[domTransition]='none';
			me._txt_8.style.visibility='hidden';
			me._txt_8.ggVisible=false;
			me._txt_9.style[domTransition]='none';
			me._txt_9.style.visibility='hidden';
			me._txt_9.ggVisible=false;
			me._txt_10.style[domTransition]='none';
			me._txt_10.style.visibility='hidden';
			me._txt_10.ggVisible=false;
		}
		this._rotation_controller.appendChild(this._vol_7);
		this._vol_8=document.createElement('div');
		this._vol_8.ggId='vol 8'
		this._vol_8.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._vol_8.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 45px;';
		hs+='top:  3px;';
		hs+='width: 5px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._vol_8.setAttribute('style',hs);
		this._vol_8__img=document.createElement('img');
		this._vol_8__img.setAttribute('src',basePath + 'images/vol_8.png');
		this._vol_8__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._vol_8__img);
		this._vol_8.appendChild(this._vol_8__img);
		this._vol_8.onclick=function () {
			me._green_bar.style[domTransition]='none';
			me._green_bar.style.visibility='inherit';
			me._green_bar.ggVisible=true;
		}
		this._vol_8.onmouseover=function () {
			me.player.startAutorotate("0.35","3","0.35");
			me._green_bar.style[domTransition]='none';
			me._green_bar.ggParameter.rx=-9;me._green_bar.ggParameter.ry=0;
			me._green_bar.style[domTransform]=parameterToTransform(me._green_bar.ggParameter);
			me._txt_8.style[domTransition]='none';
			me._txt_8.style.visibility='inherit';
			me._txt_8.ggVisible=true;
			me._txt_0.style[domTransition]='none';
			me._txt_0.style.visibility='hidden';
			me._txt_0.ggVisible=false;
			me._txt_1.style[domTransition]='none';
			me._txt_1.style.visibility='hidden';
			me._txt_1.ggVisible=false;
			me._txt_2.style[domTransition]='none';
			me._txt_2.style.visibility='hidden';
			me._txt_2.ggVisible=false;
			me._txt_3.style[domTransition]='none';
			me._txt_3.style.visibility='hidden';
			me._txt_3.ggVisible=false;
			me._txt_4.style[domTransition]='none';
			me._txt_4.style.visibility='hidden';
			me._txt_4.ggVisible=false;
			me._txt_5.style[domTransition]='none';
			me._txt_5.style.visibility='hidden';
			me._txt_5.ggVisible=false;
			me._txt_6.style[domTransition]='none';
			me._txt_6.style.visibility='hidden';
			me._txt_6.ggVisible=false;
			me._txt_7.style[domTransition]='none';
			me._txt_7.style.visibility='hidden';
			me._txt_7.ggVisible=false;
			me._txt_9.style[domTransition]='none';
			me._txt_9.style.visibility='hidden';
			me._txt_9.ggVisible=false;
			me._txt_10.style[domTransition]='none';
			me._txt_10.style.visibility='hidden';
			me._txt_10.ggVisible=false;
		}
		this._rotation_controller.appendChild(this._vol_8);
		this._vol_9=document.createElement('div');
		this._vol_9.ggId='vol 9'
		this._vol_9.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._vol_9.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 50px;';
		hs+='top:  3px;';
		hs+='width: 5px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._vol_9.setAttribute('style',hs);
		this._vol_9__img=document.createElement('img');
		this._vol_9__img.setAttribute('src',basePath + 'images/vol_9.png');
		this._vol_9__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._vol_9__img);
		this._vol_9.appendChild(this._vol_9__img);
		this._vol_9.onclick=function () {
			me._green_bar.style[domTransition]='none';
			me._green_bar.style.visibility='inherit';
			me._green_bar.ggVisible=true;
		}
		this._vol_9.onmouseover=function () {
			me.player.startAutorotate("0.4","4","0.4");
			me._green_bar.style[domTransition]='none';
			me._green_bar.ggParameter.rx=-4;me._green_bar.ggParameter.ry=0;
			me._green_bar.style[domTransform]=parameterToTransform(me._green_bar.ggParameter);
			me._txt_9.style[domTransition]='none';
			me._txt_9.style.visibility='inherit';
			me._txt_9.ggVisible=true;
			me._txt_0.style[domTransition]='none';
			me._txt_0.style.visibility='hidden';
			me._txt_0.ggVisible=false;
			me._txt_1.style[domTransition]='none';
			me._txt_1.style.visibility='hidden';
			me._txt_1.ggVisible=false;
			me._txt_2.style[domTransition]='none';
			me._txt_2.style.visibility='hidden';
			me._txt_2.ggVisible=false;
			me._txt_3.style[domTransition]='none';
			me._txt_3.style.visibility='hidden';
			me._txt_3.ggVisible=false;
			me._txt_4.style[domTransition]='none';
			me._txt_4.style.visibility='hidden';
			me._txt_4.ggVisible=false;
			me._txt_5.style[domTransition]='none';
			me._txt_5.style.visibility='hidden';
			me._txt_5.ggVisible=false;
			me._txt_6.style[domTransition]='none';
			me._txt_6.style.visibility='hidden';
			me._txt_6.ggVisible=false;
			me._txt_7.style[domTransition]='none';
			me._txt_7.style.visibility='hidden';
			me._txt_7.ggVisible=false;
			me._txt_8.style[domTransition]='none';
			me._txt_8.style.visibility='hidden';
			me._txt_8.ggVisible=false;
			me._txt_10.style[domTransition]='none';
			me._txt_10.style.visibility='hidden';
			me._txt_10.ggVisible=false;
		}
		this._rotation_controller.appendChild(this._vol_9);
		this._vol_10=document.createElement('div');
		this._vol_10.ggId='vol 10'
		this._vol_10.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._vol_10.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 55px;';
		hs+='top:  3px;';
		hs+='width: 5px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._vol_10.setAttribute('style',hs);
		this._vol_10__img=document.createElement('img');
		this._vol_10__img.setAttribute('src',basePath + 'images/vol_10.png');
		this._vol_10__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._vol_10__img);
		this._vol_10.appendChild(this._vol_10__img);
		this._vol_10.onclick=function () {
			me.player.startAutorotate("0.5","5","0.5");
		}
		this._vol_10.onmouseover=function () {
			me._green_bar.style[domTransition]='none';
			me._green_bar.style.visibility='inherit';
			me._green_bar.ggVisible=true;
			me._green_bar.style[domTransition]='none';
			me._green_bar.ggParameter.rx=1;me._green_bar.ggParameter.ry=0;
			me._green_bar.style[domTransform]=parameterToTransform(me._green_bar.ggParameter);
			me._txt_10.style[domTransition]='none';
			me._txt_10.style.visibility='inherit';
			me._txt_10.ggVisible=true;
			me._txt_0.style[domTransition]='none';
			me._txt_0.style.visibility='hidden';
			me._txt_0.ggVisible=false;
			me._txt_1.style[domTransition]='none';
			me._txt_1.style.visibility='hidden';
			me._txt_1.ggVisible=false;
			me._txt_2.style[domTransition]='none';
			me._txt_2.style.visibility='hidden';
			me._txt_2.ggVisible=false;
			me._txt_3.style[domTransition]='none';
			me._txt_3.style.visibility='hidden';
			me._txt_3.ggVisible=false;
			me._txt_4.style[domTransition]='none';
			me._txt_4.style.visibility='hidden';
			me._txt_4.ggVisible=false;
			me._txt_5.style[domTransition]='none';
			me._txt_5.style.visibility='hidden';
			me._txt_5.ggVisible=false;
			me._txt_6.style[domTransition]='none';
			me._txt_6.style.visibility='hidden';
			me._txt_6.ggVisible=false;
			me._txt_7.style[domTransition]='none';
			me._txt_7.style.visibility='hidden';
			me._txt_7.ggVisible=false;
			me._txt_8.style[domTransition]='none';
			me._txt_8.style.visibility='hidden';
			me._txt_8.ggVisible=false;
			me._txt_9.style[domTransition]='none';
			me._txt_9.style.visibility='hidden';
			me._txt_9.ggVisible=false;
		}
		this._rotation_controller.appendChild(this._vol_10);
		this._txt_0=document.createElement('div');
		this._txt_0.ggId='txt 0'
		this._txt_0.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_0.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 4px;';
		hs+='top:  3px;';
		hs+='width: 14px;';
		hs+='height: 9px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._txt_0.setAttribute('style',hs);
		this._txt_0__img=document.createElement('img');
		this._txt_0__img.setAttribute('src',basePath + 'images/txt_0.png');
		this._txt_0__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_0__img);
		this._txt_0.appendChild(this._txt_0__img);
		this._rotation_controller.appendChild(this._txt_0);
		this._txt_1=document.createElement('div');
		this._txt_1.ggId='txt 1'
		this._txt_1.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_1.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 4px;';
		hs+='top:  3px;';
		hs+='width: 14px;';
		hs+='height: 9px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._txt_1.setAttribute('style',hs);
		this._txt_1__img=document.createElement('img');
		this._txt_1__img.setAttribute('src',basePath + 'images/txt_1.png');
		this._txt_1__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_1__img);
		this._txt_1.appendChild(this._txt_1__img);
		this._rotation_controller.appendChild(this._txt_1);
		this._txt_2=document.createElement('div');
		this._txt_2.ggId='txt 2'
		this._txt_2.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_2.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 4px;';
		hs+='top:  3px;';
		hs+='width: 14px;';
		hs+='height: 9px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._txt_2.setAttribute('style',hs);
		this._txt_2__img=document.createElement('img');
		this._txt_2__img.setAttribute('src',basePath + 'images/txt_2.png');
		this._txt_2__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_2__img);
		this._txt_2.appendChild(this._txt_2__img);
		this._rotation_controller.appendChild(this._txt_2);
		this._txt_3=document.createElement('div');
		this._txt_3.ggId='txt 3'
		this._txt_3.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_3.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 4px;';
		hs+='top:  3px;';
		hs+='width: 14px;';
		hs+='height: 9px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._txt_3.setAttribute('style',hs);
		this._txt_3__img=document.createElement('img');
		this._txt_3__img.setAttribute('src',basePath + 'images/txt_3.png');
		this._txt_3__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_3__img);
		this._txt_3.appendChild(this._txt_3__img);
		this._rotation_controller.appendChild(this._txt_3);
		this._txt_4=document.createElement('div');
		this._txt_4.ggId='txt 4'
		this._txt_4.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_4.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 4px;';
		hs+='top:  3px;';
		hs+='width: 14px;';
		hs+='height: 9px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._txt_4.setAttribute('style',hs);
		this._txt_4__img=document.createElement('img');
		this._txt_4__img.setAttribute('src',basePath + 'images/txt_4.png');
		this._txt_4__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_4__img);
		this._txt_4.appendChild(this._txt_4__img);
		this._rotation_controller.appendChild(this._txt_4);
		this._txt_5=document.createElement('div');
		this._txt_5.ggId='txt 5'
		this._txt_5.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_5.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 4px;';
		hs+='top:  3px;';
		hs+='width: 14px;';
		hs+='height: 9px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._txt_5.setAttribute('style',hs);
		this._txt_5__img=document.createElement('img');
		this._txt_5__img.setAttribute('src',basePath + 'images/txt_5.png');
		this._txt_5__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_5__img);
		this._txt_5.appendChild(this._txt_5__img);
		this._rotation_controller.appendChild(this._txt_5);
		this._txt_6=document.createElement('div');
		this._txt_6.ggId='txt 6'
		this._txt_6.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_6.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 4px;';
		hs+='top:  3px;';
		hs+='width: 14px;';
		hs+='height: 9px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._txt_6.setAttribute('style',hs);
		this._txt_6__img=document.createElement('img');
		this._txt_6__img.setAttribute('src',basePath + 'images/txt_6.png');
		this._txt_6__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_6__img);
		this._txt_6.appendChild(this._txt_6__img);
		this._rotation_controller.appendChild(this._txt_6);
		this._txt_7=document.createElement('div');
		this._txt_7.ggId='txt 7'
		this._txt_7.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_7.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 4px;';
		hs+='top:  3px;';
		hs+='width: 14px;';
		hs+='height: 9px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._txt_7.setAttribute('style',hs);
		this._txt_7__img=document.createElement('img');
		this._txt_7__img.setAttribute('src',basePath + 'images/txt_7.png');
		this._txt_7__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_7__img);
		this._txt_7.appendChild(this._txt_7__img);
		this._rotation_controller.appendChild(this._txt_7);
		this._txt_8=document.createElement('div');
		this._txt_8.ggId='txt 8'
		this._txt_8.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_8.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 4px;';
		hs+='top:  3px;';
		hs+='width: 14px;';
		hs+='height: 9px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._txt_8.setAttribute('style',hs);
		this._txt_8__img=document.createElement('img');
		this._txt_8__img.setAttribute('src',basePath + 'images/txt_8.png');
		this._txt_8__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_8__img);
		this._txt_8.appendChild(this._txt_8__img);
		this._rotation_controller.appendChild(this._txt_8);
		this._txt_9=document.createElement('div');
		this._txt_9.ggId='txt 9'
		this._txt_9.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_9.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 4px;';
		hs+='top:  3px;';
		hs+='width: 14px;';
		hs+='height: 9px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._txt_9.setAttribute('style',hs);
		this._txt_9__img=document.createElement('img');
		this._txt_9__img.setAttribute('src',basePath + 'images/txt_9.png');
		this._txt_9__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_9__img);
		this._txt_9.appendChild(this._txt_9__img);
		this._rotation_controller.appendChild(this._txt_9);
		this._txt_10=document.createElement('div');
		this._txt_10.ggId='txt 10'
		this._txt_10.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._txt_10.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 4px;';
		hs+='top:  3px;';
		hs+='width: 14px;';
		hs+='height: 9px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._txt_10.setAttribute('style',hs);
		this._txt_10__img=document.createElement('img');
		this._txt_10__img.setAttribute('src',basePath + 'images/txt_10.png');
		this._txt_10__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._txt_10__img);
		this._txt_10.appendChild(this._txt_10__img);
		this._rotation_controller.appendChild(this._txt_10);
		this._container.appendChild(this._rotation_controller);
		this._controller_text=document.createElement('div');
		this._controller_text.ggId='Controller_Text'
		this._controller_text.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._controller_text.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 171px;';
		hs+='top:  51px;';
		hs+='width: 166px;';
		hs+='height: 18px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #ffffff;';
		hs+='text-align: center;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._controller_text.setAttribute('style',hs);
		this._controller_text.innerHTML="www.zeal360.com";
		this._controller_text.onclick=function () {
			me.player.openUrl("http:\/\/www.zeal360.com","_blank");
		}
		this._container.appendChild(this._controller_text);
		this.divSkin.appendChild(this._container);
		this._screen=document.createElement('div');
		this._screen.ggId='Screen'
		this._screen.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._screen.ggVisible=true;
		this._screen.ggUpdatePosition=function() {
			this.style[domTransition]='none';
			if (this.parentNode) {
				w=this.parentNode.offsetWidth;
				this.style.left=(-197 + w/2) + 'px';
				h=this.parentNode.offsetHeight;
				this.style.top=(-146 + h/2) + 'px';
			}
		}
		hs ='position:absolute;';
		hs+='left: -197px;';
		hs+='top:  -146px;';
		hs+='width: 403px;';
		hs+='height: 238px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='opacity: 0.8;';
		hs+='visibility: inherit;';
		this._screen.setAttribute('style',hs);
		this._screen__img=document.createElement('img');
		this._screen__img.setAttribute('src',basePath + 'images/screen.png');
		this._screen__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._screen__img);
		this._screen.appendChild(this._screen__img);
		this._screen.onmouseover=function () {
			if (me.player.transitionsDisabled) {
				me._screen.style[domTransition]='none';
			} else {
				me._screen.style[domTransition]='all 500ms ease-out 0ms';
			}
			me._screen.style.opacity='1';
			me._screen.style.visibility=me._screen.ggVisible?'inherit':'hidden';
		}
		this._screen.onmouseout=function () {
			if (me.player.transitionsDisabled) {
				me._screen.style[domTransition]='none';
			} else {
				me._screen.style[domTransition]='all 500ms ease-out 0ms';
			}
			me._screen.style.opacity='0.6';
			me._screen.style.visibility=me._screen.ggVisible?'inherit':'hidden';
		}
		this._close=document.createElement('div');
		this._close.ggId='close'
		this._close.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._close.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 191px;';
		hs+='top:  212px;';
		hs+='width: 26px;';
		hs+='height: 27px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._close.setAttribute('style',hs);
		this._close__img=document.createElement('img');
		this._close__img.setAttribute('src',basePath + 'images/close.png');
		this._close__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._close__img);
		this._close.appendChild(this._close__img);
		this._close.onclick=function () {
			if (me.player.transitionsDisabled) {
				me._screen.style[domTransition]='none';
			} else {
				me._screen.style[domTransition]='all 500ms ease-out 0ms';
			}
			me._screen.ggParameter.sx=0;me._screen.ggParameter.sy=0;
			me._screen.style[domTransform]=parameterToTransform(me._screen.ggParameter);
			if (me.player.transitionsDisabled) {
				me._screen.style[domTransition]='none';
			} else {
				me._screen.style[domTransition]='all 1000ms ease-out 0ms';
			}
			me._screen.ggParameter.a="360";
			me._screen.style[domTransform]=parameterToTransform(me._screen.ggParameter);
		}
		this._close.onmouseover=function () {
			me._close__img.src=basePath + 'images/close__o.png';
		}
		this._close.onmouseout=function () {
			me._close__img.src=basePath + 'images/close.png';
		}
		this._close.onmousedown=function () {
			me._close__img.src=basePath + 'images/close__a.png';
		}
		this._close.onmouseup=function () {
			me._close__img.src=basePath + 'images/close.png';
		}
		this._screen.appendChild(this._close);
		this._title8=document.createElement('div');
		this._title8.ggId='title'
		this._title8.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._title8.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 86px;';
		hs+='top:  102px;';
		hs+='width: 134px;';
		hs+='height: 20px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #ffffff;';
		hs+='text-align: left;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._title8.setAttribute('style',hs);
		this._title8.innerHTML="<b> Zoom IN <\/b>";
		this._screen.appendChild(this._title8);
		this._title7=document.createElement('div');
		this._title7.ggId='title'
		this._title7.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._title7.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 253px;';
		hs+='top:  135px;';
		hs+='width: 150px;';
		hs+='height: 20px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #ffffff;';
		hs+='text-align: left;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._title7.setAttribute('style',hs);
		this._title7.innerHTML="<b> Full Screen <\/b>";
		this._screen.appendChild(this._title7);
		this._title6=document.createElement('div');
		this._title6.ggId='title'
		this._title6.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._title6.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 84px;';
		hs+='top:  134px;';
		hs+='width: 150px;';
		hs+='height: 20px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #ffffff;';
		hs+='text-align: left;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._title6.setAttribute('style',hs);
		this._title6.innerHTML="<b> Default View <\/b>";
		this._screen.appendChild(this._title6);
		this._title5=document.createElement('div');
		this._title5.ggId='title'
		this._title5.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._title5.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 128px;';
		hs+='top:  169px;';
		hs+='width: 204px;';
		hs+='height: 20px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #ffffff;';
		hs+='text-align: left;';
		hs+='white-space: pre-wrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._title5.setAttribute('style',hs);
		this._title5.innerHTML="<b> Rotation Controller <\/b>";
		this._screen.appendChild(this._title5);
		this._title4=document.createElement('div');
		this._title4.ggId='title'
		this._title4.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._title4.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 84px;';
		hs+='top:  70px;';
		hs+='width: 137px;';
		hs+='height: 20px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #ffffff;';
		hs+='text-align: left;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._title4.setAttribute('style',hs);
		this._title4.innerHTML="<b> Turn Left <\/b>";
		this._screen.appendChild(this._title4);
		this._title3=document.createElement('div');
		this._title3.ggId='title'
		this._title3.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._title3.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 253px;';
		hs+='top:  103px;';
		hs+='width: 150px;';
		hs+='height: 20px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #ffffff;';
		hs+='text-align: left;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._title3.setAttribute('style',hs);
		this._title3.innerHTML="<b> Zoom OUT <\/b>";
		this._screen.appendChild(this._title3);
		this._title2=document.createElement('div');
		this._title2.ggId='title'
		this._title2.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._title2.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 250px;';
		hs+='top:  69px;';
		hs+='width: 147px;';
		hs+='height: 20px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #ffffff;';
		hs+='text-align: left;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._title2.setAttribute('style',hs);
		this._title2.innerHTML="<b> Turn Right <\/b>";
		this._screen.appendChild(this._title2);
		this._title1=document.createElement('div');
		this._title1.ggId='title'
		this._title1.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._title1.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 251px;';
		hs+='top:  38px;';
		hs+='width: 155px;';
		hs+='height: 20px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #ffffff;';
		hs+='text-align: left;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._title1.setAttribute('style',hs);
		this._title1.innerHTML="<b> Move Down <\/b>";
		this._screen.appendChild(this._title1);
		this._title0=document.createElement('div');
		this._title0.ggId='title'
		this._title0.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._title0.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 84px;';
		hs+='top:  40px;';
		hs+='width: 135px;';
		hs+='height: 19px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #ffffff;';
		hs+='text-align: left;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._title0.setAttribute('style',hs);
		this._title0.innerHTML="<b> Move Up <\/b>";
		this._screen.appendChild(this._title0);
		this._up=document.createElement('div');
		this._up.ggId='Up'
		this._up.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._up.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 49px;';
		hs+='top:  33px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._up.setAttribute('style',hs);
		this._up__img=document.createElement('img');
		this._up__img.setAttribute('src',basePath + 'images/up.png');
		this._up__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._up__img);
		this._up.appendChild(this._up__img);
		this._screen.appendChild(this._up);
		this._down=document.createElement('div');
		this._down.ggId='Down'
		this._down.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._down.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 223px;';
		hs+='top:  34px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._down.setAttribute('style',hs);
		this._down__img=document.createElement('img');
		this._down__img.setAttribute('src',basePath + 'images/down.png');
		this._down__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._down__img);
		this._down.appendChild(this._down__img);
		this._screen.appendChild(this._down);
		this._left=document.createElement('div');
		this._left.ggId='Left'
		this._left.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._left.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 49px;';
		hs+='top:  64px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._left.setAttribute('style',hs);
		this._left__img=document.createElement('img');
		this._left__img.setAttribute('src',basePath + 'images/left.png');
		this._left__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._left__img);
		this._left.appendChild(this._left__img);
		this._screen.appendChild(this._left);
		this._right=document.createElement('div');
		this._right.ggId='Right'
		this._right.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._right.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 223px;';
		hs+='top:  66px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._right.setAttribute('style',hs);
		this._right__img=document.createElement('img');
		this._right__img.setAttribute('src',basePath + 'images/right.png');
		this._right__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._right__img);
		this._right.appendChild(this._right__img);
		this._screen.appendChild(this._right);
		this._zoom_in=document.createElement('div');
		this._zoom_in.ggId='Zoom in'
		this._zoom_in.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._zoom_in.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 48px;';
		hs+='top:  97px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._zoom_in.setAttribute('style',hs);
		this._zoom_in__img=document.createElement('img');
		this._zoom_in__img.setAttribute('src',basePath + 'images/zoom_in.png');
		this._zoom_in__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._zoom_in__img);
		this._zoom_in.appendChild(this._zoom_in__img);
		this._screen.appendChild(this._zoom_in);
		this._zoom_out=document.createElement('div');
		this._zoom_out.ggId='Zoom out'
		this._zoom_out.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._zoom_out.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 222px;';
		hs+='top:  98px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._zoom_out.setAttribute('style',hs);
		this._zoom_out__img=document.createElement('img');
		this._zoom_out__img.setAttribute('src',basePath + 'images/zoom_out.png');
		this._zoom_out__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._zoom_out__img);
		this._zoom_out.appendChild(this._zoom_out__img);
		this._screen.appendChild(this._zoom_out);
		this._auto_rotate=document.createElement('div');
		this._auto_rotate.ggId='Auto Rotate'
		this._auto_rotate.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._auto_rotate.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 96px;';
		hs+='top:  164px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._auto_rotate.setAttribute('style',hs);
		this._auto_rotate__img=document.createElement('img');
		this._auto_rotate__img.setAttribute('src',basePath + 'images/auto_rotate.png');
		this._auto_rotate__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._auto_rotate__img);
		this._auto_rotate.appendChild(this._auto_rotate__img);
		this._screen.appendChild(this._auto_rotate);
		this._default_view=document.createElement('div');
		this._default_view.ggId='Default View'
		this._default_view.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._default_view.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 47px;';
		hs+='top:  129px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._default_view.setAttribute('style',hs);
		this._default_view__img=document.createElement('img');
		this._default_view__img.setAttribute('src',basePath + 'images/default_view.png');
		this._default_view__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._default_view__img);
		this._default_view.appendChild(this._default_view__img);
		this._screen.appendChild(this._default_view);
		this._full_screen=document.createElement('div');
		this._full_screen.ggId='Full Screen'
		this._full_screen.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._full_screen.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 223px;';
		hs+='top:  131px;';
		hs+='width: 36px;';
		hs+='height: 24px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._full_screen.setAttribute('style',hs);
		this._full_screen__img=document.createElement('img');
		this._full_screen__img.setAttribute('src',basePath + 'images/full_screen.png');
		this._full_screen__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._full_screen__img);
		this._full_screen.appendChild(this._full_screen__img);
		this._screen.appendChild(this._full_screen);
		this.divSkin.appendChild(this._screen);
		this._zeallogo1=document.createElement('div');
		this._zeallogo1.ggId='ZealLogo1'
		this._zeallogo1.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._zeallogo1.ggVisible=true;
		this._zeallogo1.ggUpdatePosition=function() {
			this.style[domTransition]='none';
			if (this.parentNode) {
				w=this.parentNode.offsetWidth;
				this.style.left=(-20 + w/2) + 'px';
				h=this.parentNode.offsetHeight;
				this.style.top=(-118 + h/2) + 'px';
			}
		}
		hs ='position:absolute;';
		hs+='left: -20px;';
		hs+='top:  -118px;';
		hs+='width: 59px;';
		hs+='height: 61px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._zeallogo1.setAttribute('style',hs);
		this._zeallogo1__img=document.createElement('img');
		this._zeallogo1__img.setAttribute('src',basePath + 'images/zeallogo1.png');
		this._zeallogo1__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._zeallogo1__img);
		this._zeallogo1.appendChild(this._zeallogo1__img);
		this._text1=document.createElement('div');
		this._text1.ggId='Text1'
		this._text1.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._text1.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: -138px;';
		hs+='top:  82px;';
		hs+='width: 338px;';
		hs+='height: 19px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #000000;';
		hs+='text-align: center;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._text1.setAttribute('style',hs);
		this._text1.innerHTML="<b> World Class 360 Degree Virtual Reality Tours <b>";
		this._zeallogo1.appendChild(this._text1);
		this._text2=document.createElement('div');
		this._text2.ggId='Text2'
		this._text2.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._text2.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: -70px;';
		hs+='top:  175px;';
		hs+='width: 187px;';
		hs+='height: 17px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #000000;';
		hs+='text-align: center;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._text2.setAttribute('style',hs);
		this._text2.innerHTML="www.zeal360.com";
		this._zeallogo1.appendChild(this._text2);
		this._loading=document.createElement('div');
		this._loading.ggId='loading'
		this._loading.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._loading.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: -91px;';
		hs+='top:  106px;';
		hs+='width: 224px;';
		hs+='height: 74px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._loading.setAttribute('style',hs);
		this._loader_image=document.createElement('div');
		this._loader_image.ggId='loader_image'
		this._loader_image.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._loader_image.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 7px;';
		hs+='top:  1px;';
		hs+='width: 217px;';
		hs+='height: 62px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._loader_image.setAttribute('style',hs);
		this._loader_image__img=document.createElement('img');
		this._loader_image__img.setAttribute('src',basePath + 'images/loader_image.png');
		this._loader_image__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._loader_image__img);
		this._loader_image.appendChild(this._loader_image__img);
		this._loading.appendChild(this._loader_image);
		this._bar=document.createElement('div');
		this._bar.ggId='bar'
		this._bar.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._bar.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 20px;';
		hs+='top:  22px;';
		hs+='width: 183px;';
		hs+='height: 12px;';
		hs+=cssPrefix + 'transform-origin: 0% 50%;';
		hs+='visibility: inherit;';
		this._bar.setAttribute('style',hs);
		this._bar__img=document.createElement('img');
		this._bar__img.setAttribute('src',basePath + 'images/bar.png');
		this._bar__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._bar__img);
		this._bar.appendChild(this._bar__img);
		this._loading.appendChild(this._bar);
		this._tip=document.createElement('div');
		this._tip.ggId='tip'
		this._tip.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._tip.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 6px;';
		hs+='top:  14px;';
		hs+='width: 43px;';
		hs+='height: 27px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		this._tip.setAttribute('style',hs);
		this._tip__img=document.createElement('img');
		this._tip__img.setAttribute('src',basePath + 'images/tip.png');
		this._tip__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._tip__img);
		this._tip.appendChild(this._tip__img);
		this._loading.appendChild(this._tip);
		this._text_3=document.createElement('div');
		this._text_3.ggId='Text 3'
		this._text_3.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._text_3.ggVisible=true;
		hs ='position:absolute;';
		hs+='left: 17px;';
		hs+='top:  36px;';
		hs+='width: 182px;';
		hs+='height: 22px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 0px solid #000000;';
		hs+='color: #0f0f0f;';
		hs+='text-align: center;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._text_3.setAttribute('style',hs);
		this._text_3.ggUpdateText=function() {
			this.innerHTML="<font face=\"Tahoma\"><b>Loading  "+(me.player.getPercentLoaded()*100.0).toFixed(0)+" % <\/b><\/font>";
		}
		this._text_3.ggUpdateText();
		this._loading.appendChild(this._text_3);
		this._zeallogo1.appendChild(this._loading);
		this.divSkin.appendChild(this._zeallogo1);
		this._zeallogo2=document.createElement('div');
		this._zeallogo2.ggId='ZealLogo2'
		this._zeallogo2.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._zeallogo2.ggVisible=true;
		this._zeallogo2.ggUpdatePosition=function() {
			this.style[domTransition]='none';
			if (this.parentNode) {
				h=this.parentNode.offsetHeight;
				this.style.top=(-74 + h) + 'px';
			}
		}
		hs ='position:absolute;';
		hs+='left: 22px;';
		hs+='top:  -74px;';
		hs+='width: 59px;';
		hs+='height: 61px;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='cursor: pointer;';
		this._zeallogo2.setAttribute('style',hs);
		this._zeallogo2__img=document.createElement('img');
		this._zeallogo2__img.setAttribute('src',basePath + 'images/zeallogo2.png');
		this._zeallogo2__img.setAttribute('style','position: absolute;top: 0px;left: 0px;');
		me.player.checkLoaded.push(this._zeallogo2__img);
		this._zeallogo2.appendChild(this._zeallogo2__img);
		this._zeallogo2.onclick=function () {
			me.player.openUrl("http:\/\/www.zeal360.com","_blank");
		}
		this.divSkin.appendChild(this._zeallogo2);
		this._title=document.createElement('div');
		this._title.ggId='TITLE'
		this._title.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
		this._title.ggVisible=true;
		this._title.ggUpdatePosition=function() {
			this.style[domTransition]='none';
			if (this.parentNode) {
				w=this.parentNode.offsetWidth;
				this.style.left=(-205 + w) + 'px';
			}
			this.style.left=(-205 + (116-this.offsetWidth)) + 'px';
		}
		hs ='position:absolute;';
		hs+='left: -205px;';
		hs+='top:  25px;';
		hs+='width: auto;';
		hs+='height: auto;';
		hs+=cssPrefix + 'transform-origin: 50% 50%;';
		hs+='visibility: inherit;';
		hs+='border: 1px solid #ffffff;';
		hs+='color: #ffffff;';
		hs+='background-color: #3d6373;';
		hs+='text-align: right;';
		hs+='white-space: nowrap;';
		hs+='padding: 0px 1px 0px 1px;'
		hs+='overflow: hidden;';
		this._title.setAttribute('style',hs);
		this._title.ggUpdateText=function() {
			this.innerHTML="<b><span style=\"font-family: Arial;\"><font size=\"2\">"+me.player.userdata.title+"<\/font><\/span><\/b>";
		this.ggUpdatePosition();
		}
		this._title.ggUpdateText();
		this.divSkin.appendChild(this._title);
		me._container.style[domTransition]='none';
		me._container.style.visibility='hidden';
		me._container.ggVisible=false;
		me._green_bar.style[domTransition]='none';
		me._green_bar.ggParameter.rx=1;me._green_bar.ggParameter.ry=0;
		me._green_bar.style[domTransform]=parameterToTransform(me._green_bar.ggParameter);
		me._txt_0.style[domTransition]='none';
		me._txt_0.style.visibility='hidden';
		me._txt_0.ggVisible=false;
		me._txt_1.style[domTransition]='none';
		me._txt_1.style.visibility='hidden';
		me._txt_1.ggVisible=false;
		me._txt_2.style[domTransition]='none';
		me._txt_2.style.visibility='hidden';
		me._txt_2.ggVisible=false;
		me._txt_3.style[domTransition]='none';
		me._txt_3.style.visibility='hidden';
		me._txt_3.ggVisible=false;
		me._txt_4.style[domTransition]='none';
		me._txt_4.style.visibility='hidden';
		me._txt_4.ggVisible=false;
		me._txt_5.style[domTransition]='none';
		me._txt_5.style.visibility='hidden';
		me._txt_5.ggVisible=false;
		me._txt_6.style[domTransition]='none';
		me._txt_6.style.visibility='hidden';
		me._txt_6.ggVisible=false;
		me._txt_7.style[domTransition]='none';
		me._txt_7.style.visibility='hidden';
		me._txt_7.ggVisible=false;
		me._txt_8.style[domTransition]='none';
		me._txt_8.style.visibility='hidden';
		me._txt_8.ggVisible=false;
		me._txt_9.style[domTransition]='none';
		me._txt_9.style.visibility='hidden';
		me._txt_9.ggVisible=false;
		me._screen.style[domTransition]='none';
		me._screen.style.visibility='hidden';
		me._screen.ggVisible=false;
		me._zeallogo1.style[domTransition]='none';
		me._zeallogo1.style.visibility='inherit';
		me._zeallogo1.ggVisible=true;
		me._zeallogo2.style[domTransition]='none';
		me._zeallogo2.style.visibility='hidden';
		me._zeallogo2.ggVisible=false;
		this.preloadImages();
		this.divSkin.ggUpdateSize=function(w,h) {
			me.updateSize(me.divSkin);
		}
		this.divSkin.ggViewerInit=function() {
		}
		this.divSkin.ggLoaded=function() {
			me._container.style[domTransition]='none';
			me._container.style.visibility='inherit';
			me._container.ggVisible=true;
			me._zeallogo1.style[domTransition]='none';
			me._zeallogo1.style.visibility='hidden';
			me._zeallogo1.ggVisible=false;
			if (me.player.transitionsDisabled) {
				me._loading.style[domTransition]='none';
			} else {
				me._loading.style[domTransition]='all 500ms ease-out 0ms';
			}
			me._loading.style.opacity='0';
			me._loading.style.visibility='hidden';
			me._zeallogo2.style[domTransition]='none';
			me._zeallogo2.style.visibility='inherit';
			me._zeallogo2.ggVisible=true;
		}
		this.divSkin.ggReLoaded=function() {
		}
		this.divSkin.ggEnterFullscreen=function() {
		}
		this.divSkin.ggExitFullscreen=function() {
		}
		this.skinTimerEvent();
	};
	this.hotspotProxyClick=function(id) {
	}
	this.hotspotProxyOver=function(id) {
	}
	this.hotspotProxyOut=function(id) {
	}
	this.skinTimerEvent=function() {
		setTimeout(function() { me.skinTimerEvent(); }, 10);
		if (me.elementMouseDown['zoom_in0']) {
			me.player.changeFovLog(-1,true);
		}
		if (me.elementMouseDown['zoom_out0']) {
			me.player.changeFovLog(1,true);
		}
		if (me.elementMouseDown['left0']) {
			me.player.changePan(1,true);
		}
		if (me.elementMouseDown['right0']) {
			me.player.changePan(-1,true);
		}
		if (me.elementMouseDown['up0']) {
			me.player.changeTilt(1,true);
		}
		if (me.elementMouseDown['down0']) {
			me.player.changeTilt(-1,true);
		}
		this._zooming_value.ggUpdateText();
		var hs='';
		if (me._bar.ggParameter) {
			hs+=parameterToTransform(me._bar.ggParameter) + ' ';
		}
		hs+='scale(' + (1 * me.player.getPercentLoaded() + 0) + ',1.0) ';
		me._bar.style[domTransform]=hs;
		var hs='';
		if (me._tip.ggParameter) {
			hs+=parameterToTransform(me._tip.ggParameter) + ' ';
		}
		hs+='translate(' + (168 * me.player.getPercentLoaded() + 0) + 'px,0px) ';
		me._tip.style[domTransform]=hs;
		this._text_3.ggUpdateText();
		this._title.ggUpdateText();
	};
	function SkinHotspotClass(skinObj,hotspot) {
		var me=this;
		var flag=false;
		this.player=skinObj.player;
		this.skin=skinObj;
		this.hotspot=hotspot;
		this.elementMouseDown=new Array();
		this.elementMouseOver=new Array();
		this.__div=document.createElement('div');
		this.__div.setAttribute('style','position:absolute; left:0px;top:0px;visibility: inherit;');
		
		this.findElements=function(id,regex) {
			var r=new Array();
			var stack=new Array();
			var pat=new RegExp(id,'');
			stack.push(me.__div);
			while(stack.length>0) {
				e=stack.pop();
				if (regex) {
					if (pat.test(e.ggId)) r.push(e);
				} else {
					if (e.ggId==id) r.push(e);
				}
				if (e.hasChildNodes()) {
					for(i=0;i<e.childNodes.length;i++) {
						stack.push(e.childNodes[i]);
					}
				}
			}
			return r;
		}
		
		if (hotspot.skinid=='HLeft1') {
			this.__div=document.createElement('div');
			this.__div.ggId='HLeft1'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 42px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext14.style[domTransition]='none';
				me._hstext14.style.visibility='hidden';
				me._hstext14.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext14=document.createElement('div');
			this._hstext14.ggId='hstext'
			this._hstext14.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext14.ggVisible=false;
			this._hstext14.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext14.setAttribute('style',hs);
			this._hstext14.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext14);
			this._svg_952=document.createElement('div');
			this._svg_952.ggId='Svg 95'
			this._svg_952.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_952.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -19px;';
			hs+='top:  -3px;';
			hs+='width: 44px;';
			hs+='height: 30px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_952.setAttribute('style',hs);
			this._svg_952__img=document.createElement('img');
			this._svg_952__img.setAttribute('src',basePath + 'images/svg_952.png');
			this._svg_952__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 44px;height: 30px;');
			this._svg_952.appendChild(this._svg_952__img);
			this._svg_952.onmouseover=function () {
				me._svg_952__img.src=basePath + 'images/svg_952__o.png';
			}
			this._svg_952.onmouseout=function () {
				me._svg_952__img.src=basePath + 'images/svg_952.png';
			}
			this.__div.appendChild(this._svg_952);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext14.style[domTransition]='none';
					me._hstext14.style.visibility='inherit';
					me._hstext14.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HLeft3') {
			this.__div=document.createElement('div');
			this.__div.ggId='HLeft3'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 42px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext13.style[domTransition]='none';
				me._hstext13.style.visibility='hidden';
				me._hstext13.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext13=document.createElement('div');
			this._hstext13.ggId='hstext'
			this._hstext13.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext13.ggVisible=false;
			this._hstext13.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext13.setAttribute('style',hs);
			this._hstext13.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext13);
			this._svg_951=document.createElement('div');
			this._svg_951.ggId='Svg 95'
			this._svg_951.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_951.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -19px;';
			hs+='top:  -3px;';
			hs+='width: 44px;';
			hs+='height: 30px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_951.setAttribute('style',hs);
			this._svg_951__img=document.createElement('img');
			this._svg_951__img.setAttribute('src',basePath + 'images/svg_951.png');
			this._svg_951__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 44px;height: 30px;');
			this._svg_951.appendChild(this._svg_951__img);
			this._svg_951.onmouseover=function () {
				me._svg_951__img.src=basePath + 'images/svg_951__o.png';
			}
			this._svg_951.onmouseout=function () {
				me._svg_951__img.src=basePath + 'images/svg_951.png';
			}
			this.__div.appendChild(this._svg_951);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext13.style[domTransition]='none';
					me._hstext13.style.visibility='inherit';
					me._hstext13.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HLeft2') {
			this.__div=document.createElement('div');
			this.__div.ggId='HLeft2'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 42px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext12.style[domTransition]='none';
				me._hstext12.style.visibility='hidden';
				me._hstext12.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext12=document.createElement('div');
			this._hstext12.ggId='hstext'
			this._hstext12.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext12.ggVisible=false;
			this._hstext12.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext12.setAttribute('style',hs);
			this._hstext12.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext12);
			this._svg_950=document.createElement('div');
			this._svg_950.ggId='Svg 95'
			this._svg_950.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_950.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -19px;';
			hs+='top:  -3px;';
			hs+='width: 44px;';
			hs+='height: 30px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_950.setAttribute('style',hs);
			this._svg_950__img=document.createElement('img');
			this._svg_950__img.setAttribute('src',basePath + 'images/svg_950.png');
			this._svg_950__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 44px;height: 30px;');
			this._svg_950.appendChild(this._svg_950__img);
			this._svg_950.onmouseover=function () {
				me._svg_950__img.src=basePath + 'images/svg_950__o.png';
			}
			this._svg_950.onmouseout=function () {
				me._svg_950__img.src=basePath + 'images/svg_950.png';
			}
			this.__div.appendChild(this._svg_950);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext12.style[domTransition]='none';
					me._hstext12.style.visibility='inherit';
					me._hstext12.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HLeft4') {
			this.__div=document.createElement('div');
			this.__div.ggId='HLeft4'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 42px;';
			hs+='top:  48px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext11.style[domTransition]='none';
				me._hstext11.style.visibility='hidden';
				me._hstext11.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext11=document.createElement('div');
			this._hstext11.ggId='hstext'
			this._hstext11.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext11.ggVisible=false;
			this._hstext11.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext11.setAttribute('style',hs);
			this._hstext11.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext11);
			this._svg_95=document.createElement('div');
			this._svg_95.ggId='Svg 95'
			this._svg_95.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_95.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -19px;';
			hs+='top:  -4px;';
			hs+='width: 44px;';
			hs+='height: 30px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_95.setAttribute('style',hs);
			this._svg_95__img=document.createElement('img');
			this._svg_95__img.setAttribute('src',basePath + 'images/svg_95.png');
			this._svg_95__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 44px;height: 30px;');
			this._svg_95.appendChild(this._svg_95__img);
			this._svg_95.onmouseover=function () {
				me._svg_95__img.src=basePath + 'images/svg_95__o.png';
			}
			this._svg_95.onmouseout=function () {
				me._svg_95__img.src=basePath + 'images/svg_95.png';
			}
			this.__div.appendChild(this._svg_95);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext11.style[domTransition]='none';
					me._hstext11.style.visibility='inherit';
					me._hstext11.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HRight1') {
			this.__div=document.createElement('div');
			this.__div.ggId='HRight1'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 81px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext10.style[domTransition]='none';
				me._hstext10.style.visibility='hidden';
				me._hstext10.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext10=document.createElement('div');
			this._hstext10.ggId='hstext'
			this._hstext10.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext10.ggVisible=false;
			this._hstext10.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext10.setAttribute('style',hs);
			this._hstext10.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext10);
			this._svg_966=document.createElement('div');
			this._svg_966.ggId='Svg 96'
			this._svg_966.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_966.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -16px;';
			hs+='top:  -5px;';
			hs+='width: 44px;';
			hs+='height: 30px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_966.setAttribute('style',hs);
			this._svg_966__img=document.createElement('img');
			this._svg_966__img.setAttribute('src',basePath + 'images/svg_966.png');
			this._svg_966__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 44px;height: 30px;');
			this._svg_966.appendChild(this._svg_966__img);
			this._svg_966.onmouseover=function () {
				me._svg_966__img.src=basePath + 'images/svg_966__o.png';
			}
			this._svg_966.onmouseout=function () {
				me._svg_966__img.src=basePath + 'images/svg_966.png';
			}
			this.__div.appendChild(this._svg_966);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext10.style[domTransition]='none';
					me._hstext10.style.visibility='inherit';
					me._hstext10.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HRight2') {
			this.__div=document.createElement('div');
			this.__div.ggId='HRight2'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 81px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext9.style[domTransition]='none';
				me._hstext9.style.visibility='hidden';
				me._hstext9.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext9=document.createElement('div');
			this._hstext9.ggId='hstext'
			this._hstext9.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext9.ggVisible=false;
			this._hstext9.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext9.setAttribute('style',hs);
			this._hstext9.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext9);
			this._svg_965=document.createElement('div');
			this._svg_965.ggId='Svg 96'
			this._svg_965.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_965.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -16px;';
			hs+='top:  -5px;';
			hs+='width: 44px;';
			hs+='height: 30px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_965.setAttribute('style',hs);
			this._svg_965__img=document.createElement('img');
			this._svg_965__img.setAttribute('src',basePath + 'images/svg_965.png');
			this._svg_965__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 44px;height: 30px;');
			this._svg_965.appendChild(this._svg_965__img);
			this._svg_965.onmouseover=function () {
				me._svg_965__img.src=basePath + 'images/svg_965__o.png';
			}
			this._svg_965.onmouseout=function () {
				me._svg_965__img.src=basePath + 'images/svg_965.png';
			}
			this.__div.appendChild(this._svg_965);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext9.style[domTransition]='none';
					me._hstext9.style.visibility='inherit';
					me._hstext9.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HRight3') {
			this.__div=document.createElement('div');
			this.__div.ggId='HRight3'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 81px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext8.style[domTransition]='none';
				me._hstext8.style.visibility='hidden';
				me._hstext8.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext8=document.createElement('div');
			this._hstext8.ggId='hstext'
			this._hstext8.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext8.ggVisible=false;
			this._hstext8.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext8.setAttribute('style',hs);
			this._hstext8.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext8);
			this._svg_964=document.createElement('div');
			this._svg_964.ggId='Svg 96'
			this._svg_964.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_964.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -16px;';
			hs+='top:  -5px;';
			hs+='width: 44px;';
			hs+='height: 30px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_964.setAttribute('style',hs);
			this._svg_964__img=document.createElement('img');
			this._svg_964__img.setAttribute('src',basePath + 'images/svg_964.png');
			this._svg_964__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 44px;height: 30px;');
			this._svg_964.appendChild(this._svg_964__img);
			this._svg_964.onmouseover=function () {
				me._svg_964__img.src=basePath + 'images/svg_964__o.png';
			}
			this._svg_964.onmouseout=function () {
				me._svg_964__img.src=basePath + 'images/svg_964.png';
			}
			this.__div.appendChild(this._svg_964);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext8.style[domTransition]='none';
					me._hstext8.style.visibility='inherit';
					me._hstext8.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HRight4') {
			this.__div=document.createElement('div');
			this.__div.ggId='HRight4'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 81px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext7.style[domTransition]='none';
				me._hstext7.style.visibility='hidden';
				me._hstext7.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext7=document.createElement('div');
			this._hstext7.ggId='hstext'
			this._hstext7.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext7.ggVisible=false;
			this._hstext7.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #00557f;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext7.setAttribute('style',hs);
			this._hstext7.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext7);
			this._svg_963=document.createElement('div');
			this._svg_963.ggId='Svg 96'
			this._svg_963.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_963.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -16px;';
			hs+='top:  -5px;';
			hs+='width: 44px;';
			hs+='height: 30px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_963.setAttribute('style',hs);
			this._svg_963__img=document.createElement('img');
			this._svg_963__img.setAttribute('src',basePath + 'images/svg_963.png');
			this._svg_963__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 44px;height: 30px;');
			this._svg_963.appendChild(this._svg_963__img);
			this._svg_963.onmouseover=function () {
				me._svg_963__img.src=basePath + 'images/svg_963__o.png';
			}
			this._svg_963.onmouseout=function () {
				me._svg_963__img.src=basePath + 'images/svg_963.png';
			}
			this.__div.appendChild(this._svg_963);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext7.style[domTransition]='none';
					me._hstext7.style.visibility='inherit';
					me._hstext7.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HUp1') {
			this.__div=document.createElement('div');
			this.__div.ggId='HUp1'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 121px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext6.style[domTransition]='none';
				me._hstext6.style.visibility='hidden';
				me._hstext6.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext6=document.createElement('div');
			this._hstext6.ggId='hstext'
			this._hstext6.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext6.ggVisible=false;
			this._hstext6.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext6.setAttribute('style',hs);
			this._hstext6.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext6);
			this._svg_962=document.createElement('div');
			this._svg_962.ggId='Svg 96'
			this._svg_962.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_962.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -12px;';
			hs+='top:  -17px;';
			hs+='width: 30px;';
			hs+='height: 44px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_962.setAttribute('style',hs);
			this._svg_962__img=document.createElement('img');
			this._svg_962__img.setAttribute('src',basePath + 'images/svg_962.png');
			this._svg_962__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 30px;height: 44px;');
			this._svg_962.appendChild(this._svg_962__img);
			this._svg_962.onmouseover=function () {
				me._svg_962__img.src=basePath + 'images/svg_962__o.png';
			}
			this._svg_962.onmouseout=function () {
				me._svg_962__img.src=basePath + 'images/svg_962.png';
			}
			this.__div.appendChild(this._svg_962);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext6.style[domTransition]='none';
					me._hstext6.style.visibility='inherit';
					me._hstext6.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HUp2') {
			this.__div=document.createElement('div');
			this.__div.ggId='HUp2'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 121px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext5.style[domTransition]='none';
				me._hstext5.style.visibility='hidden';
				me._hstext5.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext5=document.createElement('div');
			this._hstext5.ggId='hstext'
			this._hstext5.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext5.ggVisible=false;
			this._hstext5.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext5.setAttribute('style',hs);
			this._hstext5.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext5);
			this._svg_961=document.createElement('div');
			this._svg_961.ggId='Svg 96'
			this._svg_961.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_961.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -12px;';
			hs+='top:  -17px;';
			hs+='width: 30px;';
			hs+='height: 44px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_961.setAttribute('style',hs);
			this._svg_961__img=document.createElement('img');
			this._svg_961__img.setAttribute('src',basePath + 'images/svg_961.png');
			this._svg_961__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 30px;height: 44px;');
			this._svg_961.appendChild(this._svg_961__img);
			this._svg_961.onmouseover=function () {
				me._svg_961__img.src=basePath + 'images/svg_961__o.png';
			}
			this._svg_961.onmouseout=function () {
				me._svg_961__img.src=basePath + 'images/svg_961.png';
			}
			this.__div.appendChild(this._svg_961);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext5.style[domTransition]='none';
					me._hstext5.style.visibility='inherit';
					me._hstext5.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HUp3') {
			this.__div=document.createElement('div');
			this.__div.ggId='HUp3'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 121px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext4.style[domTransition]='none';
				me._hstext4.style.visibility='hidden';
				me._hstext4.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext4=document.createElement('div');
			this._hstext4.ggId='hstext'
			this._hstext4.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext4.ggVisible=false;
			this._hstext4.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext4.setAttribute('style',hs);
			this._hstext4.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext4);
			this._svg_960=document.createElement('div');
			this._svg_960.ggId='Svg 96'
			this._svg_960.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_960.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -12px;';
			hs+='top:  -17px;';
			hs+='width: 30px;';
			hs+='height: 44px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_960.setAttribute('style',hs);
			this._svg_960__img=document.createElement('img');
			this._svg_960__img.setAttribute('src',basePath + 'images/svg_960.png');
			this._svg_960__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 30px;height: 44px;');
			this._svg_960.appendChild(this._svg_960__img);
			this._svg_960.onmouseover=function () {
				me._svg_960__img.src=basePath + 'images/svg_960__o.png';
			}
			this._svg_960.onmouseout=function () {
				me._svg_960__img.src=basePath + 'images/svg_960.png';
			}
			this.__div.appendChild(this._svg_960);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext4.style[domTransition]='none';
					me._hstext4.style.visibility='inherit';
					me._hstext4.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HUp4') {
			this.__div=document.createElement('div');
			this.__div.ggId='HUp4'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 121px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext3.style[domTransition]='none';
				me._hstext3.style.visibility='hidden';
				me._hstext3.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext3=document.createElement('div');
			this._hstext3.ggId='hstext'
			this._hstext3.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext3.ggVisible=false;
			this._hstext3.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext3.setAttribute('style',hs);
			this._hstext3.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext3);
			this._svg_96=document.createElement('div');
			this._svg_96.ggId='Svg 96'
			this._svg_96.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_96.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -12px;';
			hs+='top:  -17px;';
			hs+='width: 30px;';
			hs+='height: 44px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_96.setAttribute('style',hs);
			this._svg_96__img=document.createElement('img');
			this._svg_96__img.setAttribute('src',basePath + 'images/svg_96.png');
			this._svg_96__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 30px;height: 44px;');
			this._svg_96.appendChild(this._svg_96__img);
			this._svg_96.onmouseover=function () {
				me._svg_96__img.src=basePath + 'images/svg_96__o.png';
			}
			this._svg_96.onmouseout=function () {
				me._svg_96__img.src=basePath + 'images/svg_96.png';
			}
			this.__div.appendChild(this._svg_96);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext3.style[domTransition]='none';
					me._hstext3.style.visibility='inherit';
					me._hstext3.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HDown1') {
			this.__div=document.createElement('div');
			this.__div.ggId='HDown1'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 161px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext2.style[domTransition]='none';
				me._hstext2.style.visibility='hidden';
				me._hstext2.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext2=document.createElement('div');
			this._hstext2.ggId='hstext'
			this._hstext2.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext2.ggVisible=false;
			this._hstext2.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext2.setAttribute('style',hs);
			this._hstext2.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext2);
			this._svg_942=document.createElement('div');
			this._svg_942.ggId='Svg 94'
			this._svg_942.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_942.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -8px;';
			hs+='top:  -13px;';
			hs+='width: 30px;';
			hs+='height: 44px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_942.setAttribute('style',hs);
			this._svg_942__img=document.createElement('img');
			this._svg_942__img.setAttribute('src',basePath + 'images/svg_942.png');
			this._svg_942__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 30px;height: 44px;');
			this._svg_942.appendChild(this._svg_942__img);
			this._svg_942.onmouseover=function () {
				me._svg_942__img.src=basePath + 'images/svg_942__o.png';
			}
			this._svg_942.onmouseout=function () {
				me._svg_942__img.src=basePath + 'images/svg_942.png';
			}
			this.__div.appendChild(this._svg_942);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext2.style[domTransition]='none';
					me._hstext2.style.visibility='inherit';
					me._hstext2.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HDown2') {
			this.__div=document.createElement('div');
			this.__div.ggId='HDown2'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 161px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext1.style[domTransition]='none';
				me._hstext1.style.visibility='hidden';
				me._hstext1.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext1=document.createElement('div');
			this._hstext1.ggId='hstext'
			this._hstext1.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext1.ggVisible=false;
			this._hstext1.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext1.setAttribute('style',hs);
			this._hstext1.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext1);
			this._svg_941=document.createElement('div');
			this._svg_941.ggId='Svg 94'
			this._svg_941.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_941.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -8px;';
			hs+='top:  -13px;';
			hs+='width: 30px;';
			hs+='height: 44px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_941.setAttribute('style',hs);
			this._svg_941__img=document.createElement('img');
			this._svg_941__img.setAttribute('src',basePath + 'images/svg_941.png');
			this._svg_941__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 30px;height: 44px;');
			this._svg_941.appendChild(this._svg_941__img);
			this._svg_941.onmouseover=function () {
				me._svg_941__img.src=basePath + 'images/svg_941__o.png';
			}
			this._svg_941.onmouseout=function () {
				me._svg_941__img.src=basePath + 'images/svg_941.png';
			}
			this.__div.appendChild(this._svg_941);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext1.style[domTransition]='none';
					me._hstext1.style.visibility='inherit';
					me._hstext1.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		if (hotspot.skinid=='HDown3') {
			this.__div=document.createElement('div');
			this.__div.ggId='HDown3'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 161px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext0.style[domTransition]='none';
				me._hstext0.style.visibility='hidden';
				me._hstext0.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext0=document.createElement('div');
			this._hstext0.ggId='hstext'
			this._hstext0.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext0.ggVisible=false;
			this._hstext0.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext0.setAttribute('style',hs);
			this._hstext0.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext0);
			this._svg_940=document.createElement('div');
			this._svg_940.ggId='Svg 94'
			this._svg_940.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_940.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -8px;';
			hs+='top:  -13px;';
			hs+='width: 30px;';
			hs+='height: 44px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_940.setAttribute('style',hs);
			this._svg_940__img=document.createElement('img');
			this._svg_940__img.setAttribute('src',basePath + 'images/svg_940.png');
			this._svg_940__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 30px;height: 44px;');
			this._svg_940.appendChild(this._svg_940__img);
			this._svg_940.onmouseover=function () {
				me._svg_940__img.src=basePath + 'images/svg_940__o.png';
			}
			this._svg_940.onmouseout=function () {
				me._svg_940__img.src=basePath + 'images/svg_940.png';
			}
			this.__div.appendChild(this._svg_940);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext0.style[domTransition]='none';
					me._hstext0.style.visibility='inherit';
					me._hstext0.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		} else
		{
			this.__div=document.createElement('div');
			this.__div.ggId='HDown4'
			this.__div.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this.__div.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: 161px;';
			hs+='top:  47px;';
			hs+='width: 5px;';
			hs+='height: 5px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			hs+='cursor: pointer;';
			this.__div.setAttribute('style',hs);
			this.__div.onclick=function () {
				me.player.openNext(me.hotspot.url,"");
				me.player.stopSound("_main");
				me.player.playSound("_background","");
				me.skin.hotspotProxyClick(me.hotspot.id);
			}
			this.__div.onmouseover=function () {
				me.player.hotspot=me.hotspot;
				me.player.stopAutorotate();
				me.elementMouseOver['_div']=true;
				me.skin.hotspotProxyOver(me.hotspot.id);
			}
			this.__div.onmouseout=function () {
				me.player.hotspot=me.player.emptyHotspot;
				me.player.startAutorotate("0.20");
				me._hstext.style[domTransition]='none';
				me._hstext.style.visibility='hidden';
				me._hstext.ggVisible=false;
				me.elementMouseOver['_div']=false;
				me.skin.hotspotProxyOut(me.hotspot.id);
			}
			this.__div.ontouchend=function () {
				me.elementMouseOver['_div']=false;
			}
			this._hstext=document.createElement('div');
			this._hstext.ggId='hstext'
			this._hstext.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._hstext.ggVisible=false;
			this._hstext.ggUpdatePosition=function() {
				this.style[domTransition]='none';
				this.style.left=(-42 + (100-this.offsetWidth)/2) + 'px';
			}
			hs ='position:absolute;';
			hs+='left: -42px;';
			hs+='top:  -37px;';
			hs+='width: auto;';
			hs+='height: auto;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: hidden;';
			hs+='border: 1px solid #ffffff;';
			hs+='color: #ffffff;';
			hs+='background-color: #00557f;';
			hs+='text-align: center;';
			hs+='white-space: nowrap;';
			hs+='padding: 0px 1px 0px 1px;'
			hs+='overflow: hidden;';
			this._hstext.setAttribute('style',hs);
			this._hstext.innerHTML=me.hotspot.title;
			this.__div.appendChild(this._hstext);
			this._svg_94=document.createElement('div');
			this._svg_94.ggId='Svg 94'
			this._svg_94.ggParameter={ rx:0,ry:0,a:0,sx:1,sy:1 };
			this._svg_94.ggVisible=true;
			hs ='position:absolute;';
			hs+='left: -8px;';
			hs+='top:  -13px;';
			hs+='width: 30px;';
			hs+='height: 44px;';
			hs+=cssPrefix + 'transform-origin: 50% 50%;';
			hs+='visibility: inherit;';
			this._svg_94.setAttribute('style',hs);
			this._svg_94__img=document.createElement('img');
			this._svg_94__img.setAttribute('src',basePath + 'images/svg_94.png');
			this._svg_94__img.setAttribute('style','position: absolute;top: 0px;left: 0px;width: 30px;height: 44px;');
			this._svg_94.appendChild(this._svg_94__img);
			this._svg_94.onmouseover=function () {
				me._svg_94__img.src=basePath + 'images/svg_94__o.png';
			}
			this._svg_94.onmouseout=function () {
				me._svg_94__img.src=basePath + 'images/svg_94.png';
			}
			this.__div.appendChild(this._svg_94);
			this.hotspotTimerEvent=function() {
				setTimeout(function() { me.hotspotTimerEvent(); }, 10);
				if (me.elementMouseOver['_div']) {
					me._hstext.style[domTransition]='none';
					me._hstext.style.visibility='inherit';
					me._hstext.ggVisible=true;
				}
			}
			this.hotspotTimerEvent();
		}
	};
	this.addSkinHotspot=function(hotspot) {
		return new SkinHotspotClass(me,hotspot);
	}
	this.addSkin();
};