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
                            <input type="date" name="department" style="width: 120px;">
                        </td>
                        
                    </tr>
                </table>
                </form>
                <div id="button">
                    <input type="button" value="BOM ����" style="padding: 5px; margin-left: 40px;"></input>
                    
                    <input type="button" value="�ϰ����纯��" style="padding: 5px;"></input>
                </div>
                
        </container1>
        
      <script>
      function openWindowPop(url, name){
          var options = 'top=0, left=0, width=320, height=420, status=no, menubar=no, toolbar=no, resizable=no';
          window.open(url, name, options);
      }
      
      function search1(){
    	  
    	      	openWindowPop('http://localhost:8090/webERP/member/codehelper.do','codehelper');

    	  
      }
      	
      </script>
</body>
</html>