<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div class="easyui-panel" title="景点规格参数模板详情" data-options="fit:true">

    <form class="form" id="itemParamAddForm" name="itemParamAddForm" method="post">
        <table style="width:100%;">
            <tr>
                <td class="label">景点类目：</td>
                <td>
                    跟团游：&nbsp;<input id="gid" name="gid" style="width:200px;">&nbsp;&nbsp;&nbsp;&nbsp;
                    自助游：&nbsp;<input id="nid" name="nid" style="width:200px;">&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="label">规格参数：</td>
                <td>
                    <button class="easyui-linkbutton" onclick="addGroup()" type="button" data-options="iconCls:'icon-add'">添加分组</button>
                    <ul id="trip-param-group">

                    </ul>
                    <ul id="trip-param-group-template" style="display:none;">
                        <li>
                            <input name="group">
                            <button title="添加参数" class="easyui-linkbutton" onclick="addParam(this)" type="button" data-options="iconCls:'icon-add'"></button>
                            <button title="删除分组" class="easyui-linkbutton" onclick="delGroup(this)" type="button" data-options="iconCls:'icon-cancel'"></button>
                            <ul class="trip-param">
                                <li>
                                    <input name="param">
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
            }
        }
    });


    //添加分组
    function addGroup(){
        var $templateLi = $('#trip-param-group-template li').eq(0).clone();
        $('#trip-param-group').append($templateLi);
    }

    //添加参数
    function addParam(ele){
        var $paramLi = $('#trip-param-group-template .trip-param li').eq(0).clone();
        $(ele).parent().find('.trip-param').append($paramLi);
    }

    //删除参数
    function delParam(ele){
        $(ele).parent().remove();
    }

    //删除分组
    function delGroup(ele){
        $(ele).parent().remove();
    }

    //保存
    function submitForm(){
        var groupValues = [];
        var $groups = $('#trip-param-group [name=group]');
        //遍历分组
        $groups.each(function(index,ele){
            var paramValues = [];
            var $params = $(ele).parent().find('.trip-param [name=param]');
            //遍历分组项
            $params.each(function(_index,_ele){
                var _val = $(_ele).val();
                if($.trim(_val).length > 0){
                    paramValues.push(_val);
                }
            });

            var val = $(ele).val();
            var o = {};
            o.group = val;
            o.param = paramValues;

            if($.trim(val).length > 0 && paramValues.length > 0){
                groupValues.push(o);
            }
        });

        //得到规格参数模板json串
        console.log(groupValues);

        var url;
        var gid = $('#gid').combotree('getValue');
        var nid = $('#nid').combotree('getValue');
        if(gid.length != 0){
            url = 'trip/param/save/'+gid+'/1';
        }else if(nid.length != 0){
            url = 'trip/param/save/'+nid+'/2';
        }else{
            $.messager.alert("警告","景点类目不能为空");
        }
        //var url = 'trip/param/save/'+cid;
        var jsonStr = JSON.stringify(groupValues);
        $.post(url,{paramData:jsonStr},function(data){
            console.log('保存成功');
            //console.log(data);
            if(data > 0){
                $.messager.alert('消息','保存成功','info');
                ddshop.closeTabs('新增景点规格模板');
                ddshop.addTabs('规格参数','trip-param-list');
            }
        });
    }

    //重置表单
    function clearForm(){
        $('#itemParamAddForm').form('reset');
    }


</script>
