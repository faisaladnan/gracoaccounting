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
<html:base/>
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
                <TD class=title width="100%" background=<html:rewrite page="/images/bg_title.gif"/> height=25><bean:message key="page.rekapBonKuningTitle.title"/></TD></TR>
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
    			<html:form action="/rekapBonKuning/save">
					<html:hidden property="deliveryOrderId"/>
					<html:hidden property="createBy"/>
					<html:hidden property="changeBy"/>
					<html:hidden property="createOn"/>
					<html:hidden property="changeOn"/>
					<html:hidden property="subaction"/>
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
			                <logic:equal name="deliveryOrderForm" property="deliveryOrderId" value="0">
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.number.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="number" size="20"/></td>
			                </tr>
			                </logic:equal>
			                <logic:greaterThan name="deliveryOrderForm" property="deliveryOrderId" value="0">
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.number.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="number" readonly="true" size="20"/></td>
			                </tr>
			                </logic:greaterThan>
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.deliveryDate.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="deliveryDate" size="12"/>&nbsp;(dd/MM/yyyy)</td>
			                </tr>
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.fromBonKuningDate.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="fromBonKuningDate" size="12"/>&nbsp;(dd/MM/yyyy)</td>
			                </tr>
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.toBonKuningDate.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="toBonKuningDate" size="12"/>&nbsp;(dd/MM/yyyy)</td>
			                </tr>
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.isDetail.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:checkbox property="isDetail" value="Y" onclick="this.form.subaction.value='form';this.form.submit();"/>&nbsp;Yes</td>
			                </tr>
			                <logic:present name="customerLst">
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.customer.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%">
			                  	<html:select property="customerId" onchange="this.form.subaction.value='form';this.form.submit();">
														<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
														<html:options collection="customerLst" property="id" labelProperty="company" />
			                  	</html:select>
			                  </td>
			                </tr>
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.customerAlias.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%">
			                  	<html:select property="customerAliasId">
														<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
														<html:options collection="customerAliasLst" property="id" labelProperty="company" />
			                  	</html:select>
			                  </td>
			                </tr>
			                </logic:present>
			                
			                <!--
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.discount.title"/>#1</td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="discount1" size="5"/>%</td>
			                </tr>
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.discount.title"/>#2</td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="discount2" size="5"/>%</td>
			                </tr>
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.discount.title"/>#3</td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="discount3" size="5"/>%</td>
			                </tr>
			                -->
              			</table>
              		</td>
              		<td width="10%">&nbsp;</td>
              		<td width="45%" valign="top">
              			<table width="100%" border="0" cellspacing="1" cellpadding="0" class=abuabu>
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
			                  <td width="65%"><html:text property="discount1" size="5"/>%</td>
			                </tr>
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
			                <!--
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.taxSerialNumber.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="taxSerialNumber" size="15"/></td>
			                </tr>
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.taxDate.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:text property="taxDate" size="12"/>&nbsp;(dd/MM/yyyy)</td>
			                </tr>
			                -->
			                <!--
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.reference.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:textarea property="reference" cols="40" rows="2"/></td>
			                </tr>
			                -->
			                <tr> 
			                  <td width="30%" align="right"><bean:message key="page.description.title"/></td>
			                  <td width="5%" align="center">:</td>
			                  <td width="65%"><html:textarea property="description" cols="30" rows="5"/></td>
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
         
         	<logic:notEqual name="deliveryOrderForm" property="isDetail" value="Y">
         	<tr>
    				<td>
    					<table width="100%">
    						<tr bgcolor="#FFFFFF"> 
			            <td align="center"> 
			              <table border="0" cellspacing=1 cellpadding=0 bgcolor="#cccccc" width="100%">
			                <tr align="center"> 
			                  <td width="5%" class=titleField>&nbsp;</td>
			                  <td class=titleField><bean:message key="page.date.title"/></td>
			                  <td class=titleField><bean:message key="page.bonKuning.title"/></td>
			                  <td class=titleField><bean:message key="page.kuantum.title"/></td>
			                  <td class=titleField><bean:message key="page.bruto.title"/></td>
			                  <td class=titleField><bean:message key="page.discount.title"/></td>
			                  <td class=titleField><bean:message key="page.netto.title"/></td>
			                </tr>
			<%
			int i = 0;
			try {
			i = Integer.parseInt(request.getParameter("start"));
			}catch(Exception ex){
			i = 0;
			}
			%>
											
											<logic:present name="deliveryOrderLst">
			                <logic:iterate id="deliveryOrder" name="deliveryOrderLst" type="com.mpe.financial.model.DeliveryOrder">
			                <tr bgcolor="#FFFFFF" align=center>
			                	<td><%=++i%>.</td>
												<td>
													<bean:write name="deliveryOrder" property="formatedDeliveryDate" scope="page"/>&nbsp;
												</td>
												<td><bean:write name="deliveryOrder" property="number" scope="page"/></td>
												<td><bean:write name="deliveryOrder" property="deliveryOrderDetailQuantity" scope="page"/></td>
												<td align="right"><bean:write name="deliveryOrder" property="formatedDeliveryOrderDetailBrutoAmount" scope="page"/></td>
												<td align="right"><bean:write name="deliveryOrder" property="formatedDeliveryOrderDetailDiscountAmount" scope="page"/></td>
												<td align="right"><bean:write name="deliveryOrder" property="formatedAmountAfterTaxAndDiscount" scope="page"/>
												</td>
			                </tr>
			                </logic:iterate>
			                </logic:present>
			                <tr  bgcolor="#FFFFFF">
			                	<td colspan="6"><b><bean:message key="page.total.title"/></b></td>
			                	<td align="right"><b>
			                		<!--
			                		<logic:present name="invoice" property="currency">
													<bean:write name="invoice" property="currency.symbol"/>&nbsp;
													</logic:present>
													-->
			                		<logic:present name="deliveryOrderDetailAmount"><bean:write name="deliveryOrderDetailAmount"/></logic:present></b>
			                	</td>
			                </tr>
			                <tr  bgcolor="#FFFFFF">
			                	<td colspan="6"><b><bean:message key="page.discount.title"/>&nbsp;<logic:present name="deliveryOrder">(<bean:write name="deliveryOrder" property="discount1"/>%)</logic:present></b></td>
			                	<td align="right"><b>
			                		<!--
			                		<logic:present name="invoice" property="currency">
													<bean:write name="invoice" property="currency.symbol"/>&nbsp;
													</logic:present>
													-->
			                		<logic:present name="amountDiscount"><bean:write name="amountDiscount"/></logic:present></b>
			                	</td>
			                </tr>
			                <tr  bgcolor="#FFFFFF">
			                	<td colspan="6"><b><bean:message key="page.subtotal.title"/></b></td>
			                	<td align="right"><b>
			                		<!--
			                		<logic:present name="invoice" property="currency">
													<bean:write name="invoice" property="currency.symbol"/>&nbsp;
													</logic:present>
													-->
			                		<logic:present name="amountAfterDiscount"><bean:write name="amountAfterDiscount"/></logic:present></b>
			                	</td>
			                </tr>
			                <tr  bgcolor="#FFFFFF">
			                	<td colspan="6"><b><bean:message key="page.tax.title"/>&nbsp;<logic:present name="invoice">(<bean:write name="invoice" property="taxAmount"/>%)</logic:present></b></td>
			                	<td align="right"><b>
			                		<!--
			                		<logic:present name="invoice" property="currency">
													<bean:write name="invoice" property="currency.symbol"/>&nbsp;
													</logic:present>
													-->
			                		<logic:present name="amountTax"><bean:write name="amountTax"/></logic:present></b>
			                	</td>
			                </tr>
			                <tr  bgcolor="#FFFFFF">
			                	<td colspan="6"><b><bean:message key="page.total.title"/></b></td>
			                	<td align="right"><b>
			                		<!--
			                		<logic:present name="invoice" property="currency">
													<bean:write name="invoice" property="currency.symbol"/>&nbsp;
													</logic:present>
													-->
			                		<logic:present name="amountAfterTaxAndDiscount"><bean:write name="amountAfterTaxAndDiscount"/></logic:present></b>
			                	</td>
			                </tr>
			              </table>
			            </td>
			          </tr>
    					</table>
    				</td>
    			</tr>
         	</logic:notEqual>
         	
         	<logic:equal name="deliveryOrderForm" property="isDetail" value="Y">
          <tr>
    				<td>
    					<table width="100%">
    						<tr bgcolor="#FFFFFF"> 
			            <td align="center"> 
			              <table border="0" cellspacing=1 cellpadding=0 bgcolor="#cccccc" width="100%">
			                <tr align="center"> 
			                  <td width="5%" class=titleField>&nbsp;</td>
			                  <td class=titleField><bean:message key="page.date.title"/></td>
			                  <td class=titleField><bean:message key="page.bonKuning.title"/></td>
			                  <td class=titleField><bean:message key="page.item.title"/></td>
			                  <td class=titleField><bean:message key="page.price.title"/></td>
			                  <td class=titleField><bean:message key="page.quantity.title"/></td>
			                  <td class=titleField><bean:message key="page.bruto.title"/></td>
			                  <td class=titleField><bean:message key="page.discount.title"/></td>
			                  <td class=titleField><bean:message key="page.netto.title"/></td>
			                </tr>
			<%
			int i = 0;
			try {
			i = Integer.parseInt(request.getParameter("start"));
			}catch(Exception ex){
			i = 0;
			}
			%>
											
			                <logic:present name="deliveryOrderLst">
			                <logic:iterate id="deliveryOrder" name="deliveryOrderLst" type="com.mpe.financial.model.DeliveryOrder">
			                <logic:iterate id="deliveryOrderDetail" name="deliveryOrder" property="deliveryOrderDetails" type="com.mpe.financial.model.DeliveryOrderDetail">
			                <tr bgcolor="#FFFFFF" align=center>
			                	<td><%=++i%>.</td>
												<td><bean:write name="deliveryOrderDetail" property="id.deliveryOrder.formatedDeliveryDate" scope="page"/></td>
												<td><bean:write name="deliveryOrderDetail" property="id.deliveryOrder.number" scope="page"/></td>
												<td><bean:write name="deliveryOrderDetail" property="id.item.name" scope="page"/></td>
												<td align="right"><bean:write name="deliveryOrderDetail" property="formatedPrice" scope="page"/></td>
												<td><bean:write name="deliveryOrderDetail" property="quantity" scope="page"/></td>
												<td align="right"><bean:write name="deliveryOrderDetail" property="formatedPriceQuantityBruto" scope="page"/></td>
												<td align="right"><bean:write name="deliveryOrderDetail" property="formatedPriceQuantityDiscount" scope="page"/></td>
												<td align="right"><bean:write name="deliveryOrderDetail" property="formatedPriceQuantity" scope="page"/></td>
			                </tr>
			                </logic:iterate>
			                </logic:iterate>
			                </logic:present>
			                <tr  bgcolor="#FFFFFF">
			                	<td colspan="8"><b><bean:message key="page.total.title"/></b></td>
			                	<td align="right"><b>
			                		<!--
			                		<logic:present name="invoice" property="currency">
													<bean:write name="invoice" property="currency.symbol"/>&nbsp;
													</logic:present>
													-->
			                		<logic:present name="deliveryOrderDetailAmount"><bean:write name="deliveryOrderDetailAmount"/></logic:present></b>
			                	</td>
			                </tr>
			                <tr  bgcolor="#FFFFFF">
			                	<td colspan="8"><b><bean:message key="page.discount.title"/>&nbsp;<logic:present name="deliveryOrder">(<bean:write name="deliveryOrder" property="discount1"/>%)</logic:present></b></td>
			                	<td align="right"><b>
			                		<!--
			                		<logic:present name="invoice" property="currency">
													<bean:write name="invoice" property="currency.symbol"/>&nbsp;
													</logic:present>
													-->
			                		<logic:present name="amountDiscount"><bean:write name="amountDiscount"/></logic:present></b>
			                	</td>
			                </tr>
			                <tr  bgcolor="#FFFFFF">
			                	<td colspan="8"><b><bean:message key="page.subtotal.title"/></b></td>
			                	<td align="right"><b>
			                		<!--
			                		<logic:present name="invoice" property="currency">
													<bean:write name="invoice" property="currency.symbol"/>&nbsp;
													</logic:present>
													-->
			                		<logic:present name="amountAfterDiscount"><bean:write name="amountAfterDiscount"/></logic:present></b>
			                	</td>
			                </tr>
			                <tr  bgcolor="#FFFFFF">
			                	<td colspan="8"><b><bean:message key="page.tax.title"/>&nbsp;<logic:present name="invoice">(<bean:write name="invoice" property="taxAmount"/>%)</logic:present></b></td>
			                	<td align="right"><b>
			                		<!--
			                		<logic:present name="invoice" property="currency">
													<bean:write name="invoice" property="currency.symbol"/>&nbsp;
													</logic:present>
													-->
			                		<logic:present name="amountTax"><bean:write name="amountTax"/></logic:present></b>
			                	</td>
			                </tr>
			                <tr  bgcolor="#FFFFFF">
			                	<td colspan="8"><b><bean:message key="page.total.title"/></b></td>
			                	<td align="right"><b>
			                		<!--
			                		<logic:present name="invoice" property="currency">
													<bean:write name="invoice" property="currency.symbol"/>&nbsp;
													</logic:present>
													-->
			                		<logic:present name="amountAfterTaxAndDiscount"><bean:write name="amountAfterTaxAndDiscount"/></logic:present></b>
			                	</td>
			                </tr>
			              </table>
			            </td>
			          </tr>
    					</table>
    				</td>
    			</tr>
    			</logic:equal>
    			
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