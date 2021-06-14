<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"    
    isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>    
<%
	String inputNo = (String)request.getAttribute("inputNo");
	
%>
<% String parent = request.getParameter("itemNumber"); %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <c:forEach var="bom" items="${bomInsert}" >     
 	<c:set var="itemNumber" value="${bom.itemNumber }"/>
 	<c:set var="itemName" value="${bom.itemName }"/>
 	<c:set var="standard" value="${bom.standard }"/>
 	<c:set var="unit" value="${bom.unit }"/>
 	<c:set var="division" value="${bom.division }"/>
 </c:forEach>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
		
        #contents2{
            position: absolute;
            left: 15%;
            top: 25%;
            width: 85%;
            height: 70%;
            border: 1px solid black;
            z-index: 1;
        }
        
        /* �����̳� ��Ÿ�Ϻ� */
        #workOrderInfo {
            overflow: scroll;
            height: 97%;
            width: 100%;
        }
        #workOrderTable{
       		width:100%;
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
		input {
			text-align : center;
		}

</style>
</head>
<body>
<form id="regBOM" method="get" commandName = "ListVO">
        <container2 id= contents2>
            <div id="workOrderInfo">
                <table id="workOrderTable">
                    <thead align="center" style="background-color:gray">
                        <td><input type="checkbox" name="content" onclick="selectAll(this)"/></td>
                        <td style="width:10px;">No</td>
                        <td>��ǰ���ڵ�</td>
                        <td>ǰ���ڵ�</td>
                        <td>ǰ��</td>
                        <td>�԰�</td>
                        <td>����</td>
                        <td>���̼���</td>
                        <td>LOSS(%)</td>
                        <<td>�ʿ����</td>
                        <td>����</td>
                        <td>���ִܰ�</td>
                        <td>��������</td>
                        <td>��������</td>
                        <td>����</td>
                    </thead>
                    <!-- �׽�Ʈ�� ������, ���� ǥ�������� �����ʿ� -->
         <c:forEach var="bom" items="${bomView}" varStatus="status" >     
   <tr id= "updateTest" align="center">
   	  <td><input type="checkbox" name="content" value="${bom.no }"/></td>
   	  <td style="width:13px;"><input type="text" name="ListVO[${status.index}].no" value = '${bom.no }' readonly style="width:100%"/></td>
   	  <td><input type="text" name="ListVO[${status.index}].parent" value = '${bom.parent}' readonly/></td>
   	  <td><input type="text" name="ListVO[${status.index}].itemNumber" value = '${bom.itemNumber}' ondblclick="search2()"/></td>
   	  <td><input type="text" name="ListVO[${status.index}].itemName" value = '${bom.itemName}' readonly/></td>
   	  <td><input type="text" name="ListVO[${status.index}].standard" value = '${bom.standard }' readonly/></td>
   	  <td><input type="text" name="ListVO[${status.index}].unit" value = '${bom.unit }' readonly/></td>
   	  <td><input type="text" name="ListVO[${status.index}].precisionQuantity" value = '${bom.precisionQuantity }'/></td>
   	  <td><input type="text" name="ListVO[${status.index}].loss" value = '${bom.loss }'/></td>
   	  <td><input type="text" value = '${bom.precisionQuantity+(bom.precisionQuantity * (bom.loss * 0.01)) }' readonly/></td>
   	  <td><input type="text" name="ListVO[${status.index}].actualCost" value = '${bom.actualCost }'/></td>
   	  <td><input type="text" name="ListVO[${status.index}].outSourcingUnitPrice" value = '${bom.outSourcingUnitPrice }'/></td>
   	  <td><input type="date" name="ListVO[${status.index}].startDate" value = '${bom.startDate }'/></td>
   	  <td><input type="date" name="ListVO[${status.index}].endDate" value = '${bom.endDate }'/></td>
   	  <td><input type="text" name="ListVO[${status.index}].division" value = '${bom.division }'/>   </td>
    </tr>
    </c:forEach> 

    <tr id ="insertTest" align="center">
    <td></td>
    	<td><input type="text" id="no" name="ListVO[${fn:length(bomView) }].no" value='${inputNo }' readonly style="width:100%"/></td>
    	<td><input type="text" id="parent" name="ListVO[${fn:length(bomView) }].parent" value = '${param.itemNumber }' readonly /></td>
    	<td><input type="text" id="itemNumber" name="ListVO[${fn:length(bomView) }].itemNumber" value='${itemNumber }' ondblclick="search2()"/></td>
    	<td><input type="text" id="itemName" name="ListVO[${fn:length(bomView) }].itemName" value='${itemName }' readonly/></td>
    	<td><input type="text" id="standard" name="ListVO[${fn:length(bomView) }].standard" value='${standard }' readonly/></td>
    	<td><input type="text" id="unit" name="ListVO[${fn:length(bomView) }].unit" value='${unit }' readonly/></td>
    	<td><input type="text" id="precisionQuantity" name="ListVO[${fn:length(bomView) }].precisionQuantity" /></td>
    	<td><input type="text" id="loss" name="ListVO[${fn:length(bomView) }].loss" /></td>
    	<td><input type="text" readonly id="actualQuantity"/></td>
    	<td><input type="text" id="actualCost" name="ListVO[${fn:length(bomView) }].actualCost" /></td>
    	<td><input type="text" id="outSourcingUnitPrice" name="ListVO[${fn:length(bomView) }].outSourcingUnitPrice"/></td>
    	<td><input type="date" id="startDate" name="ListVO[${fn:length(bomView) }].startDate"/></td>
    	<td><input type="date" id="endDate" name="ListVO[${fn:length(bomView) }].endDate"/></td>
    	<td><input type="text" id="division" name="ListVO[${fn:length(bomView) }].division" value='${division }'/></td>
    </tr>
                </table>
                 
            </div>
            <!-- �հ� ��º� -->
            <div id="resultWindow">
                �� �� <span style="margin-left: 100px;">���̼��� <input type="text"></span><span style="margin-left: 100px;">�ʿ���� <input type="text"></span>
            </div>
            <!-- �հ� ��º� ���� -->
        </container2>
      <script>
      var itemNumber = document.getElementById("itemCode");

      
      var precisionQuantity = document.getElementById("precisionQuantity");
      var loss = document.getElementById("loss");
      var outSourcingUnitPrice = document.getElementById("outSourcingUnitPrice");
      var startDate = document.getElementById("startDate");
      var endDate = document.getElementById("endDate");
     	  var actualQuantity = document.getElementById('actualQuantity');

      var save_button = document.getElementById("save");
      var update_button = document.getElementById('update');
      var actualCost = document.getElementById('actualCost');
      actualQuantity.onfocus = function(){
    	  var loss = document.getElementById('loss');
    	  var precisionQuantity = document.getElementById('precisionQuantity');
    	  var preQuan = parseFloat(precisionQuantity.value);
    	  var lossInt = parseFloat(loss.value);
    	  actualQuantity.value = preQuan + (preQuan * (lossInt/100));
    	  console.log(precisionQuantity.value);
    	  console.log(actualQuantity.value);
      }
      function search2(){
    	
      	openWindowPop('http://localhost:8090/webERP/member/bomcodehelper.do','codehelper');
    	 
      }
      function setChildValue(name){
    	  
    	  const URLSearch = new URLSearchParams(location.search);
		  URLSearch.set('submit', '2');
		  const newParam = URLSearch.toString();
        if(URLSearch.get('itemCode') == null){
		window.location.href = location.pathname +'?'+newParam + '&itemCode=' + name;
        }
        else{
        	URLSearch.set('itemCode', name);
        	const newParam = URLSearch.toString();
        	window.location.href = location.pathname +'?'+newParam;
        }
        
    }
      
      function updateRow(){
    	  var workOrderTable = document.getElementById('workOrderTable');
          var row = workOrderTable.insertRow(); 
          const URLSearch = new URLSearchParams(location.search);
          URLSearch.set('submit', '1');
		  const newParam = URLSearch.toString();
		 var link = location.pathname +'?'+newParam;
  			 document.getElementById("precisionQuantity").disabled = true;
  		     document.getElementById("loss").disabled = true;
  		     document.getElementById("outSourcingUnitPrice").disabled = true;
  		     document.getElementById("actualCost").disabled = true;
  		     document.getElementById("no").disabled = true;
  		     document.getElementById("startDate").disabled = true;
  		     document.getElementById("endDate").disabled = true;
  		   var articleNOInput = document.createElement("input");
		     articleNOInput.setAttribute("type","hidden");
		     articleNOInput.setAttribute("name","path");
		     articleNOInput.setAttribute("value", link);
		     document.getElementById('regBOM').appendChild(articleNOInput);
           document.getElementById('regBOM').action = "${contextPath}/member/updateBOM.do";
  			document.getElementById('regBOM').submit();  
      }
      
      
      function newRow(){
          // dao���� ����
    	 
          var row = workOrderTable.insertRow(); 
          const URLSearch = new URLSearchParams(location.search);
		  URLSearch.set('submit', '1');
		  const newParam = URLSearch.toString();
		 var link = location.pathname +'?'+newParam;
  			var articleNOInput = document.createElement("input");
  		     articleNOInput.setAttribute("type","hidden");
  		     articleNOInput.setAttribute("name","path");
  		     articleNOInput.setAttribute("value", link);
  		     document.getElementById('regBOM').appendChild(articleNOInput);
            document.getElementById('regBOM').action = "${contextPath}/member/addBOM.do";
  			document.getElementById('regBOM').submit();  
		
      }

      
     function deleteData() {
    	  var item = document.getElementsByName("content").length;
    	  var no = "";
    	  var ary = [];
    	  for(var i=0; i<item;i++){
    		  if(document.getElementsByName("content")[i].checked==true){
    			  no = document.getElementsByName("content")[i].value;
    			  ary.push(no);
    		  }
    		  
    			  window.location.href = "${contextPath}/member/delBOM.do?no="+ary;
    	  }
      }
     view_button.onclick = function(){
		  const URLSearch = new URLSearchParams(location.search);
		  URLSearch.set('submit', '1');
		  const newParam = URLSearch.toString();

		  window.open(location.pathname + '?' + newParam, '_self');
 	}
      </script>
      </form>
</body>
</html>