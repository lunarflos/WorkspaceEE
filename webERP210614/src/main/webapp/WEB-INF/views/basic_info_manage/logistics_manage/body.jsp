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
            width: 25%;
            height: 80%;
            border: 1px solid black;
            z-index: 1;
        }
        #contents2{
            position: absolute;
            left: 40%;
            top: 15%;
            width: 60%;
            height: 80%;
            z-index: 1;
            border: 1px solid black;
        }
         #table1 {
            text-align: center; width: 100%; padding-top: 10px;
            padding-right: 10%; padding-left: 2px;
        }
        #table2 {
            width: 100%; padding-top: 10px; padding-left: 10px; text-align: center;
            border-collapse: separate; border-spacing: 0 15px; border: 1px solid black;
        }
        #table3 {
            width: 100%; padding-top: 10px; padding-left: 10px; text-align: center;
            border-collapse: separate; border-spacing: 0 15px;
        }
        #table1 td{
            border: 1px solid black;
        }      
</style>
</head>
<body>
<container id = contents1>
            <table id="table1">
                <tr>
                    <td><input type="checkbox" name="content" onclick="selectAll(this)"/></td>
                    <td>�ڵ�</td>
                    <td>�����׸��</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>AG</td>
                    <td>�����׷챸��</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>AM</td>
                    <td>������������</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>LA</td>
                    <td>�����������</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>LP</td>
                    <td>�������籸��</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>LQ</td>
                    <td>ǰ���˻籸��</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>LS</td>
                    <td>������������</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>P1</td>
                    <td>���꼳��</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>P2</td>
                    <td>�۾���</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>P3</td>
                    <td>�۾�SHIFT</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>PC</td>
                    <td>��������</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>PU</td>
                    <td>���Ŵܰ�����</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>SU</td>
                    <td>�����ܰ�����</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>TM</td>
                    <td>�ŷ�ó�з�</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>TS</td>
                    <td>��۹��</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>V1</td>
                    <td>�����ⱸ��</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>V2</td>
                    <td>����ޱ���</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>WD</td>
                    <td>�뿩����</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>WE</td>
                    <td>��Ź�������</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>Z1</td>
                    <td>ǰ���з�</td>
                </tr>
            </table>
        </container>

        <container id="contents2">
            <table id="table2">
                <tr>
                    <td align="center">�ڵ�</td>
                    <td>
                        <input type="text">
                    </td>    
                    <td align="center">����������</td>
                    <td>
                        <input type="text">
                    </td>
                    <!-- <td align="center">��뿩��</td>
                    <td>
                        <select name="" id="">
                            <option value="2">��ü</option>
                            <option value="0">0.�̻��</option>
                            <option value="1">1.���</option>
                        </select>
                    </td>
                    <td>
                        <button>����ȸ</button>
                    </td> -->
                </tr>
            </table>
            <table id="table3">
                <thead>
                    <td align="center">���������ڵ�</td>
                    <td align="center">�����׸��</td>
                    <td align="center">ǰ�񱺼���</td>
                    <td align="center">���</td>
                </thead>
                <tbody>
                    <td>
                        <input type="text">
                    </td>
                    <td>
                        <input type="text">
                    </td>
                    <td>
                        <input type="text">
                    </td>
                    <td>
                        <input type="text">
                    </td>
                    <!-- <td>
                        <select name="" id="">
                            <option value="1">���</option>
                            <option value="0">�̻��</option>
                        </select>
                    </td> -->
                </tbody>
            </table>
        </container>
</body>
</html>