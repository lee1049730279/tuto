<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="easyui-panel" title="价格列表" data-options="fit:true">
    <form class="priceFrom" id="priceaddFrom" name="priceaddFrom" method="post">
        <table style="width:100%;">
            <tr>
                <td class="label">商品价格(元)：</td>

                <td><input class="easyui-numberbox" type="text" id="priceView" name="priceView"
                           data-options="required:true,min:0,precision:2">
                    <input type="hidden" id="price" name="price">
                </td>
            </tr>


            <tr>
                <td class="label">景点出发城市：</td>
                <td>
                    <input id="cityId" name="cityId" style="width:200px;">
                </td>
            </tr>
        </table>
    </form>
</div>

<script>
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

    function clearForm() {
        $("#itemAddForm").form('reset');
        ue.setContent('商品描述');
    }

</script>
