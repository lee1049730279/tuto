<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div class="easyui-panel" title="景点规格参数模板详情" data-options="fit:true">

    <form class="form" id="itemParamAddForm" name="itemParamAddForm" method="post">
        <table style="width:100%;">
            <%--<tr>--%>
                <%--<td class="label">景点类目：</td>--%>
                <%--<td>--%>
                    <%--跟团游：&nbsp;<input id="gid" name="gid" style="width:200px;">&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <%--自助游：&nbsp;<input id="nid" name="nid" style="width:200px;">&nbsp;&nbsp;&nbsp;&nbsp;--%>
                <%--</td>--%>
            <%--</tr>--%>
            <tr>
                <td class="label">景点类目：</td>
                <td>${tripCatName}</td>
            </tr>
            <tr>
                <td class="label">规格参数：</td>
                <td>
                    <button class="easyui-linkbutton" onclick="addGroup()" type="button" data-options="iconCls:'icon-add'">添加分组</button>
                    <ul id="trip-param-group">

                    </ul>
                    <ul id="trip-param-group-template" style="display:none;">
                        <li>
                            <input name="group" value="" type="text">
                            <button title="添加参数" class="easyui-linkbutton" onclick="addParam(this)" type="button" data-options="iconCls:'icon-add'"></button>
                            <button title="删除分组" class="easyui-linkbutton" onclick="delGroup(this)" type="button" data-options="iconCls:'icon-cancel'"></button>
                            <ul class="trip-param">
                                <li>
                                    <input name="param" value="" type="text">
                                    <button title="删除参数" class="easyui-linkbutton" onclick="delParam(this)" type="button" data-options="iconCls:'icon-cancel'"></button>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <button class="easyui-linkbutton" onclick="submitForm()" type="button" data-options="iconCls:'icon-ok'">保存</button>
                    <button class="easyui-linkbutton" onclick="clearForm()" type="button" data-options="iconCls:'icon-undo'">重置</button>
                </td>
            </tr>
        </table>
    </form>
</div>

<script>
    //去后台查询出要回显的数据  因为直接放到域对象带到页面上，json字符串和日期类型会转换错误
    // 所以先把id传过来，再用post去请求就不会出现转换错误的异常
   var id = ${id};
   var ofType= ${ofType};
   var url;
   if(ofType==1){
       url="trip/param/group/edit";
   }else if(ofType==2){
       url="trip/param/independent/edit";
   }
   $(function() {
        //得到要回显的数据 并显示在页面上
        $.post(
            url,
            {"id": id},
            function (data) {
                //将json字符串转成json对象
                paramData = JSON.parse(data.paramData);
               // console.log(paramData);
                $.each(paramData,function(i,e){
                    var groupName = e.group;
                    var $liGroup = $('<li>');
                    var $inputGroup = $('<input name="group" value="'+groupName+'" type="text">');
                    var $buttonAddGroup = $('#trip-param-group-template li button').eq(0).clone();
                    var $buttonDelGroup = $('#trip-param-group-template li button').eq(1).clone();
                    var $ulParam = $('<ul class="trip-param">');

                    $('#trip-param-group').append($liGroup);
                    $liGroup.append($inputGroup);
                    $liGroup.append($buttonAddGroup);
                    $liGroup.append($buttonDelGroup);
                    $liGroup.append($ulParam);

                    if (e.params) {
                        $.each(e.params, function (_i, paramName) {
                            var $liParam = $('<li>');
                            var $inputParam = $('<input name="param" value="'+paramName+'" type="text">');
                            var $buttonDelParam = $('#trip-param-group-template li ul li button').eq(0).clone();
                            $ulParam.append($liParam);
                            $liParam.append($inputParam);
                            $liParam.append($buttonDelParam);

                        });
                    }
                });
            }
        );
   });

    //添加分组
    function addGroup() {
        var $templateLi = $('#trip-param-group-template li').eq(0).clone();
        $('#trip-param-group').append($templateLi);
    }

    //添加参数
    function addParam(ele) {
        var $paramLi = $('#trip-param-group-template .trip-param li').eq(0).clone();
        $(ele).parent().find('.trip-param').append($paramLi);
    }

    //删除参数
    function delParam(ele) {
        $(ele).parent().remove();
    }

    //删除分组
    function delGroup(ele) {
        $(ele).parent().remove();
    }

    //保存
    function submitForm() {
        var groupValues = [];
        var $groups = $('#trip-param-group [name=group]');
        //遍历分组
        $groups.each(function (index, ele) {
            var paramValues = [];
            var $params = $(ele).parent().find('.trip-param [name=param]');
            //遍历分组项
            $params.each(function (_index, _ele) {
                var _val = $(_ele).val();
                if ($.trim(_val).length > 0) {
                    paramValues.push(_val);
                }
            });

            var val = $(ele).val();
            var o = {};
            o.group = val;
            o.params = paramValues;

            if ($.trim(val).length > 0 && paramValues.length > 0) {
                groupValues.push(o);
            }
        });

        //得到规格参数模板json串
        console.log(groupValues);

        var url = 'trip/param/edit/'+id+'/'+ofType;
        var jsonStr = JSON.stringify(groupValues);
        $.post(url, {paramData: jsonStr}, function (data) {
            console.log('修改成功');
            //console.log(data);
            if (data > 0) {
                $.messager.alert('消息', '修改成功', 'info');
                ddshop.closeTabs('编辑景点规格模板');
                ddshop.addTabs('规格参数', 'trip-param-list');
            }
        });
    }

    //重置表单
    function clearForm() {
        $('#itemParamAddForm').form('reset');
    }


</script>
