<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% response.setHeader("Pragma", "No-cache");
response.setDateHeader("Expires", 0);
response.setHeader("Cache-Control", "no-cache");%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested" %>

<html:html>
<HEAD><TITLE><bean:message key="page.index.title"/></TITLE>
<LINK href="<html:rewrite page="/js/styleHeader.css"/>" type=text/css rel=stylesheet>
</HEAD>
<BODY leftMargin=0 topMargin=0 rightMargin=0 marginwidth="0" marginheight="0">

<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0 valign="top">
  <!-- header start -->
  <tiles:insert template='/common/header.jsp'/>
  <!-- header end -->
  
  <tr valign="top"><td>
    
<!-- content -->    
      <TABLE height=50 cellSpacing=1 cellPadding=1 border=0 width="100%" valign="top"><BR><BR>
        <TR>
          <TD align=middle width="80%">
            <TABLE cellSpacing=0 cellPadding=0 width="92%" border=0>
              <TR>
                <TD width=9 height=25><html:img page="/images/left_title.gif"/></TD>
                <TD class=title width="100%" background=<html:rewrite page="/images/bg_title.gif"/> height=25><bean:message key="page.purchaseRequestTitle.title"/></TD></TR>
            </TABLE>
          </TD>
        </TR>
        <TR>
          <TD align=middle width="80%" height=10>&nbsp;</TD></TR>
        <TR>
          <TD align=middle width="80%">
			
			<!-- CONTENT START -->
	      <table width="97%" border="0" cellspacing="2" cellpadding="0">
	      	<tr valign="top"><td><html:errors/></td></tr>
    			<tr valign="top"><td>&nbsp;</td></tr>
    			<html:form action="/purchaseRequest/save">
					<html:hidden property="purchaseRequestId"/>
					<html:hidden property="createBy"/>
					<html:hidden property="changeBy"/>
					<html:hidden property="createOn"/>
					<html:hidden property="changeOn"/>
					<html:hidden property="subaction"/>
					<html:hidden property="purchaseRequestDetailCurrencyId"/>
          <tr>
            <td align="center"> 
              <table width="100%" border="0" cellspacing="1" cellpadding="0" class=abuabu>
              	<tr valign="top">
              		<td width="45%" valign="top">
              			<table width="100%" border="0" cellspacing="1" cellpadding="0" class=abuabu>
	              			<logic:present name="locationLst">
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.location.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%">
			                  	<html:select property="locationId">
														<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
														<html:options collection="locationLst" property="id" labelProperty="name" />
			                  	</html:select>
			                  </td>
			                </tr>
			                </logic:present>
			                <logic:equal name="purchaseRequestForm" property="purchaseRequestId" value="0">
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.number.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="number" size="20"/></td>
			                </tr>
			                </logic:equal>
			                <logic:greaterThan name="purchaseRequestForm" property="purchaseRequestId" value="0">
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.number.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="number" readonly="true" size="20"/></td>
			                </tr>
			                </logic:greaterThan>
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.requestDate.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="requestDate" size="12"/>&nbsp;(dd/MM/yyyy)</td>
			                </tr>
											<logic:present name="departmentLst">
											<tr> 
			                  <td width="30%" align="right"><bean:message key="page.department.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%">
			                  	<html:select property="departmentId">
														<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
														<html:options collection="departmentLst" property="id" labelProperty="name" />
			                  	</html:select>
			                  </td>
			                </tr>
			                </logic:present>
			                <logic:present name="projectLst">
											<tr> 
			                  <td width="30%" align="right"><bean:message key="page.project.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%">
			                  	<html:select property="projectId">
														<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
														<html:options collection="projectLst" property="id" labelProperty="name" />
			                  	</html:select>
			                  </td>
			                </tr>
			                </logic:present>
			                <logic:present name="vendorLst">
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.vendor.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%">
			                  	<html:select property="vendorId">
														<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
														<html:options collection="vendorLst" property="id" labelProperty="company" />
			                  	</html:select>
			                  </td>
			                </tr>
			                </logic:present>
			                <!--
			                <logic:present name="projectLst">
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.project.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%">
			                  	<html:select property="projectId">
														<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
														<html:options collection="projectLst" property="id" labelProperty="name" />
			                  	</html:select>
			                  	<bean:message key="page.other.title"/>&nbsp;:&nbsp;<html:text property="projectName" size="35"/>
			                  </td>
			                </tr>
			                </logic:present>
			                -->
			                <logic:present name="currencyLst">
											<tr> 
			                  <td width="30%" align="right"><bean:message key="page.currency.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%">
			                  	<html:select property="currencyId">
														<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
														<html:options collection="currencyLst" property="id" labelProperty="name" />
			                  	</html:select>
			                  </td>
			                </tr>
			                </logic:present>
			              </table>
              		</td>
              		<td width="10%">&nbsp;</td>
              		<td width="45%" valign="top">
              			<table width="100%" border="0" cellspacing="1" cellpadding="0" class=abuabu>
	              			<!--
	              			<logic:present name="taxLst">
											<tr> 
			                  <td width="30%" align="right"><bean:message key="page.tax.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%">
			                  	<html:select property="taxId">
			                  		<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
														<html:options collection="taxLst" property="id" labelProperty="name" />
			                  	</html:select>
			                  </td>
			                </tr>
			                </logic:present>
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.discount.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="discountProcent" size="5"/>%</td>
			                </tr>
			                -->
			                <!--
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.prepaymentAmount.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="prepaymentAmount" size="20"/></td>
			                </tr>
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.creditLimit.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="creditLimit" size="3"/>&nbsp;<bean:message key="page.day.title"/></td>
			                </tr>
			                -->
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.description.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:textarea property="description" cols="50" rows="4"/></td>
			                </tr>
			              </table>
              		</td>
              	</tr>
              	

                

              </table>
            </td>
          </tr>
          <tr>
          	<td>&nbsp;</td>
          </tr>
          <tr>
    				<td>
    					<table width="100%">
    						<tr bgcolor="#FFFFFF"> 
			            <td align="center"> 
			              <table border="0" cellspacing=1 cellpadding=0 bgcolor="#cccccc" width="100%">
			                <tr align="center"> 
			                  <td width="5%" class=titleField>&nbsp;</td>
			                  <td class=titleField><bean:message key="page.item.title"/></td>
			                  <!--
			                  <td class=titleField><bean:message key="page.price.title"/></td>
			                  -->
			                  <td class=titleField><bean:message key="page.quantity.title"/></td>
			                  <!--
			                  <td class=titleField><bean:message key="page.price.title"/>x<bean:message key="page.quantity.title"/></td>
			                  -->
			                  <td class=titleField><bean:message key="page.description.title"/></td>
			                  <td width="10%" class=titleField>&nbsp;</td>
			                </tr>
			<%
			int i = 0;
			try {
			i = Integer.parseInt(request.getParameter("start"));
			}catch(Exception ex){
			i = 0;
			}
			%>
											<logic:present name="purchaseRequestDetailLst">
			                <logic:iterate id="purchaseRequestDetail" name="purchaseRequestDetailLst" type="com.mpe.financial.model.PurchaseRequestDetail">
			                <tr bgcolor="#FFFFFF" align=center>
			                	<td><%=++i%>.</td>
												<td>
													<logic:present name="purchaseRequestDetail" property="id.item">
													<bean:write name="purchaseRequestDetail" property="id.item.code" scope="page"/>&nbsp;
													<bean:write name="purchaseRequestDetail" property="id.item.name" scope="page"/>
													</logic:present>
												</td>
												<!--
												<td align="right"><bean:write name="purchaseRequestDetail" property="formatedPrice" scope="page"/>
												-->
												</td>
												<td><bean:write name="purchaseRequestDetail" property="quantity" scope="page"/>&nbsp;
													<logic:present name="purchaseRequestDetail" property="itemUnit">
													<bean:write name="purchaseRequestDetail" property="itemUnit.name" scope="page"/>
													</logic:present>
												</td>
												<!--
												<td align="right"><bean:write name="purchaseRequestDetail" property="formatedPriceQuantity" scope="page"/>
												<!--
													<logic:present name="purchaseRequestDetail" property="currency">
													<bean:write name="purchaseRequestDetail" property="currency.name" scope="page"/>
													</logic:present>
													-->
												</td>
												<td><bean:write name="purchaseRequestDetail" property="description" scope="page"/></td>
			                  <td align="center">
													<a href="<html:rewrite page="/purchaseRequest/form.do"/>?purchaseRequestId=<bean:write name="purchaseRequestForm" property="purchaseRequestId"/>&itemId=<bean:write name="purchaseRequestDetail" property="id.item.id"/>"><html:img page="/images/edit.gif" border="0" alt="Edit"/></a>&nbsp;
			                  	<a href="<html:rewrite page="/purchaseRequest/form.do"/>?purchaseRequestId=<bean:write name="purchaseRequestForm" property="purchaseRequestId"/>&itemId=<bean:write name="purchaseRequestDetail" property="id.item.id"/>&subaction=REMOVEPURCHASEORDERDETAIL&caller=/purchaseRequest/form.do"><html:img page="/images/trash.gif" border="0" alt="Remove"/></a>
			                  </td>
			                </tr>
			                </logic:iterate>
			                </logic:present>
			                <!--
			                <tr bgcolor="#FFFFFF">
			                	<td colspan="4"><b><bean:message key="page.total.title"/></b></td>
			                	<td align="right"><b><bean:write name="purchaseRequestDetailAmount"/></b></td>
			                	<td colspan="2">&nbsp;</td>
			                </tr>
			                <tr bgcolor="#FFFFFF">
			                	<td colspan="4"><b><bean:message key="page.discount.title"/>&nbsp;<logic:present name="purchaseRequest">(<bean:write name="purchaseRequest" property="discountProcent"/>%)</logic:present></b></td>
			                	<td align="right"><b><bean:write name="amountDiscount"/></b></td>
			                	<td colspan="2">&nbsp;</td>
			                </tr>
			                <tr bgcolor="#FFFFFF">
			                	<td colspan="4"><b><bean:message key="page.subtotal.title"/></b></td>
			                	<td align="right"><b><bean:write name="amountAfterDiscount"/></b></td>
			                	<td colspan="2">&nbsp;</td>
			                </tr>
			                <tr bgcolor="#FFFFFF">
			                	<td colspan="4"><b><bean:message key="page.tax.title"/>&nbsp;<logic:present name="purchaseRequest">(<bean:write name="purchaseRequest" property="taxAmount"/>%)</logic:present></b></td>
			                	<td align="right"><b><bean:write name="amountTax"/></b></td>
			                	<td colspan="2">&nbsp;</td>
			                </tr>
			                -->
			                <!--
			                <tr bgcolor="#FFFFFF">
			                	<td colspan="4"><b><bean:message key="page.total.title"/></b></td>
			                	<td align="right"><b><bean:write name="amountAfterTaxAndDiscount"/></b></td>
			                	<td colspan="2">&nbsp;</td>
			                </tr>
			                -->
			                <tr>
			                	<td align="right">
			                		<a href="#" onclick="window.open('<html:rewrite page="/item/popUp.do"/>','gg','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=yes,width=400,height=500');">
			                		<html:img page="/images/popup.gif" alt="POP-UP" border="0"/>
			                		</a>
			                	</td>
			                	<td>
			                		<html:hidden property="itemId"/>
			                		<html:text property="itemCode" size="15" onchange="this.form.subaction.value='refresh';this.form.submit();"/>
			                	</td>
			                	<!--
			                	<td><html:text property="price" size="15"/></td>
			                	-->
			                	<td><html:text property="quantity" size="10"/>&nbsp;
			                		<logic:present name="itemUnitLst">
			                		<html:select property="itemUnitId">
														<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
														<html:options collection="itemUnitLst" property="id" labelProperty="name" />
			                  	</html:select>
			                  	</logic:present>
			                	</td>
			                	<!--
			                	<td>&nbsp;</td>
			                	-->
			                	<td><html:text property="itemDescription" size="30"/></td>
			                	<td><html:submit styleClass="button" onclick="this.form.subaction.value='ADDPURCHASEORDERDETAIL'">ADD</html:submit></td>
			                </tr>
			                
			              </table>
			            </td>
			          </tr>
    					</table>
    				</td>
    			</tr>
          <tr>
    				<td>
    					<table width="100%">
    						<tr valign="top"><td>&nbsp;</td></tr>
    					</table>
    				</td>
    			</tr>
    			<tr>
    				<td align="center">
							<html:submit styleClass="button" onclick="this.form.subaction.value='SAVEALL'"><bean:message key="page.submit.link"/></html:submit>
							<html:cancel styleClass="button" onclick="this.form.subaction.value='';bCancel=true;"><bean:message key="page.cancel.link"/></html:cancel>
    				</td>
    			</tr>
          </html:form>
        </table> 
			<!-- CONTENT END -->
          </TD>
        </TR>
      </TABLE>
                    
      </TD>
    </TR>
  <!-- footer start -->
  <tiles:insert template='/common/footer.jsp'/>
  <!-- footer end -->
 </TABLE>
</BODY>
</html:html>


<script language="javascript">

function selectAll(col1){
	col1 = eval('document.forms[0].'+col1);
  for(i=0; i<col1.options.length; i++ ){
		col1.options[i].selected = true;
	}
}

function up(col1){
	col1 = eval('document.forms[0].'+col1);
  index = col1.selectedIndex;
  //alert(index);
  if (index == -1) {
  	alert ('You haven\'t selected any options!');
  } else {
	  if(index <= 0) {
	  	alert("Can't move to up!");
	  } else {
		  toMoveX = col1.options[index-1];
		  toMoveY = col1.options[index];
		  optX = new Option(toMoveX.text,toMoveX.value,false,false);
		  optY = new Option(toMoveY.text,toMoveY.value,false,false);
		  col1.options[index] = optX;
		  col1.options[index-1] = optY;
		  col1.selectedIndex = index-1;
		}
	}
}

function down(col1){
	col1 = eval('document.forms[0].'+col1);
  index = col1.selectedIndex;
  if (index == -1) {
  	alert ('You haven\'t selected any options!');
  } else {
	  if(index+1 >=  col1.options.length) {
	  	alert("Can't move to down!");
	 	} else {
		  toMoveX = col1.options[index];
		  toMoveY = col1.options[index+1];
		  optX = new Option(toMoveX.text,toMoveX.value,false,false);
		  optY = new Option(toMoveY.text,toMoveY.value,false,false);
		  col1.options[index] = optY;
		  col1.options[index+1] = optX;
		  col1.selectedIndex = index+1;
		}
	}
}

function copyToList(from,to) {
  fromList = eval('document.forms[0].' + from);
  toList = eval('document.forms[0].' + to);
  if (toList.options.length > 0 && toList.options[0].value == 'temp') {
    toList.options.length = 0;
  }
  var sel = false;
  for (i=0;i<fromList.options.length;i++) {
    var current = fromList.options[i];
    if (current.selected) {
      sel = true;
      if (current.value == 'temp') {
        alert ('You cannot move this text!');
        return;
      }
      txt = current.text;
      val = current.value;
      toList.options[toList.length] = new Option(txt,val);
      fromList.options[i] = null;
      i--;
    }
  }
  if (!sel) alert ('You haven\'t selected any options!');
}

function page_submit() {
	document.forms[0].submit();
};
</script>