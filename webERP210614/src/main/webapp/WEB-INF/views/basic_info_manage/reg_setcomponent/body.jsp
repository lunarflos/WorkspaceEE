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
        #view{
            width: 100%;
            text-align: center;
            border: 1px solid black;
        }

        #view td input:not(#check){
            width: 100%;
        }
        .con1_search{
            padding:0;
            text-align: center;
            position: absolute;
            top: 25%;
            left: 10%;
        }
</style>
</head>
<body>
<container1 id = contents1>
            <table class="con1_search">
                <tr>
                    <td>��Ʈǰ</td>
                    <td>
                        <select name="" id="">
                            <option value="0">0.ǰ��</option>
                            <option value="1">1.ǰ��</option>
                            <option value="2">2.�԰�</option>
                        </select>
                    </td>
                    <td><input type="text" name="" id=""></td>
                    <td>ǰ��</td>
                    <td>
                        <input type="text">
                        <i class="fas fa-search" style="color: blue;"></i>
                    </td>
                    <td><input type="text" name="" id="" disabled></td>
                    <td>��������</td>
                    <td>
                        <select name="" id="">
                            <option value="7">��ü</option>
                            <option value="0">0.�����</option>
                            <option value="1">1.�����</option>
                            <option value="2">2.��ǰ</option>
                            <option value="4">4.����ǰ</option>
                            <option value="5">5.��ǰ</option>
                            <option value="6">6.����ǰ</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>����ǰ</td>
                    <td>
                        <select name="" id="">
                            <option value="0">0.ǰ��</option>
                            <option value="1">1.ǰ��</option>
                            <option value="2">2.�԰�</option>
                        </select>
                    </td>
                    <td><input type="text" name="" id=""></td>
                    <td>ǰ��</td>
                    <td>
                        <input type="text">
                        <i class="fas fa-search" style="color: blue;"></i>
                    </td>
                    <td><input type="text" name="" id="" disabled></td>
                    <td>��������</td>
                    <td>
                        <select name="" id="">
                            <option value="7">��ü</option>
                            <option value="0">0.�����</option>
                            <option value="1">1.�����</option>
                            <option value="2">2.��ǰ</option>
                            <option value="4">4.����ǰ</option>
                            <option value="5">5.��ǰ</option>
                            <option value="6">6.����ǰ</option>
                        </select>
                    </td>
                </tr>
            </table>
        </container1>
        <container2 id="contents2">
           <table id="view">
                <thead>
                    <td colspan="5">��Ʈǰ ���</td>
                </thead>
                <thead style="font-weight: bold;">
                    <td id="check"><input type="checkbox" id="check" name="content" onclick="selectAll(this)"/></td>
                    <td>ǰ��</td>
                    <td>ǰ��</td>
                    <td>�԰�</td>
                    <td>����(����)</td>
                </thead>
                <tbody>
                    <td id="check"><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td><input type="text"></td>
                    <td><input type="text"></td>
                    <td><input type="text"></td>
                    <td><input type="text"></td>
                </tbody>
           </table>
        </container2>
        <container3 id="contents3">
            <table id="view">
                <thead>
                    <td colspan="12">����ǰ ���</td>
                </thead>
                <thead style="font-weight: bold;">
                    <td style="width: 5%;"><input type="checkbox" name="content1" onclick="selectAll1(this)"></td>
                    <td>��Ʈǰ�ڵ�</td>
                    <td>����ǰ�ڵ�</td>
                    <td>ǰ��</td>
                    <td>����</td>
                    <td>����</td>
                    <td>�԰�</td>
                </thead>
                <tbody>
                    <td style="width: 5%;"><input type="checkbox" value = "check1" id="check" name="content1"/></td>
                    <td><input type="text" name="" id=""></td>
                    <td><input type="text" name="" id=""></td>
                    <td><input type="text" name="" id=""></td>
                    <td><input type="text" name="" id=""></td>
                    <td><input type="text" name="" id=""></td>
                    <td><input type="text" name="" id=""></td>
                </tbody>
            </table>
        </container3>
        <script>
        function selectAll(selectAll){
            const checkbox = document.getElementsByName('content');
            checkbox.forEach((checkbox) => {
                checkbox.checked = selectAll.checked;
            })
        }
        function selectAll1(selectAll1){
            const checkbox = document.getElementsByName('content1');
            checkbox.forEach((checkbox) => {
                checkbox.checked = selectAll1.checked;
            })
        }
        </script>
</body>
</html>