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
        #view1 td{
            width: 6%;
            text-align: center;

        }
        .total{
            position: absolute;
            left: 80px;
            bottom: 0;
            width: 100%;
            text-align: center;
        }
        .total input{
            border-style: none;
            background-color: rgb(223, 223, 223);
        }
        #contents1 div{
            position: absolute;
            right: 20px;
            top: 10px;
        }
        ul.tabs{
			margin: 0px;
			padding: 0px;
			list-style: none;
		}
		ul.tabs li{
			background: none;
			color: black;
			display: inline-block;
			padding: 5px 5px;
			cursor: pointer;
            width: 80px;
            text-align: center;
		}


		ul.tabs li.current{
			border-top: 2px solid skyblue;			
            background-color: #ddd;        
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
		}

		.tab-content{
			display: none;	
			
		}

		.tab-content.current{
			display: inherit;
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
                    <td>���ֱⰣ</td>
                    <td colspan="2" style="width: 80px;"><input type="date" style="width: 100%;"/></td>
                    <td>~</td>
                    <td><input type="date" style="width: 100%;"/></td>
                    <td></td>
                    <td colspan="5">â��</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td><i class="fas fa-search" style="color: blue;"></td>
                </tr>
            </table>
            
                <ul class="tabs" style="left: 0px; bottom: 0px; position: absolute;">
                    <li class="tab-link current" data-tab="tab-1" id="date_button">���ں�</li>
                    <li class="tab-link" data-tab="tab-2" id="type_button">������</li>
                </ul>
            
        </container1>
        <container2 id= contents2>
            
            <table id="view1">
                <thead id="day">
                    <td style="width: 1%;"><input type="checkbox" name="content"/></td>
                    <td>ǰ��</td>
                    <td>ǰ��</td>
                    <td>�԰�</td>
                    <td>����</td>
                    <td>�������</td>
                    <td>�԰�<br>�ϰ� | ����</td>
                    <td>���<br>�ϰ� | ����</td>
                    <td>�⸻���</td>
                
                </thead>
                <tr id="type" style="display: none;">
                    <td style="width: 3%;"><input type="checkbox" name="content"/></td>
                    <td>��������</td>
                    <td>ǰ��</td>
                    <td>ǰ��</td>
                    <td>�԰�</td>
                    <td>��������</td>
                    <td>���������</td>
                    <td>���ʼ���</td>
                    <td>�԰����</td>
                    <td>������</td>
                    <td>������</td>
                    <td>������</td>
                    <td style="font-size: 13px;">������������</td>
                    <td>��������</td>
                </tr>
            </table>
            <div id="d_total" class="total">
                <table>
                    <tr>
                        <td>��������հ�</td>
                        <td>�ϰ��԰��հ�</td>
                        <td>�����԰��հ�</td>
                        <td>�ϰ�����հ�</td>
                        <td>��������հ�</td>
                        <td>�⸻����հ�</td>
                    </tr>
                    <tr>
                        <td><input type="text" disabled/></td>
                        <td><input type="text" disabled/></td>
                        <td><input type="text" disabled/></td>
                        <td><input type="text" disabled/></td>
                        <td><input type="text" disabled/></td>
                        <td><input type="text" disabled/></td>
                    </tr>
                </table>
            </div>
            <div id="t_total" class="total" style="display: none;">
                <table>
                    <tr>
                        <td>���ʼ����հ�</td>
                        <td>�԰�����հ�</td>
                        <td>�������հ�</td>
                        <td>�������հ�</td>
                        <td>�������հ�</td>
                        <td>���������հ�</td>
                    </tr>
                    <tr>
                        <td><input type="text" disabled/></td>
                        <td><input type="text" disabled/></td>
                        <td><input type="text" disabled/></td>
                        <td><input type="text" disabled/></td>
                        <td><input type="text" disabled/></td>
                        <td><input type="text" disabled/></td>
                    </tr>
                </table>
            </div>
        </container2>
            <script>
        var date_button = document.getElementById('date_button');
        var type_button = document.getElementById('type_button');
        date_button.onclick = function(){
            var day = document.getElementById('day');
            var type = document.getElementById('type');
            var d_total = document.getElementById('d_total');
            var t_total = document.getElementById('t_total');
            day.style.display = "block";
            d_total.style.display = "block";
            type.style.display = "none";
            t_total.style.display = "none";
            
        }
        type_button.onclick = function(){
            var day = document.getElementById('day');
            var type = document.getElementById('type');
            var d_total = document.getElementById('d_total');
            var t_total = document.getElementById('t_total');
            day.style.display = "none";
            d_total.style.display = "none";
            type.style.display = "block";
            t_total.style.display = "block";
        }
        </script>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script>
        $(document).ready(function(){
        
        $('ul.tabs li').click(function(){
            var tab_id = $(this).attr('data-tab');
    
            $('ul.tabs li').removeClass('current');
            $('.tab-content').removeClass('current');
    
            $(this).addClass('current');
            $("#"+tab_id).addClass('current');
        })
    
    })
    </script>
</body>
</html>