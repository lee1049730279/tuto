<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div id="ordersorders">
    <div style="padding: 5px; background-color: #fff;">
        <label>用户名称：</label>
        <input class="easyui-textbox" type="text" id="userName">
        <label>商品状态：</label>
        <select id="state" class="easyui-combobox">
            <option value="0">请选择</option>
            <option value="1">待出行</option>
            <option value="2">游玩中</option>
            <option value="3">待评价</option>
            <option value="4">已完成</option>
            <option value="5">已作废</option>
            <option value="6">待退款</option>
            <option value="7">待付款</option>
        </select>
        <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
        <!--注意：要加上type="button",默认行为是submit-->
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
    </div>
    <div>
        <button onclick="changestate()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑订单状态</button>
        <select  id="state1" class="easyui-combobox">
            <option value="0">请选择</option>
            <option value="1">待出行</option>
            <option value="2">游玩中</option>
            <option value="3">待评价</option>
            <option value="4">已完成</option>
            <option value="5">已作废</option>
            <option value="6">待退款</option>
            <option value="7">待付款</option>
        </select>
    </div>
    <div id="ab"></div>
</div>
<table id="orderstb"></table>

<script>
    $('#orderstb').datagrid({
        toolbar: "#ordersorders",
        url: 'orders',
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
        pageList: [20, 50, 100],
        //多列排序
        //multiSort: true,
        //列属性
        columns: [[
            //field title width列属性
            {field: 'ck', checkbox: true},
            {field: 'id', title: '订单编号', width: 100},
            {field: 'tripName', title: '项目名称', width: 100},
            {field: 'num', title: '购买数量', width: 100},
            {field: 'startTime', title: '出发时间',formatter: function (value, row, index) {
                return moment(value).format("L");
            }
            },
            {field: 'cityName', title: '出发地点', width: 100},
            {
                field: 'totalPrice', title: '总价格', formatter: function (value, row, index) {
                var number = new Number(value / 100);
                return number.toFixed(2);
            }
            },
            {field: 'stateName', title: '订单状态', width: 100},
            {
                field: 'createTime', title: '订单创建时间', sortable: true,formatter: function (value, row, index) {
                return moment(value).format("L");
            }
            },
            {field: 'userName', title: '订单所属用户', width: 100},
            {field: 'userContact', title: '订单出行用户信息',formatter:function (value, row, index) {
                var ss='';
                var ss1='';
               if(value.length!=0) {
                   for (var i=0;i<value.length;i++){
                        ss +="第"+(i+1)+"个出行人:　"+" 姓名:"+value[i].name+",电话号码:"+value[i].phone;
                        ss +=",email:"+value[i].email+",生日:"+moment(value[i].birthday).format("L");
                        ss +=",身份证号:"+value[i].cardNo;
                       if(value[i].sex==0){
                           ss +=",性别:男" ;
                       }else if(value[i].sex==1){
                           ss +=",性别:女" ;
                       }
                       ss +="　　　　";
                   }
               }
               return ss;
            }}
        ]]

    })
    function formatBr(len,value){

        var slengh=value.length;

        var restr="";

        var flag=true;

        for (var i=1;i<=100;i++){

            len2=i*len;

            if(slengh>=len2){

                flag=false;

                restr+=value.substring(len2-len,len2)+"</br>"

            }else{

                break;

            }

        }

        if(flag){

            restr+=value;

        }else{

            if(len2-len<=value.length-1){

                restr+=value.substring(len2-len, value.length)

            }



        }
        return restr;

    }
    function searchForm() {
       $('#orderstb').datagrid('load', {
           userName: $('#userName').val(),
           state: $('#state').combobox('getValue')
       });
   }
   function changestate() {
       var selectRows = $('#orderstb').datagrid('getSelections');
       var state=$('#state1').combobox('getValue');
       if(state==0){
           $.messager.alert('提示', '未选择修改状态', 'warning');
           return;
       }else if(selectRows.length == 0){
           $.messager.alert('提示', '未选中记录', 'warning');
           return;
       } else{
           var ids = [];
           for (var i = 0; i < selectRows.length; i++) {
               ids.push(selectRows[i].id);
           }
           //异步提交给后台
           $.ajax({
               url: "orders/update/"+state,
               type: "post",
               data: {"ids[]": ids},
               success: function (data) {
                   if (data != 0) {
                       $('#orderstb').datagrid('reload');
                   }
               },
               dataType: "json"
           })
       }
   }
   /*function checkUserContact(){
       var selectRows = $('#orderstb').datagrid('getSelections');
       console.log(selectRows[0].userId);
       if(selectRows.length==0){
           $.messager.alert('提示', '未选中记录', 'warning');
           return;
       }else{
            var ids= [];
           for (var i = 0; i < selectRows.length; i++) {
               ids.push(selectRows[i].id);
               ids.push(selectRows[i].userId);
           }
           $.ajax({
               url: "orders/userContact",
               type: "post",
               data: {"ids[]": ids},
               success: function (data) {

               },
               dataType: "json"
           })
       }
   }*/
</script>

