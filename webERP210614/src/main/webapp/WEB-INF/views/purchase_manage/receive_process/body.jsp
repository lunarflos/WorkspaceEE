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
            height: 12%; 
            border: 1px solid black;
            z-index: 1;
        }
        
        #contents2{
            position: absolute;
            right: 0;
            top: 27%; 
            width: 85%;
            height: 30%; 
            border: 1px solid black;
            z-index: 1;
        }
        #contents3{
            position: absolute;
            right: 0;
            top:57%; /*60���� 57���μ���*/
            width: 85%;
            height: 38%; /*35���� 38�μ���*/
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
        /* end default */

        .con1_search {
            margin: 10px;
            
            
        }
        
        #contents2, #contents3{
            overflow: scroll;
        }

        /*�Ǳ��� css��*/		
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
                    <td style="width: 50px;"><input type="text" style="width: 100%;"/></td>
                    <td colspan="3"><input type="text" name="" disabled style="width: 100%;"/></td>
                    <td><button>��</button></td> 

                    <td colspan="5" style="width: 80px;">�μ�</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td><button>��</button></td>

                    <!-- <td colspan="5" style="width: 50px;">���</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td><button>��</button></td> -->
                    
                </tr>
                
                <tr>
                    <td>�԰�Ⱓ</td>
                    <td colspan="2" style="width: 50px;"><input type="date" style="width: 100%;"/></td>
                    <td>~</td>
                    <td ><input type="date" style="width: 100%;"/></td>
                    <td><button>��</button></td>

                    <td colspan="5" style="width: 80px;">�԰�â��</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td ><button>��</button></td>
                                    
                    <!-- <td colspan="5" style="width: 50px;">�ŷ�ó</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td ><button>��</button></td> -->

                    <td colspan="5">
                        <input type="button" value="�԰�����" style="padding: 5px;"></input>
                    </td>
                </tr>

                <!-- <tr>
                    <td>�����</td>
                    <td style="width: 50px;"><input type="text" style="width: 100%;"/></td>
                    <td colspan="3"><input type="text" name="" disabled style="width: 100%;"/></td>
                    <td><button>��</button></td>

                    <td colspan="5" style="width: 50px;">��������</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td ><button>��</button></td>
                </tr>

                <tr>
                    <td>ǰ��</td>
                    <td style="width: 50px;"><input type="text" style="width: 100%;"/></td>
                    <td colspan="3"><input type="text" name="" disabled style="width: 100%;"/></td>
                    <td><button>��</button></td>

                    <td colspan="5" style="width: 50px;">�԰��ȣ</td>
                    <td style="width: 80px;"><input type="text" style="width: 100%;"/></td>
                    <td><input type="text" name="" disabled/></td>
                    <td ><button>��</button></td>

                    
                </tr> -->
                
            </table>
            <ul class="tabs" style="left: 0px; bottom: 0px; position: absolute;">
                <li class="tab-link current" data-tab="tab-1">�����԰�</li>
                <li class="tab-link" data-tab="tab-2">�����԰�</li>
            </ul>
            
        </container1>
        <container2 id="contents2">
            <table id="view1">
                <thead>
                    <td><input type="checkbox" name="content" onclick="selectAll(this)"/></td>
                    <td>�԰��ȣ</td>                  
                    <td>�԰�����</td>
                    <td>�ŷ�ó</td>
                    <td>����</td>
                    <td>�����</td>
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
                    <td><input type="checkbox" name="content2" onclick="selectAll2(this)"/></td>
                    <td>ǰ ��</td>
                    <td>ǰ ��</td>
                    <td>�� ��</td>
                    <td>���ּ���</td>
                    <td>�ܰ�</td>
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