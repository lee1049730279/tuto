<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div id="toolbarParam">
    <div>
        <button onclick="addParam()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>
        <button onclick="editParam()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
        <button onclick="removeParam()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>

    </div>
</div>

<table id="dgParamList"></table>

<script>

    function addParam(){
        ddshop.addTabs("新增景点规格模板","trip-param-add");
    }

    function removeParam(){
        var selections = $('#dgParamList').datagrid('getSelections');
        if(selections.length==0){
            $.messager.alert('提示','请至少选中一条');
            return;
        }
        $.messager.confirm('确认','您确定要删除吗？',function(r){
            if(r){
                var ids = [];
                var ofTypes = [];
                for(var i=0;i<selections.length;i++){
                   ids.push(selections[i].id);
                   ofTypes.push(selections[i].ofType);
                }
                $.post(
                    'trip/param/batch',
                    {'ids[]':ids,"ofTypes":ofTypes},
                    function(data){
                        $('#dgParamList').datagrid('reload');
                    },
                    'json'
                );
            }
        });
    }

    function editParam(){
//        var selections = $('#dgParamList').datagrid('getSelections');
//        if(selections.length != 1){
//            $.messager.alert('提示','请选中一条');
//            return;
//        }

    }


    $('#dgParamList').datagrid({
        title:'景点规格模板列表',
        url:'tripParams',
        pagination: true,
        rownumbers: true,
        fit: true,
        pageSize: 20,
        toolbar: '#toolbarParam',
        columns: [[
            {field: 'ck', checkbox: true},
            {field: 'id', title: 'ID', sortable:true},
            {field: 'tripCatName', title: '景点类目'},
            {field: 'paramData', title: '规格（只显示分组名称）', formatter:function(value,row,index){
                //console.log(value);
                var obj = JSON.parse(value);
                var arr = [];
                $.each(obj,function(i,e){
                    arr.push(e.group);
                });
                return arr.join(",");
            }},
            {field: 'created', title: '创建时间', formatter:function(value,row,index){
                return moment(value).format('YYYY年MM月DD日,hh:mm:ss');
            }},
            {field: 'updated', title: '修改时间', formatter:function(value,row,index){
                return moment(value).format('YYYY年MM月DD日,hh:mm:ss');
            }},
            {field: 'ofType', title: '类目所属类型', formatter:function(value,row,index){
                switch(value){
                    case 1: return '跟团游'; break;
                    case 2: return '自助游'; break;
                    default: return '未知'; break;
                }
            }}
        ]]
    });
</script>
