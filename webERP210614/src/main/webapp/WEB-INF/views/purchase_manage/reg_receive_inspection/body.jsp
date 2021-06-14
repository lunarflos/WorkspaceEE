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
            padding: 10px;
            right: 0;
            top: 14.2%;
            width: 85%;
            height: 10.8%;
            border: 1px solid black;
            z-index: 1;
        }
        #contents2{
            position: absolute;
            right: 0;
            top: 25%;
            width: 85%;
            height: 30%;
            border: 1px solid black;
            z-index: 1;
        }
        #contents3{
            position: absolute;
            right: 0;
            top:55%;
            width: 85%;
            height: 30%;
            border: 1px solid black;
            z-index: 1;
            overflow: scroll;
        }
        #contents4{
            position: absolute;
            top: 85%;
            right: 45%;
            width: 40%;
            height: 10%;
            border: 1px solid black;
        }
        #contents5{
            position: absolute;
            top: 85%;
            right: 0;
            width: 45%;
            height: 10%;
            border: 1px solid black;
        }
        .con1_search{
            padding:0;
            text-align: center;
            position: absolute;
            top: 25%;
            left: 18%;
        }
        #view1,#view2,#view3,#view4{
            width: 100%;
            text-align: center;
            border: 1px solid black;
            
        }
        #total{
            position: absolute;
            bottom: 0;
            right: 0;
        }
        #button{
            position: absolute;
            top: 10px;
            right: 20px;
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
                    <td>�˻�Ⱓ</td>
                    <td colspan="2" style="width: 80px;"><input type="date" style="width: 100%;"/></td>
                    <td>~</td>
                    <td><input type="date" style="width: 100%;"/></td>
                    <td></td>
                    <td colspan="5">���</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td><i class="fas fa-search" style="color: blue;"></td>
                </tr>
            </table>
            <div id="button">
                <button>����������ȸ</button>
                <button>���Ȯ��</button>
            </div>
        </container1>
        <container2 id="contents2">
            <table id="view1">
                <thead>
                    <td><input type="checkbox" name="content" onclick="selectAll(this)"/></td>
                    <td>�˻��ȣ</td>
                    <td>�˻�����</td>
                    <td>�ŷ�ó</td>
                    <td>�԰�â��</td>
                    <td>�˻�����</td>
                </thead>
                <tbody id="table1">
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td><input type="text"/></td>
                    <td><input type="date"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                </tbody>
            </table>
        </container2>
        <container3 id="contents3">
            <table id="view2">
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>no</td>
                    <td>ǰ��</td>
                    <td>ǰ��</td>
                    <td>�԰�</td>
                    <td>����</td>
                    <td>�˻����</td>
                    <td>�˻�����</td>
                    <td>�˻籸��</td>
                    <td>�հݿ���</td>
                    <td>�հݼ���</td>
                    <td>���հݼ���</td>
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                </tr>
            </table>
            <div id="total">
                <table>
                    <tr>
                        <td>�˻�����հ�</td>
                        <td><input type="text" disabled/></td>
                        <td>�հݼ����հ�</td>
                        <td><input type="text" disabled/></td>
                        <td>���հݼ����հ�</td>
                        <td><input type="text" disabled/></td>
                    </tr>
                    
                </table>
            </div>
        </container3>
        <container4 id="contents4">
            <table id="view3">
                <tr>
                    <td>No</td>
                    <td>Description</td>
                    <td>����</td>
                    <td>���</td>
                </tr>
            </table>
        </container4>
        <container5 id="contents5">
            <table id="view4">
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td>�ҷ��ڵ�</td>
                    <td>�ҷ�������</td>
                    <td>�ҷ�����</td>
                </td>
                </tr>
            </table>
            <div>
                <table id="total">
                    <tr>
                        <td>�ҷ���������</td>
                        <td><input type="text" disabled/></td>
                    </tr>
                </table>
            </div>
        </container5>
</body>
</html>