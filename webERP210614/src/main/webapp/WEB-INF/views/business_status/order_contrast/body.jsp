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
            width: 50%;
            height: 70%;
            border: 1px solid black;
            z-index: 1;
        }
        #contents3{
            position: absolute;
            left: 65%;
            top: 25%;
            width: 35%;
            height: 70%;
            z-index: 1;
            border: 1px solid black;
        }
        .con1_search{
            padding:0;
            text-align: center;
            position: absolute;
            top: 25%;
            left: 15%;
        }
        #view1,#view2{
            width: 100%;
            text-align: center;
            border: 1px solid black;
            
        }
        #contents2 div, #contents3 div{
            position: absolute;
            right: 0;
            bottom: 0;
        }
        #view1 td:not(#non){
            width: 12%;
        }
        #view1 td input{
            width: 100%;
        }
        #view2 td{
            width: 15%;
        }
        #view2 td input{
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
                    <td colspan="5" style="width: 100px;">�ŷ�����</td>
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
                <tr>
                    <th><input type="checkbox" name="content"/></th>
                    <th>�ֹ���ȣ</th>
                    <th>�ֹ�����</th>
                    <th>����</th>
                    <th>No</th>
                    <th>ǰ��</th>
                    <th>ǰ��</th>
                    <th>����</th>
                    <th>�ֹ�����</th>
                </tr>
                <tr>
                    <td id="non"><input type="checkbox" name="content"/></td>
                    <td><input type="text" disabled/></td>
                    <td><input type="text" disabled/></td>
                    <td><input type="text" disabled/></td>
                    <td><input type="text" disabled/></td>
                    <td><input type="text" disabled/></td>
                    <td><input type="text" disabled/></td>
                    <td><input type="text" disabled/></td>
                    <td><input type="text" disabled/></td>
                    
                </tr>
            </table>
            <div>        
                        �ֹ����� ����:
                        &nbsp;<input type="text" disabled/>
            </div>
        </container2>
        <container3 id="contents3">
            <table id="view2">
                <tr>
                    <th>����ȣ</th>
                    <th>�������</th>
                    <th>No</th>
                    <th>����</th>
                </tr>
                <tr>
                    <td><input type="text" disabled/></td>
                    <td><input type="text" disabled/></td>
                    <td><input type="text" disabled/></td>
                    <td><input type="text" disabled/></td>
                </tr>
            </table>
            <div>
                ����հ�:
                <input type="text" disabled/>
                ����:
                <input type="text" disabled/>
             </div>
        </container3>
        
</body>
</html>