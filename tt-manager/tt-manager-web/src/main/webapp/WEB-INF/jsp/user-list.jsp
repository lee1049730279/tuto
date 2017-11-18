<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div id="user_toolbar">
    <div style="padding: 5px; background-color: #fff;">
        <label>用户名：</label>
        <input class="easyui-textbox" type="text" id="userName">
        <label>用户状态：</label>
        <select id="status" class="easyui-combobox" >
            <option value="">全部</option>
            <option value="0">未激活</option>
            <option value="1">激活</option>
            <option value="2">拉黑</option>
        </select>
        <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
        <!--注意：要加上type="button",默认行为是submit-->
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
    </div>
    <div>

        <button onclick="activate()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">激活</button>
        <button onclick="shielding()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">拉黑</button>

    </div>
</div>

<table id="table"></table>

<script>

    function userList(){
        $("#table").datagrid({
            toolbar: '#user_toolbar',
            url: "items",
            columns: [[
                {field: 'ck', checkbox: true},
                {field: 'id', title: '用户ID', sortable: true},
                {field: 'name', title: '姓名', sortable: true},
                {field: 'sexName', title: '姓别'},
                {field: 'cityName', title: '城市'},
                {field: 'phone', title: '电话'},
                {field: 'email', title: '邮箱'},
                {field: 'birthday', title: '生日',sortable: true,formatter:function(value, row, index){
                    return moment(value).format("LL");
        }},
                {field: 'phoneCode', title: '手机验证码'},
                {field: 'emailCode', title: '邮箱验证码'},
                {field: 'stateName', title: '用户状态'}
            ]],
            pagination: true,
            striped: true,
            multiSort: true,
            pageSize: 20,
            rownumbers: true,
            fit: true,
            loadMsg: '数据正在努力加载，请稍后...'
        })
    }

    //初始化页面时调用方法，进行分页
    userList();


    //模糊查询
    function searchForm(){
        $("#table").datagrid('load',{
            userName:$("#userName").textbox('getValue'),
            status:$("#status").combobox('getValue')
        })
    }

    //用户激活
    function activate(){

        var selectRows = $("#table").datagrid("getSelections");
        if(selectRows.length==0){
            $.messager.alert("提示","未选中任何列","warning");
            return;

        }
        $.messager.confirm("确认","确认要激活吗",function(r){
            if(r){
                var ids=[];
                for(var i=0;i<selectRows.length;i++){
                    ids.push(selectRows[i].id);
                }
                $.post(
                    'items/batch/activate',
                    {"ids[]":ids},
                    function(data){
                        if(data>0){
                        $("#table").datagrid("reload");
                        }
                    },
                    'json'
                )
            }
        })

    }
    //用户拉黑
    function shielding(){

        var selectRows = $("#table").datagrid("getSelections");
        if(selectRows.length==0){
            $.messager.alert("提示","未选中任何列","warning");
            return;

        }
        $.messager.confirm("确认","确认要拉黑吗",function(r){
            if(r){
                var ids=[];
                for(var i=0;i<selectRows.length;i++){
                    ids.push(selectRows[i].id);
                }
                $.post(
                    'items/batch/shielding',
                    {"ids[]":ids},
                    function(data){
                        if(data>0){
                            $("#table").datagrid("reload");
                        }
                    },
                    'json'
                )
            }
        })

    }
</script>