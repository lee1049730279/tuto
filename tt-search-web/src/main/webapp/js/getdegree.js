if(window.jQuery){(function($){var delQ=true;$(window).on('getDegree',function(e,code){var temp=[];var autoDiv=$('.autocomplete-w1');if(autoDiv.length<1)return;var atuoDivCon=autoDiv.find('div.autocomplete');var autoBox=atuoDivCon.find('div.resultbox');var resultLen=autoBox.length;var autoHeight=atuoDivCon.height()-10;var keyId=code.dataId||0;var bannertmp=$('.searchbanner');autoBox.each(function(index,elem){var tmp;var sId=$(elem).attr('data-id')||0;tmp=sId;temp.push(tmp);});if(bannertmp.length<1){if(keyId==0||　keyId　=="undefined"){bannertmp.hide();return;}
getAjax(code.degreeUrl,{key_id:keyId,key_word:code.key_word},function(data){if(data.hasTop){var degreeBox=showDegree(data,resultLen,autoHeight);autoDiv.append(degreeBox);$('#sbanner'+keyId).show();}});}else{if($('#sbanner'+keyId).length>0){bannertmp.hide();$('#sbanner'+keyId).show();}else{if(keyId==0||　keyId　=="undefined"){bannertmp.hide();return;}
getAjax(code.degreeUrl,{key_id:keyId,key_word:code.key_word},function(data){if(data.hasTop){var degreeBox=showDegree(data,resultLen,autoHeight);autoDiv.append(degreeBox);bannertmp.hide();$('#sbanner'+keyId).show();}});}}
function getAjax(url,sendData,callback){if(!delQ){return;}
delQ=false;$.ajax({url:url,dataType:'jsonp',jsonp:"jsoncallback",data:{'key_id':sendData.key_id,'key_word':sendData.key_word,'format':'json'},scriptCharset:'utf-8',success:function(data){delQ=true;if(data){callback(data);}}})}
function showDegree(res,len,sheight){var sdiv='',slen,stop="",scon="",picDiv="";if(res.keyId){var searchRoute=res.playroute;if(searchRoute){slen=searchRoute.length;}
if(res.hasTop&&res.hasTop==1&&len>3){if(slen>0&&len>9){for(var n=0;n<slen;n++){repName=searchRoute[n].routeName;repName=repName.replace(/[ ]/g,"");scon+='<div class="an_mo" liwithhan="搜索最受欢迎玩法-'+searchRoute[n].routeNum+'-'+res.key_word+'-'+repName+'">'
+'<a class="topbanner" target="_self" href="'+searchRoute[n].routeUrl+'" title="'+searchRoute[n].routeName+'">'
+'<span class="toptag">Top '+searchRoute[n].routeNum+'</span>'
+' <span class="topname">'+searchRoute[n].routeName+'</span>'
+'</a></div>';}
stop='<div class="searchtop">'
+'<h2>最受欢迎的玩法</h2>'
+scon
+'</div>';if(slen>0&&len>10){if(res.ad&&res.ad.length>0){picDiv='<div class="searchpic">'
+'<a href="'+res.ad[0].url+'">'
+'<img src="'+res.ad[0].imgUrl+'" />'
+'</a></div>'}}}
sdiv='<div class="searchbanner" id="sbanner'+keyId+'" style="display:none;height:'+sheight+'px">'
+'        <h1>'+res.key_word+'</h1>'
+'        <div class="searchdegree">'
+'            <div class="degreetag">'
+'                <p class="degreetext">满意度</p>'
+'                <p class="degreenum">'+res.degree+'</p>'
+'            </div>'
+'            <div class="degreeitem">'
+'                <p class="degreefollow">'
+'                    <label>已关注人数：</label>'
+'                    <span>'+res.follwNum+'人次</span>'
+'                </p>'
+'                <p class="degreetour">'
+'                    <label>已有点评数：</label>'
+'                    <span>'+res.tourNum+'人次</span>'
+'                </p>'
+'            </div>'
+'        </div>'
+stop
+picDiv
+'</div>';}
return sdiv;}}});})(jQuery);}