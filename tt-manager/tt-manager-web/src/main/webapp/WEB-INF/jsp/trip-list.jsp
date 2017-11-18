<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div id="toolbar">
    <div style="padding: 5px; background-color: #fff;">
        <label>景点标题：</label>
        <input class="easyui-textbox" type="text" id="sTitle">
        <label>景点状态：</label>
        <select id="state" class="easyui-combobox">
            <option value="0">全部</option>
            <option value="1">上架</option>
            <option value="2">下架</option>
        </select>
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
    </div>
    <div>
        <button onclick="add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>
        <button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
        <button onclick="remove()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
        <button onclick="down()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">下架</button>
        <button onclick="up()" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true">上架</button>
    </div>
</div>
<table id="dg"></table>
<script>
    function searchForm(){
        $('#dg').datagrid('load',{
            sTitle:$('#sTitle').val(),
            state:$('#state').combobox('getValue')
        });
    }

    function add(){
        ddshop.addTabs("新增景点","trip-add");
    }

    function remove(){
        var selections = $('#dg').datagrid('getSelections');
        if(selections.length==0){
            $.messager.alert('提示','请至少选中一条');
            return;
        }
        $.messager.confirm('确认','您确定要删除吗？',function(r){

            if(r){
                var ids = [];
                for(var i=0;i<selections.length;i++){
                    ids.push(selections[i].id);
                }
                $.post(
                    'trip/batch',
                    {'ids[]':ids},
                    function(data){
                        $('#dg').datagrid('reload');
                    },
                    'json'
                );
            }
        });
    }

    function edit(){
        var selections = $('#dg').datagrid('getSelections');
        if(selections.length != 1){
            $.messager.alert('提示','请选中一条');
            return;
        }
        var id = selections[0].id;

        window.location.href="${pageContext.request.contextPath}/trip_edit/"+id;
    }

    function up(){
        var selections = $('#dg').datagrid('getSelections');
        if(selections.length==0){
            $.messager.alert('提示','请至少选中一条');
            return;
        }
        $.messager.confirm('确认','您确定要上架吗？',function(r){
            if(r){
                var ids = [];
                for(var i=0;i<selections.length;i++){
                    ids.push(selections[i].id);
                }
                $.post(
                    'trip/up',
                    {'ids[]':ids},
                    function(data){
                        $('#dg').datagrid('reload');
                    },
                    'json'
                );
            }
        });
    }

    function down(){
        var selections = $('#dg').datagrid('getSelections');
        if(selections.length==0){
            $.messager.alert('提示','请至少选中一条');
            return;
        }
        $.messager.confirm('确认','您确定要下架吗？',function(r){
            if(r){
                var ids = [];
                for(var i=0;i<selections.length;i++){
                    ids.push(selections[i].id);
                }
                $.post(
                    'trip/down',
                    {'ids[]':ids},
                    function(data){
                        $('#dg').datagrid('reload');
                    },
                    'json'
                );
            }
        });
    }

    $('#dg').datagrid({
        //允许多列排序
        multiSort:true,
        //将工具栏添加到数据表格中
        toolbar: '#toolbar',
        //请求远程服务器上的URL http://localhost:8080/ddshop/items
        url: 'trips',
        //隔行变色，斑马线效果
        striped: true,
        //添加分页工具栏
        pagination: true,
        //每行的前面显示行号
        rownumbers: true,
        //使得数据表格自适应填充父容器
        fit: true,
        //默认显示10条，这样的话就显示20条
        pageSize: 20,
        //分页列表
        pageList: [20,50,100],
        //列属性
        columns: [[
            //field title width列属性
            {field: 'ck', checkbox: true},
            {field: 'id', title: '景点编号', width: 100},
            {field: 'sTitle', title: '景点标题', width: 100},
            {field: 'title', title: '景点描述', width: 100, sortable:true},
            {field: 'priceView', title: '打折价格', width: 100, sortable:true},
            {field: 'realPriceView', title: '真实价格', width: 100},
            {field: 'traffic', title: '交通工具', width: 100},
            {field: 'hotel', title: '住宿', width: 100},
            {field: 'goodRate', title: '好评率', width: 100,formatter:function(value,row,index){
                return value+'%';
            }},
            {field: 'placeScore', title: '景点评分', width: 100},
            {field: 'hotelScore', title: '住宿评分', width: 100},
            {field: 'serviceScore', title: '服务评分', width: 100},
            {field: 'trafficScore', title: '服务评分', width: 100},
            {field: 'state', title: '状态', width: 100, formatter:function(value,row,index){
                switch(value){
                    case 1: return '上架'; break;
                    case 2: return '下架'; break;
                    case 3: return '删除'; break;
                    default: return '未知'; break;
                }
            }},
            {field: 'cityName', title: '所属城市', width: 100}
//            {field: 'created', title: '创建时间', width: 100, formatter:function(value,row,index){
//                return moment(value).format('LL');
//            }},
//            {field: 'updated', title: '修改时间', width: 100, formatter:function(value,row,index){
//                return moment(value).format('LL');
//            }}
        ]]
    });
</script>