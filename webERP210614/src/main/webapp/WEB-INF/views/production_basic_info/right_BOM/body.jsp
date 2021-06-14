<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"    
    isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    

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
            /* position: absolute; ĭ ���߶� ����*/
            top: 25%;
            left: 5%;
        }
        #searchForm {
            height: 100%;
            margin: 25px 10px;
        }
        /* �����̳� ��Ÿ�Ϻ� */
        #workOrderInfo {
            overflow: scroll;
            height: 97%;
            width: 100%;
        }
        #workOrderTable{
            width: 100%;

        }
        /* �հ� ��º� */
        #resultWindow{
            height: 3%;
            background-color: gray;
            line-height: 5%;
        }
        #button{
            position: absolute;
            right: 10px;
            top: 10px;
        }
</style>
</head>
<body>
<container1 id = contents1>
            <form id="searchForm">
                <table>
                    <tr>
                        <td>
                            ��ǰ��
                        </td>
                        <Td>
                            <input type="text" name="factory" value='${param.itemNumber }' style="width: 120px; background-color: yellow;">
                        </Td>
                        <td>
                            <a href="javascript:search1()"><i class="fas fa-search" style="color: blue;"></i></a>
                        </td>
                        <td>
                            <input type="text" name="ckfactory" value='${param.itemName }' style="width: 120px;" disabled>
                        </td>
                        <!-- ��ǰ�� �԰� -->
                        <td>
                            <input type="text" style="width: 150px; background-color: skyblue;" disabled>
                        </td>
                        <!-- ��ǰ�� ���� -->
                        <td>
                            <input type="text" style="width: 120px; background-color: skyblue;" disabled>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ��������
                        </td>
                        <td colspan="2">
                            <input type="date" name="department" style="width: 120px;"><a href="#" onclick="showPopup();"></a>
                        </td>
                        
                    </tr>
                </table>
                </form>
                <div id="button">
                    <input type="button" value="BOM ����" style="padding: 5px; margin-left: 40px;"></input>
                    
                    <input type="button" value="�ϰ����纯��" style="padding: 5px;"></input>
                </div>
                
        </container1>
        <container2 id= contents2>
            <div id="workOrderInfo">
                <table id="workOrderTable">
                    <thead align="center" style="font-weight:bold; background-color:gray;">
                        <td>����</td>
                        <td>ǰ���ڵ�</td>
                        <td>ǰ��</td>
                        <td>�԰�</td>
                        <td>����</td>
                        <td>����</td>
                        <td>���̼���</td>
                        <td>LOSS(%)</td>
                        <td>�ʿ����</td>
                        <td>��������</td>
                        <td>���ִܰ�</td>
                        <td>��������</td>
                        <td>��������</td>
                    </thead>
                    <!-- �׽�Ʈ�� ������, ���� ǥ�������� �����ʿ� -->
                    <c:forEach var="bom" items="${bomView}">  
                    <tbody align="center">
                        <td>${bom.no }</td>
                        
                        <td>${bom.itemNumber}</td>
                        <td><button id="item" onclick="childSearch(this)">${bom.itemName}</button></td>
                        <td>${bom.standard}</td>
                        <td>${bom.unit }</td>
                        <td>${bom.division }</td>
                        <td>${bom.precisionQuantity }</td>
                        <td>${bom.loss }</td>
                        <td>${bom.precisionQuantity+(bom.precisionQuantity * (bom.loss * 0.01)) }</td>
                        <td>${bom.actualCost }</td>
                        <td>${bom.outSourcingUnitPrice }</td>
                        <td>${bom.startDate }</td>
                        <td>${bom.endDate }</td>
                    </tbody>
                    	
                    </c:forEach>
                </table>
            </div>
            <!-- �հ� ��º� -->
            <div id="resultWindow">
                �� �� <span style="margin-left: 100px;">���̼��� <input type="text"></span><span style="margin-left: 100px;">�ʿ���� <input type="text"></span>
            </div>
            <!-- �հ� ��º� ���� -->
        </container2>
      <script>
      function openWindowPop(url, name){
          var options = 'top=0, left=0, width=320, height=420, status=no, menubar=no, toolbar=no, resizable=no';
          window.open(url, name, options);
      }
      
      function search1(){
    	  
    	      	openWindowPop('http://localhost:8090/webERP/member/codehelper.do','codehelper');

    	  
      }
      view_button.onclick = function(){
		  const URLSearch = new URLSearchParams(location.search);
		  URLSearch.set('submit', '1');
		  const newParam = URLSearch.toString();

		  window.open(location.pathname + '?' + newParam, '_self');
 	}
      function childSearch(name){
    	 /*  var no = "";
    	  var arr = [];
    	  var item = document.getElementById("item").length;
    	  const URLSearch = new URLSearchParams(location.search);
		  URLSearch.set('submit', '2');
		  const newParam = URLSearch.toString(); 
    	  no = name.innerText;
    	  arr.push(no);
    	  for(var i=0; i<item;i++){
    		  if(document.getElementsByName("content")[i].checked==true){
    			  no = document.getElementsByName("content")[i].value;
    			  ary.push(no);
    		  }
    		  
    			  window.location.href = "${contextPath}/member/delBOM.do?no="+ary;
    	  }
    	  window.location.href=location.pathname + "?" + newParam + "&&no=" arr; */
      }
      </script>
</body>
</html>