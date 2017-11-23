<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="easyui-panel" title="景点详情" data-options="fit:true">
    <form class="tripForm" id="tripAddForm" name="tripAddForm" method="post">
        <table style="width:100%;">
            <tr>
                <td class="label">景点类目：</td>
                <td>
                    跟团游：&nbsp;<input id="gid" name="gid" value="" style="width:200px;">&nbsp;&nbsp;&nbsp;&nbsp;
                    自助游：&nbsp;<input id="nid" name="nid" value="" style="width:200px;">&nbsp;&nbsp;&nbsp;&nbsp;
                    主题游：&nbsp;<input  name = "tids" id="tids" value=""  style="width:200px;"/>
                </td>

                <%--<td class="label">自助游：</td>
                <td>
                    <input id="nid" name="nid" style="width:200px;">
                </td>

                <td class="label">主题游：</td>
                <td>
                    <input id="tid" name="tid" style="width:200px;">
                </td>--%>
            </tr>
            <tr>
                <td class="label">景点主题：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="title" value="" name="title"
                           data-options="required:true" style="width:525px;">
                </td>
            </tr>
            <tr>
                <td class="label">景点标题：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="sTitle" value="" name="sTitle"
                           data-options="required:true" style="width:525px;">
                </td>
            </tr>
            <tr>
                <td class="label">景点价格：</td>
                <td>
                    <input class="easyui-numberbox" type="text" id="priceView" value="" name="priceView"
                           data-options="required:true,min:0,precision:2">
                    <input type="hidden" id="price" name="price">
                </td>
            </tr>
            <tr>
                <td class="label">景点真实价格：</td>
                <td>
                    <input class="easyui-numberbox" type="text" id="realPriceView" name="realPriceView"
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
                    <input class="easyui-textbox" type="text" id="traffic" name="traffic" style="width:525px;">
                </td>
            </tr>
            <tr>
                <td class="label">酒店名称：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="hotel" name="hotel" style="width:525px;">
                </td>
            </tr>
            <tr>
                <td class="label">出游人数：</td>
                <td>
                    <input class="easyui-numberbox" type="text" id="buyTime" name="buyTime"
                           data-options="min:0,precision:0">
                </td>
            </tr>
            <tr>
                <td class="label">好评率：</td>
                <td>
                    <input class="easyui-numberbox" type="text" id="goodRate" name="goodRate"
                           data-options="min:0,precision:2">
                </td>
            </tr>
            <tr>
                <td class="label">景点评分：</td>
                <td>
                    <input class="easyui-numberbox" type="text" id="placeScore" name="placeScore"
                           data-options="min:0,precision:1">
                </td>
            </tr>
            <tr>
                <td class="label">住宿评分：</td>
                <td>
                    <input class="easyui-numberbox" type="text" id="hotelScore" name="hotelScore"
                           data-options="min:0,precision:1">
                </td>
            </tr>
            <tr>
                <td class="label">服务评分：</td>
                <td>
                    <input class="easyui-numberbox" type="text" id="serviceScore" name="serviceScore"
                           data-options="min:0,precision:1">
                </td>
            </tr>
            <tr>
                <td class="label">旅途评分：</td>
                <td>
                    <input class="easyui-numberbox" type="text" id="trafficScore" name="trafficScore"
                           data-options="min:0,precision:1">
                </td>
            </tr>
            <tr>
                <td class="label">景点所在城市：</td>
                <td>
                    <input id="cityId" name="cityId" style="width:200px;">
                </td>
            </tr>
            <tr>
                <td class="label">住宿描述：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="hotelIntroduce" name="hotelIntroduce"
                           data-options="validType:'length[0,150]',multiline:true" style="width:100%;height:60px;">
                </td>
            </tr>
            <tr>
                <td class="label">美食描述：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="foodIntroduce" name="foodIntroduce"
                           data-options="validType:'length[0,150]',multiline:true" style="width:100%;height:60px;">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <!-- 加载编辑器的容器 -->
                    <script id="container" name="placeIntroduce" type="text/plain">景点描述</script>
                </td>
            </tr>

            <tr class="paramsShow" style="display:none;">
                <td class="label">商品规格：</td>
                <td>

                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <button onclick="submitForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-ok'">保存
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
        ue.setContent('商品描述');
    }

    //提交表单
    function  submitForm(){
        $("#tripAddForm").form('submit',{
            //提交表单到item进行处理
            url:'trip',
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
                    ddshop.closeTabs('新增景点');
                    ddshop.addTabs('查询景点','trip-list');

                }
            }
        });
    }

    //初始化之前删除原有内容
    UE.delEditor('container');

    //实例化富文本编辑器
    var ue = UE.getEditor('container', {
        initialFrameWidth: '100%',
        initialFrameHeight: '300',
        serverUrl:'file/upload'
    });
    //加载跟团游的树形下拉框
    $("#gid").combotree({
        url:'groupCats?parentId=0',
        onBeforeExpand:function (node) {
            //获取当前被点击的tree
            var $currentTree=$("#gid").combotree('tree');
            //调用easyui tree组件的options方法
            var option=$currentTree.tree('options');
            option.url='groupCats?parentId='+node.id;
        },
        onBeforeSelect:function (node) {
            //判断选中节点是否为叶子节点，如果是，返回true
            var isLeaf=$("#gid").tree('isLeaf',node.target);
            //如果后台管理员选中的不是叶子节点的话，给出警告框
            if (! isLeaf){
                $.messager.alert('警告','请选中最终的类别','warning');
                return false;
            }else{
                //如果是叶子节点，就发送ajax请求查询tt_trip_group_param
                 $("#nid").combotree('clear');
                $.get(
                    //url
                    'groupParam/query/'+node.id,
                    //success
                    function (data) {
                        var $outerTd = $('#tripAddForm .paramsShow td').eq(1);
                        var $ul=$('<ul>');
                        $outerTd.empty().append($ul);
                        if(data){
                            var paramData = data.paramData;
                            paramData=JSON.parse(paramData);
                            $.each(paramData,function (i,e) {
                                var  groupName=e.group;
                                var $li=$('<li>');
                                var $table = $('<table>');
                                var $tr=$('<tr>');
                                var $td=$('<td colspan="2" class="group">'+groupName+'</td>');
                                $ul.append($li);
                                $li.append($table);
                                $table.append($tr);
                                $tr.append($td);

                                //遍历分组项
                                if(e.params){
                                    $.each(e.params,function (_i,paramName) {
                                        var _$tr=$('<tr><td class="param">'+paramName+'</td><td><input></td></tr>');
                                        $table.append(_$tr);
                                    });
                                }
                            });
                            $("#tripAddForm .paramsShow").show();
                        }else {
                            $("#tripAddForm .paramsShow").hide();
                            $("#tripAddForm .paramsShow td").eq(1).empty();//第二个td
                        }
                    }
                );
            }
        }
    });

    //加载自助游的树形下拉框
    $("#nid").combotree({
        url:'independentCats?parentId=0',
        onBeforeExpand:function (node) {
            //获取当前被点击的tree
            var $currentTree=$("#nid").combotree('tree');
            //调用easyui tree组件的options方法
            var option=$currentTree.tree('options');
            option.url='independentCats?parentId='+node.id;
        },
        onBeforeSelect:function (node) {
            //判断选中节点是否为叶子节点，如果是，返回true
            var isLeaf=$("#nid").tree('isLeaf',node.target);
            //如果后台管理员选中的不是叶子节点的话，给出警告框
            if (! isLeaf){
                $.messager.alert('警告','请选中最终的类别','warning');
                return false;
            }else{
                //如果是叶子节点，就发送ajax请求查询tb_item_param
                $("#gid").combotree('clear');
                $.get(
                    //url
                    'independentParam/query/'+node.id,
                    //success
                    function (data) {
                        var $outerTd = $('#tripAddForm .paramsShow td').eq(1);
                        var $ul=$('<ul>');
                        $outerTd.empty().append($ul);
                        if(data){
                            var paramData = data.paramData;
                            paramData=JSON.parse(paramData);
                            $.each(paramData,function (i,e) {
                                var  groupName=e.group;
                                var $li=$('<li>');
                                var $table = $('<table>');
                                var $tr=$('<tr>');
                                var $td=$('<td colspan="2" class="group">'+groupName+'</td>');
                                $ul.append($li);
                                $li.append($table);
                                $table.append($tr);
                                $tr.append($td);

                                //遍历分组项
                                if(e.params){
                                    $.each(e.params,function (_i,paramName) {
                                        var _$tr=$('<tr><td class="param">'+paramName+'</td><td><input></td></tr>');
                                        $table.append(_$tr);
                                    });
                                }
                            });
                            $("#tripAddForm .paramsShow").show();
                        }else {
                            $("#tripAddForm .paramsShow").hide();
                            $("#tripAddForm .paramsShow td").eq(1).empty();//第二个td
                        }
                    }
                );
            }
        }
    });

    //加载城市的树形下拉框
    $("#cityId").combotree({
        url:'cityCats?parentId=0',
        required:true,
        onBeforeExpand:function (node) {
            //获取当前被点击的tree
            var $currentTree=$("#cityId").combotree('tree');
            //调用easyui tree组件的options方法
            var option=$currentTree.tree('options');
            option.url='cityCats?parentId='+node.id;
        },
        onBeforeSelect:function (node) {
            //判断选中节点是否为叶子节点，如果是，返回true
            var isLeaf=$("#cityId").tree('isLeaf',node.target);
            //如果后台管理员选中的不是叶子节点的话，给出警告框
            if (! isLeaf){
                $.messager.alert('警告','请选中最终的类别','warning');
                return false;
            }
        }
    });

    //加载主题游下拉列表
    $('#tids').combobox({
        url:'themeCats',
        method:'get',
        valueField:'id',
        textField:'name',
       // panelHeight:'auto',
        multiple:true,
        formatter: function (row) {
            var opts = $(this).combobox('options');
            return '<input type="checkbox" class="combobox-checkbox">' + row[opts.textField]
        },
        onLoadSuccess: function () {
            var opts = $(this).combobox('options');
            var target = this;
            var values = $(target).combobox('getValues');
            $.map(values, function (value) {
                var el = opts.finder.getEl(target, value);
                el.find('input.combobox-checkbox')._propAttr('checked', true);
            })
        },
        onSelect: function (row) {
            //console.log(row);
            var opts = $(this).combobox('options');
            var el = opts.finder.getEl(this, row[opts.valueField]);
            el.find('input.combobox-checkbox')._propAttr('checked', true);
        },
        onUnselect: function (row) {
            var opts = $(this).combobox('options');
            var el = opts.finder.getEl(this, row[opts.valueField]);
            el.find('input.combobox-checkbox')._propAttr('checked', false);
        }
    });
</script>
