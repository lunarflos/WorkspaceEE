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
            /* position: absolute; ĭ ���߶� ����*/
            top: 25%;
            left: 5%;
        }
        #searchForm {
            height: 100%;
            margin: 20px 10px;
        }
        /* �����̳� ��Ÿ�Ϻ� */
        #workOrderInfo {
            overflow: scroll;
            height: 97%;
            width: 100%;
        }
        /* �հ� ��º� */
        #resultWindow{
            height: 3%;
            background-color: gray;
            line-height: 5%;
        }
        #workOrderTable{
            width: 100%;
            font-weight: bold;
        }

</style>
</head>
<body>
<container1 id = contents1>
            <form id="searchForm">
                <table>
                    <tr>
                        <td>
                            ��ǰ��
                        </td>
                        <Td>
                            <input type="text" name="factory" style="width: 120px; background-color: yellow;">
                        </Td>
                        <td>
                            <i class="fas fa-search" style="color: blue;"></i>
                        </td>
                        <td>
                            <input type="text" name="ckfactory" style="width: 120px;" disabled>
                        </td>
                        <!-- ��ǰ�� �԰� -->
                        <td>
                            <input type="text" style="width: 150px; background-color: skyblue;" disabled>
                        </td>
                        <!-- ��ǰ�� ���� -->
                        <td>
                            <input type="text" style="width: 120px; background-color: skyblue;" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ��������
                        </td>
                        <td colspan="2">
                            <input type="date" name="department" style="width: 120px; background-color: yellow;"><a href="#" onclick="showPopup();"></a>
                        </td>
                        <td>
                            <input type="checkbox">BOM ������
                        </td>
                        <td>
                            <input type="button" value="<< ����ǰ��" style="padding: 5px; margin-left: 70px;"></input>
                        </td>
                        <td>
                        <input type="button" value="����ǰ�� >>" style="padding: 5px;"></input>
                        </td>
                    </tr>
                </table>
                </form>
        </container1>
        <container2 id= contents2>
            <div id="workOrderInfo">
                <table id="workOrderTable">
                    <tr>
                        <td><input type="checkbox" name="content" onclick="selectAll(this)"/></td>
                        <td>LEVEL</td>
                        <td>����</td>
                        <td>ǰ��</td>
                        <td>ǰ��</td>
                        <td>�԰�</td>
                        <td>����</td>
                        <td>���̼���</td>
                        <td>LOSS(%)</td>
                        <td>�ʿ����</td>
                        <td>ǥ�ؿ���</td>
                        <td>��������</td>
                        <td>����</td>
                        <td>��뿩��</td>
                        <td>���</td>
                    </tr>
                    <!-- BOM �������� �Էº� ���ʿ� -->
                    
                </table>
            </div>
            <!-- �հ� ��º� -->
            <div id="resultWindow">
                �� �� <span style="margin-left: 100px;">���̼��� <input type="text"></span><span style="margin-left: 100px;">�ʿ���� <input type="text"></span>
            </div>
            <!-- �հ� ��º� ���� -->
        </container2>
      
</body>
</html>