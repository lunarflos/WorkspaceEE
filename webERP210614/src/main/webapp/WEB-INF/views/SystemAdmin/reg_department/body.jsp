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
            width: 85%;
            height: 70%;
            border: 1px solid #ccc;
            z-index: 1;
        }
        .con1_search {
            margin: 10px;   
        }
        #contents1 {
            border-bottom: none;
            
        }
        #contents2 {
            border-bottom: none;
            
        }
        
        #contents1 td {
            text-align: right;
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

        #contents1 input[type="text"] {
            text-align: center;
        }
        #contents1 input[disabled] {
            border: 2px inset rgb(148, 147, 150);
        }
        #contents2 input {
            text-align: center;
        }
        #contents3 input {
            text-align: center;
        }        
        
        #table1 {
        	margin-top:18px;
        	width:100%

        }
        #table2 {
            width: 100%;
            overflow: hidden;
            
        }
</style>
</head>
<body>
<container1 id = contents1>
            <table id="table1" align="center">
                <tr>
                    <p><td colspan="3" span style="color:black" align="center">�μ����</td></p>
                    <p><td colspan="7" span style="color:black" align="center">�ι����</td></p>
                </tr>
                <tr>
                    <td align="center">�����</td>
                    <td >
                        <select name="workSpace" style="width: 120px;">
                        </select>
                        <i class="fas fa-search" style="color: blue;"></i>
                    </td>
                    <td align="center">��ȸ������ ����</td>
                    <td>
                        <input type="checkbox">
                        <input type="date" disabled text-align: center; style="width: 130px;"/>
                    </td>                  
                    <td align="center" colspan="3" style="width:150px; text-align: right;">�ι��ڵ�&nbsp;</td>
                    <td>
                        <input type=text name="sectorCode" style=" width: 80px;"/>
                    </td>
                    <td align="center">�ι���</td>
                    <td>
                        <input type=text name="sectorName" style="width: 150px;"/>
                    </td>
                    <td align="center">���Ⱓ ����</td>
                    <td>
                        <input type="date" style="width: 130px;">
                    </td>
                </tr>
            </table>
        </container1>
        <container2 id= contents2>
            <table id="table2" align="center">
                <thead>
                    <td align="center">�μ��ڵ�</td>
                    <td align="center">�μ���</td>
                    <td align="center">������ڵ�</td>
                    <td align="center">������</td>
                    <td align="center">�ι��ڵ�</td>
                    <td align="center">�ι���</td>
                    <td align="center">���Ⱓ ����</td>
                </thead>
                <tbody>
                    <td align="center">
                        <input type=text name="divCode" style="width: 100px;">
                    </td>
                    <td align="center">
                        <input type=text name="divName">
                    </td>
                    <td align="center">
                        <input type=text name="workSpaceCode" style="width: 100px;">
                    </td>
                    <td align="center">
                        <input type=text name="workSpaceName">
                    </td>
                    <td align="center">
                        <input type=text name="sectorCode" style="width: 100px;">
                    </td>
                    <td align="center">
                        <input type=text name="sectorName">
                    </td>
                    <td align="center">
                        <input type="date">
                    </td>
                    </tbody>
                </tr>
            </table>
        </container2>
</body>
</html>