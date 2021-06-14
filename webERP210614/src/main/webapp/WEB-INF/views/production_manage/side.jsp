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
            top: 15%;
            height: 77%;
            width: 14.9%;
            background-color: #f5f5f5;
            z-index: 3;
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
                    <li><a href="#"  id="side1">�������</a>
                        <ul id="l_sub1">
                            <li><a href="http://localhost:8090/webERP/member/proplanreg.do">�����ȹ���</a></li>
                            <li><a href="http://localhost:8090/webERP/member/regoperins.do">�۾����õ��</a></li>
                            <li><a href="http://localhost:8090/webERP/member/comoperins.do">�۾�����Ȯ��</a></li>
                            <li><a href="http://localhost:8090/webERP/member/prometfor.do">�����������</a></li>
                            <li><a href="http://localhost:8090/webERP/member/regoperperf.do">�۾��������</a></li>
                            <li><a href="http://localhost:8090/webERP/member/operinsclo.do">�۾����ø���ó��</a></li>
                        </ul></li>
                    <li><a href="#" id="side2">���ְ���</a>
                        <ul id="l_sub2">
                            <li><a href="http://localhost:8090/webERP/member/regoutsourcing.do">���ֹ��ֵ��</a></li>
                            <li><a href="http://localhost:8090/webERP/member/comoutsourcing.do">���ֹ���Ȯ��</a></li>
                            <li><a href="http://localhost:8090/webERP/member/outrelease.do">�����������</a></li>
                            <li><a href="http://localhost:8090/webERP/member/regoutper.do">���ֽ������</a></li>
                            <li><a href="http://localhost:8090/webERP/member/outclosing.do">���ָ���</a></li>
                        </ul></li>
                    <li><a href="#" id="side3">������������</a>
                        <ul id="l_sub3">
                            <li><a href="http://localhost:8090/webERP/member/regbom.do">BOM���</a></li>
                            <li><a href="http://localhost:8090/webERP/member/rightbom.do">BOM������</a></li>
                            <li><a href="http://localhost:8090/webERP/member/reservebom.do">BOM������</a></li>
                            <li><a href="http://localhost:8090/webERP/member/outprice.do">���ִܰ����</a></li>
                            <li><a href="http://localhost:8090/webERP/member/deftype.do">�ҷ��������</a></li>
                        </ul></li>
                </ul>
            </div>
        </aside>
        <script>
        var side_button1 = document.getElementById('side1');
        var side_button2 = document.getElementById('side2');
        var side_button3 = document.getElementById('side3');
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
        </script>
</body>
</html>