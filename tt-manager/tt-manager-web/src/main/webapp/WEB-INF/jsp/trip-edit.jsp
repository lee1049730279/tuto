<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="easyui-panel" title="景点详情" data-options="fit:true">
    <form class="tripForm" id="tripAddForm" name="tripAddForm" method="post">
        <table style="width:100%;">
            <tr>
                <td class="label">景点主题：</td>
                <td>
                    <input class="easyui-textbox" value="${ttTripEditCustom.title}" type="text" id="title" name="title"
                           data-options="required:true" style="width:525px;">
                </td>
            </tr>
            <tr>
                <td class="label">景点标题：</td>
                <td>
                    <input class="easyui-textbox" value="${ttTripEditCustom.sTitle}" type="text" id="sTitle" name="sTitle"
                           data-options="required:true" style="width:525px;">
                </td>
            </tr>
            <tr>
                <td class="label">景点价格：</td>
                <td>
                    <input class="easyui-numberbox" value="${ttTripEditCustom.priceView}" type="text" id="priceView" name="priceView"
                           data-options="required:true,min:0,precision:2">
                    <input type="hidden" id="price" name="price">
                </td>
            </tr>
            <tr>
                <td class="label">景点真实价格：</td>
                <td>
                    <input class="easyui-numberbox" value="${ttTripEditCustom.realPriceView}" type="text" id="realPriceView" name="realPriceView"
                           data-options="required:true,min:0,precision:2">
                    <input type="hidden" id="realPrice" name="realPrice">
                </td>
            </tr>
            <%--<tr>
                <td class="label">景点坐标：</td>
                <td>
                    经度：&nbsp;<input class="easyui-textbox" type="text" id="p1" name="p1"
                           data-options="required:true,min:0,precision:6" style="width:200px;">&nbsp;&nbsp;&nbsp;&nbsp;
                    纬度：&nbsp;<input class="easyui-textbox" type="text" id="p2" name="p2"
                                    data-options="required:true,min:0,precision:6" style="width:200px;">
                </td>
            </tr>--%>
            <tr>
                <td class="label">交通工具：</td>
                <td>
                    <input class="easyui-textbox" value="${ttTripEditCustom.traffic}" type="text" id="traffic" name="traffic" style="width:525px;">
                </td>
            </tr>
            <tr>
                <td class="label">酒店名称：</td>
                <td>
                    <input class="easyui-textbox" value="${ttTripEditCustom.hotel}" type="text" id="hotel" name="hotel" style="width:525px;">
                </td>
            </tr>
            <tr>
                <td class="label">出游人数：</td>
                <td>
                    <input class="easyui-numberbox" value="${ttTripEditCustom.buyTime}" type="text" id="buyTime" name="buyTime"
                           data-options="min:0,precision:0">
                </td>
            </tr>
            <tr>
                <td class="label">好评率：</td>
                <td>
                    <input class="easyui-numberbox" value="${ttTripEditCustom.goodRate}" type="text" id="goodRate" name="goodRate"
                           data-options="min:0,precision:2">
                </td>
            </tr>
            <tr>
                <td class="label">景点评分：</td>
                <td>
                    <input class="easyui-numberbox" value="${ttTripEditCustom.placeScore}" type="text" id="placeScore" name="placeScore"
                           data-options="min:0,precision:1">
                </td>
            </tr>
            <tr>
                <td class="label">住宿评分：</td>
                <td>
                    <input class="easyui-numberbox" value="${ttTripEditCustom.hotelScore}"   type="text" id="hotelScore" name="hotelScore"
                           data-options="min:0,precision:1">
                </td>
            </tr>
            <tr>
                <td class="label">服务评分：</td>
                <td>
                    <input class="easyui-numberbox" value="${ttTripEditCustom.serviceScore}" type="text" id="serviceScore" name="serviceScore"
                           data-options="min:0,precision:1">
                </td>
            </tr>
            <tr>
                <td class="label">旅途评分：</td>
                <td>
                    <input class="easyui-numberbox" value="${ttTripEditCustom.trafficScore}" type="text" id="trafficScore" name="trafficScore"
                           data-options="min:0,precision:1">
                </td>
            </tr>
            <tr>
                <td class="label">住宿描述：</td>,
                <td>
                    <input class="easyui-textbox" value="${ttTripEditCustom.hotelIntroduce}" type="text" id="hotelIntroduce" name="hotelIntroduce"
                           data-options="validType:'length[0,150]',multiline:true" style="width:100%;height:60px;">
                </td>
            </tr>
            <tr>
                <td class="label">美食描述：</td>
                <td>
                    <input class="easyui-textbox" value="${ttTripEditCustom.foodIntroduce}"  type="text" id="foodIntroduce" name="foodIntroduce"
                           data-options="validType:'length[0,150]',multiline:true" style="width:100%;height:60px;">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <!-- 加载编辑器的容器 -->
                    <script id="container"  name="placeIntroduce" type="text/plain">${ttTripEditCustom.placeIntroduce}</script>
                </td>
            </tr>

            <tr class="paramsShow" style="display:none;">
                <td class="label">景点规格：</td>
                <td>

                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <button onclick="submitForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-ok'">修改
                    </button>
                    <button onclick="clearForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-undo'">重置
                    </button>
                </td>
            </tr>
        </table>
        <input name="paramData" id="paramData" style="display:none;">
    </form>
</div>
<script>
    //重置表单
    function clearForm() {
        $("#tripAddForm").form('reset');
        ue.setContent('景点描述');
    }

    //提交表单
    function  submitForm(){
        $("#tripAddForm").form('submit',{
            //提交表单到item进行处理
            url:'tripEdit?id='+'${ttTripEditCustom.id}',

            onSubmit:function () {
                //给隐藏域设值ID属性，并且设值
                $("#price").val($("#priceView").val()*100);
                $("#realPrice").val($("#realPriceView").val()*100);

                //获取参数规格部分
                var paramsJson=[];
                var $liList = $('#tripAddForm .paramsShow li');
                $liList.each(function (i,e) {
                    var $group = $(e).find('.group');
                    var groupName = $group.text();
                    var params = [];
                    var $trParams = $(e).find('tr').has('td.param');
                    $trParams.each(function (_i,_e) {
                        var $keyTd = $(_e).find('.param');
                        var $valueInput = $keyTd.next('td').find('input');
                        var key = $keyTd.text();
                        var value = $valueInput.val();

                        var _o={
                            k:key,
                            v:value
                        };
                        params.push(_o);
                    });
                    var o={ };
                    o.group=groupName;
                    o.params=params;
                    paramsJson.push(o);
                });
                paramsJson=JSON.stringify(paramsJson);
                $('#paramData').val(paramsJson);
                console.log(typeof($('#paramData').val()));
                return $(this).form('validate');
            },
            success:function (data) {
                if(data>0){
                    $.messager.alert('消息','保存成功','info');
                    /*ddshop.addTabs('查询景点','trip-list');
                    ddshop.closeTabs('编辑景点');*/
                }
            }
        });
    }

    //初始化之前删除原有内容
    UE.delEditor('container');

    //实例化富文本编辑器
    var ue=UE.getEditor('container');

    //回显规格参数
    $(function () {
        //跟团游规格参数回显
        if(${ttTripEditCustom.groupId!=null}){
            $.get(
                //url
                'groupParam/query/'+'${ttTripEditCustom.groupId}',
                //success
                function (data) {
                    var $outerTd = $('#tripAddForm .paramsShow td').eq(1);
                    var $ul = $('<ul>');
                    $outerTd.empty().append($ul);
                    if (data) {
                        var paramData = data.paramData;
                        paramData = JSON.parse(paramData);

                        //数据回显
                        var groupParam='${ttTripEditCustom.groupParamData}';
                        groupParam=JSON.parse(groupParam);

                        /*$.each(paramData, function (i, e) {*/
                        for(var j=0;j<paramData.length;j++) {
                            var e=paramData[j];
                            var group=groupParam[j];
                            var groupName = e.group;
                            var $li = $('<li>');
                            var $table = $('<table>');
                            var $tr = $('<tr>');
                            var $td = $('<td colspan="2" class="group">' + groupName + '</td>');
                            $ul.append($li);
                            $li.append($table);
                            $table.append($tr);
                            $tr.append($td);

                            //遍历分组项
                            if (e.params) {
                                /*$.each(e.params, function (_i, paramName) {*/
                                for (var i = 0; i < e.params.length; i++) {
                                    var param=group.params[i];
                                    var _$tr = $('<tr><td class="param">' + e.params[i] + '</td><td><input value="'+param.v+'"></td></tr>');
                                    $table.append(_$tr);
                                }
                               /* });*/
                            }
                        }
                        $("#tripAddForm .paramsShow").show();
                    } else {
                        $("#tripAddForm .paramsShow").hide();
                        $("#tripAddForm .paramsShow td").eq(1).empty();//第二个td
                    }
                }
            );
        }

        //自助游规格参数回显
        if(${ttTripEditCustom.independentId!=null}){
            $.get(
                //url
                'independentParam/query/'+'${ttTripEditCustom.independentId}',
                //success
                function (data) {
                    var $outerTd = $('#tripAddForm .paramsShow td').eq(1);
                    var $ul = $('<ul>');
                    $outerTd.empty().append($ul);
                    if (data) {
                        var paramData = data.paramData;
                        paramData = JSON.parse(paramData);

                        //数据回显
                        var independentParam='${ttTripEditCustom.independentParamData}';
                        independentParam=JSON.parse(independentParam);
                        console.log(typeof (independentParam));
                       /* $.each(paramData, function (i, e) {*/
                       for(var j=0;j<paramData.length;j++) {
                           var e=paramData[j];
                           var independent=independentParam[j];
                           var groupName =e.group;
                           var $li = $('<li>');
                           var $table = $('<table>');
                           var $tr = $('<tr>');
                           var $td = $('<td colspan="2" class="group">' + groupName + '</td>');
                           $ul.append($li);
                           $li.append($table);
                           $table.append($tr);
                           $tr.append($td);

                           //遍历分组项
                           if (e.params) {
                               /* $.each(e.params, function (_i, paramName) {*/
                               for (var i = 0; i < e.params.length; i++) {
                                   var param=independent.params[i];
                                   var _$tr = $('<tr><td class="param">' + e.params[i] + '</td><td><input value="'+param.v+'"></td></tr>');
                                   $table.append(_$tr);
                               }
                               /* });*/
                           }
                           /* });*/
                       }
                        $("#tripAddForm .paramsShow").show();
                    } else {
                        $("#tripAddForm .paramsShow").hide();
                        $("#tripAddForm .paramsShow td").eq(1).empty();//第二个td
                    }
                }
            );
        }
    });
</script>
