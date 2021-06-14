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
        #con1_search {
            width: 30%;
            padding-top: 10px;
            left: 5%;
        }
</style>
</head>
<body>
<container1 id = contents1>
            <table class="con1_search" id="con1_search">
                <tr>
                    <td align="center">�˻籸��</td>
                    <td>
                        <select name="" id="">
                            <option value="11">11.���Ű˻�</option>
                            <option value="21">21.���ְ˻�</option>
                            <option value="41">41.�����˻�</option>
                            <option value="51">51.���ϰ˻�</option>
                        </select>
                    </td>
                    <td align="center">��뿩��</td>
                    <td>
                        <select name="" id="">
                            <option value="0">0.�̻��</option>
                            <option value="1">1.���</option>
                        </select>
                    </td>
                </tr>
            </table>
        </container1>
        <container2 id="contents2">
            <table id="view1">
                <thead>
                    <td><input type="checkbox" name="content" onclick="selectAll(this)"/></td>
                    <td align="center">no</td>
                    <td align="center">�ڵ�</td>
                    <td align="center">�˻�������</td>
                    <td align="center">���</td>
                    <!-- <td align="center">��뿩��</td> -->
                </thead>
                <tbody id="table1" align="center">
                    <td align="center"><input type="checkbox" value = "check1" id="check" name="content"/></td>
                    <td align="center"><input type="text"/></td>
                    <td align="center"><input type="text"/></td>
                    <td align="center"><input type="text"/></td>
                    <td align="center"><input type="text"/></td>
                    <!-- <td align="center"><input type="text"/></td> -->
                </tbody>
            </table>
        </container2>
        <container3 id="contents3">
            <table id="view2">
                <thead>
                    <td><input type="checkbox" name="content1" onclick="selectAll1(this)"/></td>
                    <td align="center">no</td>
                    <td align="center">�˻���������</td>
                    <td align="center">���</td>
                </thead>
                <tbody id="table1" align="center">
                    <td>
                        <input type="checkbox" value = "check1" id="check" name="content1"/>
                    </td>
                    <td align="center"><input type="text"/></td>
                    <td align="center"><input type="text"/></td>
                    <td align="center"><input type="text"/></td>
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