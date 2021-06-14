<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
		#contents1{
            position: absolute;
            left: 15%;
            top: 15%;
            width: 85%;
            height: 10%;
            border: 1px solid #ccc;
            z-index: 1;
        }
        #contents2{
            position: absolute;
            left: 15%;
            top: 25%;
            width: 25%;
            height: 70%;
            border: 1px solid #ccc;
            z-index: 1;
        }
        #contents3{
            position: absolute;
            left: 40%;
            top: 25%;
            width: 60%;
            height: 70%;
            z-index: 1;
            border: 1px solid #ccc;
        }
        .con1_search {
            margin: 10px;   
        }
        
        
        #contents1 td {
            text-align: center;
            letter-spacing: 1px;
            padding: 1px;
            font-family: 'Hanna';
        }
        #contents2 td {
            border-collapse: collapse;
            padding: 3px;
        }
        #contents3 td {
            border-collapse: collapse;
            padding: 3px;
        }

        
        #contents2, #contents3 td{
            border-collapse: collapse;    
        }
        
        #contents1 input[type="text"] {
            text-align: center;
        }
        
        #contents2 input[type="text"] {
            text-align: center;
            width: 100%;
        }
        #contents3 input {
            text-align: center;
        }        
        #contents2, #contents3 {
            overflow: auto;   
        }
      
        #table1 {
            width: 70%;
            padding-top: 20px;
            padding-left: 30px;
        }
        #table2 {
            width: 91%;
            text-align: center;
        }
        #table3 {
            padding-left: 30px;
            padding-top: 15px;
            width: 100%; 
        }
        #bottom1 {
            position: absolute;
            bottom: 0px;
        }
        
        #reqInput {
            background-color: rgb(255, 255, 149);
            text-align: center;
        }
</style>
</head>
<body>
<container1 id = contents1>
            <table id="table1">
                <tr>
                    <td>ǰ��</td>
                    <td>
                        <input type=text style="width:80px;">
                        <i class="fas fa-search" style="color: blue;"></i>
                    </td>
                    <td>
                        <input type=text>
                    </td>
                </tr>
                <tr>
                    <td>�˻�����</td>
                    <td>
                        <select name="" id="">
                            <option value="0">0.���۹��ڿ�</option>
                            <option value="1">1.���Թ��ڿ�</option>
                        </select>
                    </td>
                    <td>
                        <input type="text" value=" ǰ�� �˻�" id="search1">
                    </td>
                    <td>
                        <input type="text" value=" ǰ�� �˻�" id="search2">
                    </td>
                    <td>
                        <input type="text" value=" �԰� �˻�" id="search3">
                    </td>
                </tr>
            </table>
        </container1>
        <container2 id= contents2>
            <table id="table2">
                <thead>
                    <td><input type="checkbox" name="content" onclick="selectAll(this)"/></td>
                    <td>ǰ��</td>
                    <td>ǰ��</td>
                    <td>�԰�</td>
                </thead>
                <tbody>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>
                        <input type="text">
                    </td>
                    <td>
                        <input type="text">
                    </td>
                    <td>
                        <input type="text">
                    </td>
                </tbody>
            </table>
            <div id=bottom1>
                <table>
                    <td>��ȸǰ���</td>
                    <td><input type="text" style="width: 50px;">��</td>
                </table>
            </div>
        </container2>
        <container3 id="contents3">
            <table id="table3">
                <tr>
                    <td align="center">ǰ��</td>
                    <td>
                        <input type="text" disabled>
                    </td>
                </tr>
                <tr>
                    <td align="center">ǰ��</td>
                    <td>
                        <input type="text" disabled>
                    </td>
                </tr>
                <tr>
                    <td align="center">�԰�</td>
                    <td>
                        <input type="text" disabled>
                    </td>
                </tr>
                <tr>
                    <td align="center">������</td>
                    <td>
                        <input type="text" id="reqInput">
                    </td>
                </tr>
                <!-- <tr>
                    <td align="center">ǰ��</td>
                    <td>
                        <input type="text" style="width: 70px;">
                        <button>+</button>
                        <input type="text" style="width: 100px;">
                    </td>
                </tr> -->
                <tr>
                    <td align="center">LOT����</td>
                    <td>
                        <select name="" id="reqInput">
                            <option value="0">0.�̻��</option>
                            <option value="1">1.�̻��</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td align="center">SETǰ��</td>
                    <td>
                        <select name="" id="reqInput">
                            <option value="0">0.��</option>
                            <option value="1">1.��</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td align="center">�˻翩��</td>
                    <td>
                        <select name="" id="reqInput">
                            <option value="0">0.���˻�</option>
                            <option value="1">1.�˻�</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td align="center">��뿩��</td>
                    <td>
                        <select id="reqInput">
                            <option value="0.">0.��</option>
                            <option value="1">1.��</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td align="center">LOT����</td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
                <tr>
                    <td align="center">�����ȣ</td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
                <tr>
                    <td align="center">HS CODE</td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
                <tr>
                    <td align="center">��</td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
                <tr>
                    <td align="center">����</td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
                <tr>
                    <td align="center">����</td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
                <tr>
                    <td align="center">����</td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
                <tr>
                    <td align="center">���</td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
            </table>
        </container3>
        <script>
        	var search_box1 = document.getElementById('search1');
        	var search_box2 = document.getElementById('search2');
        	var search_box3 = document.getElementById('search3');
        	search_box1.onfocus = function(){
                document.getElementById("search1").value = '';
            }
            search_box1.onblur = function(){
                document.getElementById("search1").value = ' ǰ�� �˻�';
            }
            search_box2.onfocus = function(){
                document.getElementById("search2").value = '';
            }
            search_box2.onblur = function(){
                document.getElementById("search2").value = ' ǰ�� �˻�';
            }
            search_box3.onfocus = function(){
                document.getElementById("search3").value = '';
            }
            search_box3.onblur = function(){
                document.getElementById("search3").value = ' �԰� �˻�';
            }
        </script>
        
</body>
</html>