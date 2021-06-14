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
            width: 35%;
            height: 70%;
            border: 1px solid #ccc;
            z-index: 1;
        }
        #contents3{
            position: absolute;
            left: 50%;
            top: 25%;
            width: 50%;
            height: 70%;
            z-index: 1;
            border: 1px solid #cc;
        }
        .con1_search {
            margin: 10px;   
        }
       
        
        #contents1 td {
            text-align: right;
            letter-spacing: 1px;
            padding: 1px;
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
        
        #table1 {
        	margin-top:30px;
        	margin-right:5px;
            width: 80%;

        }
        #table2 {
            width: 100%;
            text-align: center;
        }
        #table3 {
            width: 100%; 
        }
        
        #reqInput {
            background-color: rgb(255, 255, 149);
            text-align: center;
        }
	 	#table1 {
            text-align: center; 
			overflow: hidden;
        }
        #table2 {
            width: 100%;  text-align: left;
            border-collapse: separate; border-spacing: 0 15px;
        }
        #reqInput {
           	background-color: rgb(255, 255, 149);
            text-align: center;
        }
</style>
</head>
<body>
<container1 id = contents1>
            <table id="table1" align="center">
                <tr>
                    <td align="center">�ŷ�ó�ڵ�</td>
                    <td>
                        <input type=text name="customerCode"
                        pattern="[0-9]{4}" maxlength="4"/>
                    </td>
                    <td align="center">�ŷ�ó��</td>
                    <td>
                        <input type=text name="customerName">
                    </td>
                    <td align="center">�ŷ�ó����</td>
                    <td>
                        <select name="customerType" >
                            <option value="default">�Ϲ�/����/�ֹ�</option>
                            <option value="1">1.�Ϲ�</option>
                            <option value="2">2.����</option>
                            <option value="3">3.�ֹ�</option>
                        </select>
                    </td>
                </tr>
            </table>
        </container1>
        <container2 id= contents2>
            <table id="table2" align="center">
                <thead>
                    <td><input type="checkbox" id="chec" name="content" onclick="selectAll(this)"/></td>
                    <td align="center">�ڵ�</td>
                    <td align="center">�ŷ�ó��</td>
                    <td align="center">����</td>
                </thead>
                <tbody>
                    <td><input type="checkbox" name="content" onclick="selectAll(this)"></td>
                    <td>
                        <input type="text" name="temp">
                    </td>
                    <td>
                        <input type="text" name="temp">
                    </td>
                    <td>
                        <input type="text" name="temp">
                    </td>
                </tbody>
            </table>
        </container2>
        <container3 id="contents3">
            <table id="table3" align="center">
                <tr>
                    <p><td colspan = "4" span style="color:black" align="center">�⺻��ϻ���</td></p>
                </tr>
                <tr>
                    <td align="center">����ڵ�Ϲ�ȣ</td>
                    <td colspan="3">
                        <input type="text" name="registrationNumber" id="reqInput"
                        pattern="[0-9]{10}" maxlength="10"/>
                    </td>
                </tr>
                <tr>
                    <td align="center">�ֹε�Ϲ�ȣ</td>
                    <td colspan="3">
                        <input type="text" name="socialNumber" pattern="[0-9]{13}" maxlength="13"/>
                    </td>
                </tr>
                <tr>
                    <td align="center">��ǥ�ڼ���</td>
                    <td colspan="3">
                        <input type="text" name="ceoName">
                    </td>
                </tr>
                <tr>
                    <td align="center">����</td>
                    <td colspan="3">
                        <input type="text" name="business">
                    </td>
                </tr>
                <tr>
                    <td align="center">����</td>
                    <td colspan="3">
                        <input type="text" name="specific">
                    </td>
                </tr>
                <tr>
                    <td align="center">�����ȣ</td>
                    <td>
                        <input type="text" name="zipCode" pattern="[0-9]{5}" maxlength="5" 
                        style="width:150px;"/>
                        <i class="fas fa-search" style="color: blue;"></i>
                    </td>
                </tr>
                <tr>
                    <td align="center">������ּ�</td>
                    <td colspan="3">
                        <input type="text" name="workSpaceAddress">
                    </td>
                </tr>
                <tr>
                    <td align="center">��ȭ��ȣ</td>
                    <td colspan="3">
                        <input type="text" name="phoneNumber" pattern="[0-9]{10}" maxlength="10"/>
                    </td>
                </tr>
                <tr>
                    <td align="center">�ַ��ڵ�</td>
                    <td>
                        <input type="text" name="inchargeManager">
                    </td>
                </tr>
            </table>
        </container3>
</body>
</html>