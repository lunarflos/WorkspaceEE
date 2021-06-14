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
        #view1,#view2,#v_total1{
            width: 100%;
            text-align: center;
            border: 1px solid black;
            
        }
        #total1{
            width: 100%;
            position: absolute;
            bottom: 0;
        }
        
        #view1 td:not(#non){
            width: 14.5%;
        }
        #view1 td input{
            width: 100%;
        }
        #view1 th{
            width: 4%;

        }
        #month #non{
            width: 1%;
        }
        #tab_div ul.tabs{
			margin: 0px;
			padding: 0px;
			list-style: none;
            
		}
		#tab_div ul.tabs li{
			background: none;
			color: black;
			display: inline-block;
			padding: 0;
			cursor: pointer;
            width: 60px;
            text-align: center;
            font-size: 13px;
		}


		#tab_div ul.tabs{
            
			margin: 0px;
			padding: 0px;
			list-style: none;
		}
		#tab_div ul.tabs li{
            
			background: none;
			color: black;
			display: inline-block;
			padding: 5px 5px;
			cursor: pointer;
            width: 80px;
            text-align: center;
            font-size: 12px;
		}


		#tab_div ul.tabs li.current{
			border-top: 2px solid skyblue;			
            background-color: #ddd;        
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
		}

		#tab_div .tab-content{
			display: none;	
			
		}

		#tab_div .tab-content.current{
			display: inherit;
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
                    <td style="width: 50px;"><input type="text" style="width: 100%;"/></td>

                    <td ><input type="text" name="" disabled style="width: 100%;"/></td>
                    <td><i class="fas fa-search" style="color: blue;"></i>
                    </td>
                    <td colspan="5" style="width: 50px;">�μ�</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td ><i class="fas fa-search" style="color: blue;"></i>
                    </td>
                    
                </tr>
                
                <tr>
                    <td>��ȹ�⵵</td>
                    <td colspan="3" style="width: 70px; text-align: center;">
                        <button id="minus"><<</button>
                        <input type="text" value="2021" id="year" style="width: 30%; background-color: rgb(255, 255, 149);"/>
                    <button id="plus">>></button></td>
                    <td colspan="5">��ȹ��</td>
                    <td><select name="month" id="reqInput" style="width: 100%;">
                        <option value="1">1</option>
                        <option value="1">2</option>
                        <option value="1">3</option>
                        <option value="1">4</option>
                        <option value="1">5</option>
                        <option value="1">6</option>
                        <option value="1">7</option>
                        <option value="1">8</option>
                        <option value="1">9</option>
                        <option value="1">10</option>
                        <option value="1">11</option>
                        <option value="1">12</option>
                    </select></td>
                    <td>~ &nbsp;&nbsp;&nbsp;&nbsp;<select name="month" id="reqInput" style="width: 50%;">
                        <option value="1">1</option>
                        <option value="1">2</option>
                        <option value="1">3</option>
                        <option value="1">4</option>
                        <option value="1">5</option>
                        <option value="1">6</option>
                        <option value="1">7</option>
                        <option value="1">8</option>
                        <option value="1">9</option>
                        <option value="1">10</option>
                        <option value="1">11</option>
                        <option value="1">12</option>
                    </select></td>

                    <td><i class="fas fa-search" style="color: blue;"></i>
                    </td>
                </tr>
            </table>
            <div id="tab_div">
                <ul class="tabs" style="left: 0px; bottom: 0px; position: absolute;">
                    <li class="tab-link current" data-tab="tab-1" id="things_button">ǰ��</li>
                    <li class="tab-link" data-tab="tab-2" id="set_button">ǰ�񱺺�</li>
                    <li class="tab-link" data-tab="tab-3" id="month_button">����</li>
                </ul>
            </div>
        </container1>
        <container2 id="contents2">
            
            <table id="view1">
                <thead id="month" style="display:none">
                    <!-- ���� -->
                    <th id="non"><input type="checkbox" name="content" onclick="selectAll(this)"/></th>
                    <th>��</th>
                    <th>��ȹ����</th>
                    <th>������</th>
                    <th>��ȹ�ݾ�</th>
                    <th>���ݾ�</th>
                    
                </thead>
                
                <thead id="things">
                    <!-- ǰ�� -->
                    <th id="non"><input type="checkbox" name="content"  onclick="selectAll(this)"/></th>
                    <th>ǰ��</th>
                    <th>ǰ��</th>
                    <th>�԰�</th>
                    <th>����</th>
                    <th>���ʼ���</th>
                    <th>��������</th>
                    <th>���̼���</th>
                    <th>���ʿ�ȭ�ݾ�</th>
                    <th>������ȭ�ݾ�</th>
                    <th>���̿�ȭ�ݾ�</th>
                </thead> 
                <thead id="set" style="display:none"> 
                    <!-- ǰ�񱺺� -->
                    <th id="non"><input type="checkbox" name="content"  onclick="selectAll(this)"/></th>
                    <th>ǰ���ڵ�</th>
                    <th>ǰ�񱺸�</th>
                    <th>���ʼ���</th>
                    <th>��������</th>
                    <th>���̼���</th>
                    <th>���ʿ�ȭ�ݾ�</th>
                    <th>������ȭ�ݾ�</th>
                    <th>���̿�ȭ�ݾ�</th>
                </thead>
 
            </table>
            <div id="total1">
                <table id="v_total1">
                    <tr>
                        <td>��ȹ����</td>
                        <td><input type="text" disabled/></td>
                        <td>������</td>
                        <td><input type="text" disabled/></td>
                        <td>��ȹ�ݾ�</td>
                        <td><input type="text" disabled/></td>
                        <td>���ݾ�</td>
                        <td><input type="text" disabled/></td>
                    </tr>
                </table>
            </div>
        </container2>
        
        <script>
        var plus_button = document.getElementById('plus');
        var minus_button = document.getElementById('minus');
        var month_button = document.getElementById('month_button');
        var things_button = document.getElementById('things_button');
        var set_button = document.getElementById('set_button');
        plus_button.onclick = function(){
            var year = document.getElementById('year');
            year.value =Number(year.value) + 1;
        }
        minus_button.onclick = function(){
            var year = document.getElementById('year');
            year.value =Number(year.value) - 1;
        }
        month_button.onclick = function(){
            var month = document.getElementById('month');
            var things = document.getElementById('things');
            var set = document.getElementById('set');
            var month2 = document.getElementById('month2');
            var set2 = document.getElementById('set2');
            month.style.display = "block";
            set.style.display = "none";
            things.style.display = "none";
            month2.style.display = "block";
            set2.style.display = "none";
            
        }
        things_button.onclick = function(){
            var month = document.getElementById('month');
            var things = document.getElementById('things');
            var set = document.getElementById('set');
            var month2 = document.getElementById('month2');
            var set2 = document.getElementById('set2');
            month.style.display = "none";
            set.style.display = "none";
            things.style.display = "block";
            month2.style.display = "none";
            set2.style.display = "block";
            
        }
        set_button.onclick = function(){
            var month = document.getElementById('month');
            var things = document.getElementById('things');
            var set = document.getElementById('set');
            var month2 = document.getElementById('month2');
            var set2 = document.getElementById('set2');
            month.style.display = "none";
            set.style.display = "block";
            things.style.display = "none";
            month2.style.display = "none";
            set2.style.display = "block";
            
        }
        
    </script>
    <script src="http://code.jquery.com/jquery-latest.js"></script> <!--���������ֽŹ���������-->
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