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
            border: 1px solid black;
            z-index: 1;
        }
        #contents2{
            position: absolute;
            left: 15%;
            top: 25%;
            width: 85%;
            height: 70%;
            border: 1px solid black;
            z-index: 1;
        }
         .con1_search{
            padding:0;
            text-align: center;
            position: absolute;
            top: 25%;
            left: 18%;
        }
        #view1{
            width: 100%;
            text-align: center;
            border: 1px solid black;
        }
        #total{
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            text-align: center;
        }
        #total input{

            width: 7.7%;
            text-align: justify;
            border-style: none;
            background-color: rgb(223, 223, 223);
            
        }
        #total td{
            margin: 0;
            padding: 0;
        }
        #view1 td:not(#non){
            width: 8%;
        }
        #view1 td input{
            width: 100%;
        }
        #reqInput {
            background-color: rgb(255, 255, 149);
            text-align: center;
        }
</style>
</head>
<body>
<container1 id = contents1>
            <table class="con1_search">
                <tr>
                    <td>�����</td>
                    <td style="width: 50px;"><input type="text" id="reqInput" style="width: 100%;"/></td>

                    <td colspan="3"><input type="text" name="" disabled style="width: 100%;"/></td>
                    <td><i class="fas fa-search" style="color: blue;"></td>
                    <td colspan="5" style="width: 50px;">�μ�</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td ><i class="fas fa-search" style="color: blue;"></td>
                    
                </tr> 
                <tr>
                    <td>�����Ⱓ</td>
                    <td colspan="2" style="width: 80px;"><input type="date" id="reqInput" style="width: 100%;"/></td>
                    <td>~</td>
                    <td><input type="date" id="reqInput" style="width: 100%;"/></td>
                    <td></td>
                    <td colspan="5">���</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td><i class="fas fa-search" style="color: blue;"></td>
                </tr>
            </table>
        </container1>
        <container2 id= contents2>
            <table id="view1">
                <thead>
                    <td id="non"><input type="checkbox" name="content" onclick="selectAll(this)"/></td>
                    <td>������ȣ</td>
                    <td>��������</td>
                    <td>����</td>
                    <td>No</td>
                    <td>ǰ��</td>
                    <td>ǰ��</td>
                    <td>����</td>
                    <td>��������</td>
                    <td>�ܰ�</td>
                    <td>���ް�</td>
                    <td>�ΰ���</td>
                    <td>�հ��</td>
                </thead>
               
            </table>
            <div id="total">
                <td>�����հ�:</td>
                <td>&nbsp;<input type="text" disabled/></td>
                <td>�������� ����: </td>
                <td>&nbsp;<input type="text" disabled/></td>
                <td>���ް� �Ѿ�: </td>
                <td>&nbsp;<input type="text" disabled/></td>
                <td>�ΰ��� ����: </td>
                <td>&nbsp;<input type="text" disabled/></td>
                <td>�հ��: </td>
                <td>&nbsp;<input type="text" disabled/></td>
            </div>
        </container2>
</body>
</html>