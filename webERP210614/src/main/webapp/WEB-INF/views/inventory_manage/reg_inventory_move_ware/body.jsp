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
            top: 15%;
            width: 85%;
            height: 10%;
            border: 1px solid black;
            z-index: 1;
        }
        #contents2{
            position: absolute;
            right: 0;
            top: 25%;
            width: 85%;
            height: 35%;
            border: 1px solid black;
            z-index: 1;
        }
        #contents3{
            position: absolute;
            right: 0;
            top:60%;
            width: 85%;
            height: 35%;
            border: 1px solid black;
            z-index: 1;
        }
         .con1_search{
            padding:0;
            text-align: center;
            /* position: absolute; ĭ ���߶� ����*/
            top: 25%;
            left: 18%;
        }
        #view1,#view2{
            width: 100%;
            text-align: center;
            border: 1px solid black;
            
        }
        /* end default ������ css �߰���*/
             
        #contents2, #contents3{
            overflow: scroll;
        }
        #contents1 {
            padding: 20px;
        }
        
        #reqInput {
            background-color: rgb(255, 255, 149);
            text-align: center;
        }
</style>
</head>
<body>
<container1 id = contents1>
            <table class="con1_search" style="margin: auto;">
                <tr>
                    <td>�����</td>
                    <td style="width: 50px;"><input type="text" id="reqInput" style="width: 100%;"/></td>
                    <td colspan="3"><input type="text" name="" disabled style="width: 100%;"/></td>
                    <td><i class="fas fa-search" style="color: blue;"></i></td>

                    <td colspan="5"id="reqInput"  style="width: 70px;">�μ�</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td ><i class="fas fa-search" style="color: blue;"></i></td>
                    <td><input type="text" name="" disabled/></td>

                    <!-- <td colspan="5" style="width: 70px;">���</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td><button>��</button></td> -->
                    
                </tr>
                
                <tr>
                    <td>�̵��Ⱓ</td>
                    <td colspan="2" style="width: 80px;"><input type="date"id="reqInput"  style="width: 100%;"/></td>
                    <td>~</td>
                    <td><input type="date"id="reqInput"  style="width: 100%;"/></td>
                    <td></td>

                    <td colspan="5" style="width: 80px;">���â��</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td ><i class="fas fa-search" style="color: blue;"></i></td>
                    <td><input type="text" name="" disabled/></td>
                                        
                    <!-- <td colspan="5" style="width: 50px;">������</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td ><button>��</button></td> -->
                </tr>

                <!-- <tr>
                    <td>�����</td>
                    <td style="width: 50px;"><input type="text" style="width: 100%;"/></td>
                    <td colspan="3"><input type="text" name="" disabled style="width: 100%;"/></td>
                    <td><button>��</button></td>

                    <td colspan="5" style="width: 50px;">�԰�â��</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td ><button>��</button></td>

                    <td colspan="5" style="width: 50px;">�԰����</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td><button>��</button></td>
                    
                </tr> -->

                <!-- <tr>
                    <td>��������</td>
                    <td style="width: 50px;"><input type="text" style="width: 100%;"/></td>
                    <td colspan="3"><input type="text" name="" disabled style="width: 100%;"/></td>
                    <td><button>��</button></td>

                    <td colspan="5" style="width: 50px;">������Ʈ</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td ><button>��</button></td>

                    <td colspan="5" style="width: 50px;">ǰ��</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td><button>��</button></td>
                    
                </tr> -->
            </table>
        </container1>
        <container2 id="contents2">
            <table id="view1">
                <thead>
                    <td><input type="checkbox" name="content" onclick="selectAll(this)"/></td>
                    <td>�̵���ȣ</td>
                    <td>�̵�����</td>
                    <td>���â��</td>
                    <td>������</td>
                    <td>�԰�â��</td>
                    <td>�԰����</td>
                    <td>�����</td>                 
                </thead>
                <tbody id="table1">
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td><input type="text"/></td>
                    <td><input type="date"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                </tbody>
            </table>
        </container2>
        <container3 id="contents3">
            <table id="view2">
                <tr>
                    <td><input type="checkbox" name="content2" onclick="selectAll2(this)"/></td>
                    <td>ǰ ��</td>
                    <td>ǰ ��</td>
                    <td>�� ��</td>
                    <td>�� ��</td>
                    <td>�̵�����</td>
                    <td>���ް�</td>
                    <td>�հ��</td>
                    
            
                </tr>
                <tr>
                    <td><input type="checkbox" value = "check1" id="check" name="content2"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    
                    
                </tr>
            </table>
            
        </container3>
</body>
</html>