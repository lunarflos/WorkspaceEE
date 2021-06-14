<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	#sidemenu{
			margin-top:2%;
            position: absolute;
            top: 14.2%;
            height: 80.8%;
            width: 15%;
            border: 1px solid black;
        }
         #s_nav #lnb li{
            list-style: none;
        }
        #s_nav #lnb li #side1,#side2,#side3,#side4{
        	
            display: block;
            border: 1px solid #cccccc;
            background-color: #f5f5f5;
        }
        #s_nav #lnb #l_sub1,#l_sub2,#l_sub3,#l_sub4{
            border-style: none;
            display: none;
            
        }
</style>
</head>
<body>
<aside id = sidemenu>
            <div id="s_nav">
                <ul id="lnb">
                    <li><a href="#"  id="side1">���Ű���</a>
                        <ul id="l_sub1">
                            <li><a href="http://localhost:8090/webERP/member/mainplan.do#">�ְ�ȹ�ۼ�</a></li>
                            <li><a href="http://localhost:8090/webERP/member/requiredamount.do#">�ҿ䷮����</a></li>
                            <li><a href="http://localhost:8090/webERP/member/regbilling.do#">û�����</a></li>
                            <li><a href="http://localhost:8090/webERP/member/regordering.do#">���ֵ��</a></li>
                            <li><a href="http://localhost:8090/webERP/member/regreceivereq.do#">�԰��Ƿڵ��</a></li>
                            <li><a href="http://localhost:8090/webERP/member/regreceiveins.do#">�԰�˻���</a></li>
                            <li><a href="http://localhost:8090/webERP/member/receiveprocess.do#">�԰�ó��</a></li>
                            <li><a href="http://localhost:8090/webERP/member/orderclosing.do#">���ָ���ó��</a></li>
                            <li><a href="http://localhost:8090/webERP/member/purchaseclosing.do#">���Ը���</a></li>
                        </ul></li>
                    <li><a href="#" id="side2">������</a>
                        <ul id="l_sub2">
                            <li><a href="http://localhost:8090/webERP/member/moveware.do#">����̵����(â��)</a></li>
                            <li><a href="http://localhost:8090/webERP/member/movebusiness.do#">����̵����(�����)</a></li>
                            <li><a href="http://localhost:8090/webERP/member/baseinventory.do#">�������/����������</a></li>
                            <li><a href="http://localhost:8090/webERP/member/baseinventorystat.do#">�������/���������Ȳ</a></li>
                            <li><a href="http://localhost:8090/webERP/member/supplyadj.do#">SETǰ�����������</a></li>
                            <li><a href="http://localhost:8090/webERP/member/supplyadjstat.do#">SETǰ����������Ȳ</a></li>
                        </ul></li>
                    <li><a href="#" id="side3">��������Ȳ</a>
                        <ul id="l_sub3">
                            <li><a href="http://localhost:8090/webERP/member/curinvenstat.do#">�������Ȳ</a></li>
                            <li><a href="http://localhost:8090/webERP/member/supplystat.do#">��������Ȳ(����,������)</a></li>
                            <li><a href="http://localhost:8090/webERP/member/lotbusiness.do#">�����(LOT)��Ȳ(����,�����)</a></li>
                            <li><a href="http://localhost:8090/webERP/member/lotware.do#">�����(LOT)��Ȳ(â��,���)</a></li>
                        </ul></li>
                    <li><a href="#" id="side4">������������</a>
                        <ul id="l_sub4">
                            <li><a href="http://localhost:8090/webERP/member/itemunitprice.do#">ǰ��ܰ����</a></li>
                        </ul></li>
                </ul>
            </div>
        </aside>
        <script>
        var side_button1 = document.getElementById('side1');
        var side_button2 = document.getElementById('side2');
        var side_button3 = document.getElementById('side3');
        var side_button4 = document.getElementById('side4');
        side_button1.onclick = function(){
            var l_sub1 = document.getElementById('l_sub1');
            if(l_sub1.style.display == 'none' || l_sub1.style.display==''){
            l_sub1.style.display = "block";
            l_sub1.style.position = "relative";
            l_sub1.style.marginLeft = "10px";
            }
            else{
                l_sub1.style.display = "none";
            }
        }
        side_button2.onclick = function(){
            var l_sub2 = document.getElementById('l_sub2');
            if(l_sub2.style.display == 'none' || l_sub2.style.display==''){
            l_sub2.style.display = "block";
            l_sub2.style.position = "relative";
            l_sub2.style.marginLeft = "10px";
            }
            else{
                l_sub2.style.display = "none";
            }
        }
        side_button3.onclick = function(){
            var l_sub3 = document.getElementById('l_sub3');
            if(l_sub3.style.display == 'none' || l_sub3.style.display==''){
            l_sub3.style.display = "block";
            l_sub3.style.position = "relative";
            l_sub3.style.marginLeft = "10px";
            }
            else{
                l_sub3.style.display = "none";
            }
        }
        side_button4.onclick = function(){
            var l_sub = document.getElementById('l_sub4');
            if(l_sub4.style.display == 'none' || l_sub4.style.display==''){
            l_sub4.style.display = "block";
            l_sub4.style.position = "relative";
            l_sub4.style.marginLeft = "10px";
            }
            else{
                l_sub4.style.display = "none";
            }
        }
        
    </script>
</body>
</html>