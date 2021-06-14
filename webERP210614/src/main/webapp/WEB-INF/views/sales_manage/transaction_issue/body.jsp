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
            border: 1px solid #cccccc;
            z-index: 1;
            
            /* background-color: rgb(228, 228, 248); */

        }
        #contents2{
            position: absolute;
            text-align: center;
            right: 0;
            top: 25%;
            width: 85%;
            height: 35%;
            /* border: 1px solid black; */
            z-index: 1;
        }
        #contents3{
            position: absolute;
            right: 0;
            top:60%;
            width: 85%;
            height: 35%;
            /* border: 1px solid black; */
            z-index: 1;
        }
        .con1_search{
            padding:0;
            position: absolute;
            top: 25%;
            text-align: center;
            left: 17%;
        }
         #view1,#view2,#t_total{
            width: 100%;
            text-align: center;
            border: 1px solid #ccc;
            
        }
        #total{
            width: 100%;
            position: absolute;
            bottom: 0;
        }
        #view2 td{
            width: 5%;
        }
        #view2 td input{
            width: 100%;
        }
        #header li a, p{
            color: white;
        }
</style>
</head>
<body>
<container1 id = contents1 >
            <table class="con1_search">
                <tr>
                    <td>�����</td>
                    <td style="width: 50px;"><input type="text" style="width: 100%;"/></td>

                    <td colspan="3"><input type="text" name="" disabled style="width: 100%;"/></td>
                    <td><i class="fas fa-search" style="color: blue;"></i></td>
                    <td style="width: 50px;">�μ�</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td ><i class="fas fa-search" style="color: blue;"></i></td>
                    
                </tr>
                
                <tr>
                    <td>���Ⱓ</td>
                    <td colspan="2" style="width: 80px;"><input type="date" style="width: 100%;"/></td>
                    <td>~</td>
                    <td><input type="date" style="width: 100%;"/></td>
                    <td></td>
                    <td>���</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td><i class="fas fa-search" style="color: blue;"></i></td>
                </tr>
            </table>
            
        </container1>
        <container2 id="contents2" >
            <table id="view1">
                <thead style="background-color: #f5f5f5;">
                    <td><input type="checkbox" name="content" onclick="selectAll(this)"/></td>
                    <td>����ȣ</td>
                    <td>�������</td>
                    <td>��   ��</td>
                    <td>â   ��</td>
                </thead>
                <tbody id="table1">
                    <td><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td><input type="text"/></td>
                    <td><input type="date"/></td>
                    <td><input type="text"/><button>��</button></td>
                    <td><input type="text"/></td>
                </tbody>
            </table>
        </container2>
        <container3 id="contents3">
            <table id="view2">
                <tr style="background-color: #f5f5f5;">
                    <td>no</td>
                    <td>ǰ��</td>
                    <td>ǰ��</td>
                    <td>�԰�</td>
                    <td>������</td>
                    <td>����</td>
                    <td>�ܰ�</td>
                    <td>���ް�</td>
                    <td>�ΰ���</td>
                    <td>�հ��</td>
                    <td>����������</td>
                </tr>
                <tr>
                    <td id="num"></td>
                    <td><input type="text" disabled/></td>
                    <td><input type="text" disabled/></td>
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
            <div id="total">
                <table id="t_total">
                <tr style="background-color: #f5f5f5;">
                    <td>�Ѱ�</td>
                    <td>��������</td>
                    <td>�Ѱ��ް�</td>
                    <td>�Ѻΰ���</td>
                    <td>���հ��</td>
                    <td>������������</td>
                </tr>
                <tr>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                    <td><input type="text"/></td>
                </tr>
            </table>
            </div>
        </container3>
</body>
</html>