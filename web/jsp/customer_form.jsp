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
                <TD class=title width="100%" background=<html:rewrite page="/images/bg_title.gif"/> height=25><bean:message key="page.customerTitle.title"/></TD></TR>
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
    			<html:form action="/customer/save">
					<html:hidden property="customerId"/>
					<html:hidden property="createBy"/>
					<html:hidden property="changeBy"/>
					<html:hidden property="createOn"/>
					<html:hidden property="changeOn"/>
					<html:hidden property="subaction"/>
          <tr> 
            <td align="center"> 
              <table width="100%" border="0" cellspacing="1" cellpadding="0" class=abuabu>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.customerCategory.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:select property="customerCategoryId">
											<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
											<html:options collection="customerCategoryLst" property="id" labelProperty="name" />
                  	</html:select>&nbsp;</td>
                </tr>
								<tr> 
                  <td width="30%" align="right"><bean:message key="page.company.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="company" size="30"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.code.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="code" size="15"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.npwp.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="npwp" size="20"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.address.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:textarea property="address" cols="40" rows="4"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.city.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="city" size="30"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.postalCode.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="postalCode" size="12"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.province.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="province" size="30"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.areaCode.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="areaCode" size="12"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.country.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="country" size="30"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.telephone.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="telephone" size="20"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.fax.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="fax" size="20"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.email.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="email" size="30"/></td>
                </tr>
								<tr> 
                  <td width="30%" align="right"><bean:message key="page.isActive.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:checkbox property="isActive" value="Y"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.accountReceivable.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:select property="chartOfAccountId">
											<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
											<html:options collection="chartOfAccountLst" property="id" labelProperty="numberName" />
                  	</html:select>&nbsp;</td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.itemPriceCategory.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:select property="itemPriceCategoryId">
											<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
											<html:options collection="itemPriceCategoryLst" property="id" labelProperty="name" />
                  	</html:select>&nbsp;</td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.customerAlias.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:select property="customerAliasId">
											<html:option value=""><bean:message key="page.selectBellow.title"/></html:option>
											<html:options collection="customerLst" property="id" labelProperty="company" />
                  	</html:select>&nbsp;</td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.isStore.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:checkbox property="isStore" value="Y"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.creditLimit.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="creditLimit" size="10"/></td>
                </tr>
								<tr> 
                  <td width="30%" align="right"><bean:message key="page.isBlockOverCreditLimit.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:checkbox property="isBlockOverCreditLimit" value="Y"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.position.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:text property="position" size="30"/></td>
                </tr>
                <tr> 
                  <td width="30%" align="right"><bean:message key="page.description.title"/></td>
                  <td width="5%" align="center">:</td>
                  <td width="65%"><html:textarea property="description" cols="40" rows="3"/></td>
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
							<html:submit onclick="this.form.subaction.value=''" styleClass="Button"><bean:message key="page.submit.link"/></html:submit>
							<html:cancel onclick="this.form.subaction.value='';bCancel=true;" styleClass="Button"><bean:message key="page.cancel.link"/></html:cancel>
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