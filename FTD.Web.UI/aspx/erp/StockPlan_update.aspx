<%@ Register TagPrefix="uc1" TagName="fenye" Src="fenye.ascx" %>
<%@ Page language="c#" Codebehind="StockPlan_update.aspx.cs" AutoEventWireup="false" Inherits="qpsmartweb_jxc.StockPlan_update" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>�ɭɽ������</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="i_blue/ny.css" type="text/css" rel="stylesheet">
		<script>
	   function killErrors() {
		return true;
		}
		window.onerror = killErrors;	
		
		 function del()
		  {
			    if (!confirm("�Ƿ�ȷ��ɾ����"))
			    return false;
		  }	
		
		
			function chknull()
				{


	    	if(document.getElementById('name').value=='')
			{
				alert('��������Ϊ��');
				Form1.name.focus();
				return false;
			}	
			
		    if(document.getElementById('worknum').value=='')
			{
				alert('���Ų���Ϊ��');
				Form1.worknum.focus();
				return false;
			}	
		
									
			}
			
			
	     	var  wName;  
            function  fnOpen()  
            {  
				 var num=Math.random();
                 wName=window.showModalDialog("posttype_open.aspx?tmp="+num+"","window", "dialogWidth:500px;DialogHeight=500px;status:no;scroll=yes;help:no");               
             
                 if(wName!=null && wName!= "undefined")
                 {
                   
			    	document.getElementById("unit").value=wName; 
			    	return;
                 }
            
                
            }


			function  zjOpen()  
            {  
            var num=Math.random();
            var number=document.getElementById('number').value;
           window.showModalDialog("StockPlan_add_add2.aspx?tmp="+num+"&number="+number+" ","window","dialogWidth:700px;DialogHeight=600px;status:no;scroll=yes;help:no");                
              
               
               
                
            }        
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<script language="javascript" src="DateSelect.js"></script>
			<table cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td width="16" background="i_blue/m_head_3.jpg"><IMG height="34" src="i_blue/m_head_1.jpg" width="20"></td>
					<td width="748" background="i_blue/m_head_3.jpg">
						<table height="25" cellSpacing="0" cellPadding="0" width="92%" border="0">
							<tr>
								<td class="headfont" width="97%"><A class="line_b" href="main_1.aspx">����̨</A>&nbsp;&gt;&gt;&nbsp;<A class="line_b" href="StockPlan.aspx">�ɹ��ƻ�</A>&nbsp;&gt;&gt; 
									�޸Ĳɹ��ƻ�</td>
							</tr>
						</table>
					</td>
					<td width="23"><IMG height="34" src="i_blue/m_head_2.jpg" width="21"></td>
				</tr>
			</table>
			<table height="450" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td width="15">&nbsp;</td>
					<td vAlign="top" width="95%">
						<table cellSpacing="1" cellPadding="0" width="100%" bgColor="#7d9db4" border="0">
							<tr>
								<td vAlign="top" bgColor="#f3f8fe">
									<table height="26" cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
											<td background="i_blue/third_head_bg.jpg">&nbsp;
												<asp:imagebutton id="ImageButton3" runat="server" ImageUrl="i_blue/zenghang.jpg"></asp:imagebutton><FONT face="����">&nbsp;</FONT>
												<asp:imagebutton id="ImageButton4" runat="server" ImageUrl="i_blue/xiugai.jpg"></asp:imagebutton><FONT face="����">&nbsp;</FONT>
												<asp:imagebutton id="ImageButton5" runat="server" ImageUrl="i_blue/shanchu.jpg"></asp:imagebutton></td>
										</tr>
									</table>
									<table cellSpacing="1" cellPadding="4" width="100%" bgColor="#d8e1e8" border="0">
										<TBODY>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%"><FONT face="����">���⣺</FONT></td>
												<td width="35%"><asp:textbox id="tilte" runat="server" Width="100%"></asp:textbox></td>
												<td align="right" width="15%"><FONT face="����">�Ƿ�����</FONT></td>
												<td width="35%">
													<asp:DropDownList id="Ifopen" runat="server" Width="100%">
														<asp:ListItem Value="��">��</asp:ListItem>
														<asp:ListItem Value="��">��</asp:ListItem>
													</asp:DropDownList></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%"><FONT face="����">�ƻ���ʼʱ�䣺</FONT></td>
												<td width="35%"><asp:textbox id="StartTime" runat="server" Width="90%"  DataType="DateTime"></asp:textbox>
													<script>SetNeed('StartTime')</script>
													</FONT><A href="javascript:void(0)"><IMG id="StartTime_HelpButton" onclick="Jscript:var sID ;sID = event.srcElement.id; sID = sID.substring(0,sID.lastIndexOf('_HelpButton'));DateSelect(sID);"
															src="image/FDJ.gif" border="0"></A></td>
												<td align="right" width="15%"><FONT face="����">�ƻ�����ʱ�䣺</FONT></td>
												<td width="35%"><asp:textbox id="EndTime" runat="server" Width="90%"  DataType="DateTime"></asp:textbox>
													<script>SetNeed('EndTime')</script>
													<A href="javascript:void(0)"><IMG id="EndTime_HelpButton" onclick="Jscript:var sID ;sID = event.srcElement.id; sID = sID.substring(0,sID.lastIndexOf('_HelpButton'));DateSelect(sID);"
															src="image/FDJ.gif" border="0"></A></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right"><FONT face="����">���ţ�</FONT></td>
												<td><asp:textbox id="unit" runat="server" Width="90%" ></asp:textbox><A href="javascript:void(0)"><IMG onclick="var wName;var RadNum=Math.random();wName=window.showModalDialog('../Main/SelectDanWei.aspx?TableName=ERPBuMen&LieName=BuMenName&Radstr='+RadNum,'','dialogWidth:350px;DialogHeight=400px;status:no;help:no;resizable:yes;');if(wName==null){}else{document.getElementById('unit').value=wName;}" alt="" src="image/FDJ.gif" border="0"></A></td>
												<td align="right">����ܼƣ�</td>
												<td><asp:textbox id="ALLMoney" runat="server" Width="100%"></asp:textbox></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td width="100%" colSpan="4">
													<div class="mainDiv"><asp:datagrid id="Datagrid2" runat="server" Width="100%" AllowPaging="True" BorderWidth="1px"
															OnPageIndexChanged="MyDataGrid_Page_1" PageSize="12" CellPadding="3" BorderColor="#4D77B1" AutoGenerateColumns="False"
															BackColor="White" GridLines="Vertical" BorderStyle="None">
															<FooterStyle ForeColor="Black" BackColor="#AECADF"></FooterStyle>
															<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669AC1"></SelectedItemStyle>
															<AlternatingItemStyle BackColor="#FBFCFE"></AlternatingItemStyle>
															<ItemStyle ForeColor="Black" BackColor="#E6EDF7"></ItemStyle>
															<HeaderStyle Font-Bold="True" HorizontalAlign="Center" BackColor="#AECADF"></HeaderStyle>
															<Columns>
																<asp:BoundColumn Visible="False" DataField="id"></asp:BoundColumn>
																<asp:BoundColumn DataField="GoodsName" SortExpression="GoodsName" HeaderText="��Ʒ����">
																	<HeaderStyle Wrap="False"></HeaderStyle>
																	<ItemStyle Wrap="False"></ItemStyle>
																</asp:BoundColumn>
																<asp:BoundColumn DataField="CountUnit" SortExpression="CountUnit" HeaderText="������λ">
																	<HeaderStyle Wrap="False"></HeaderStyle>
																	<ItemStyle Wrap="False"></ItemStyle>
																</asp:BoundColumn>
																<asp:BoundColumn DataField="Model" SortExpression="Model" HeaderText="����ͺ�">
																	<HeaderStyle Wrap="False"></HeaderStyle>
																	<ItemStyle Wrap="False"></ItemStyle>
																</asp:BoundColumn>
																<asp:BoundColumn DataField="SingleMoney" SortExpression="SingleMoney" HeaderText="����">
																	<HeaderStyle Wrap="False"></HeaderStyle>
																	<ItemStyle Wrap="False"></ItemStyle>
																</asp:BoundColumn>
																<asp:BoundColumn DataField="Allmoney" SortExpression="Allmoney" HeaderText="�ɹ��ܽ��">
																	<HeaderStyle Wrap="False"></HeaderStyle>
																	<ItemStyle Wrap="False"></ItemStyle>
																</asp:BoundColumn>
																<asp:BoundColumn DataField="StockPeoName" SortExpression="StockPeoName" HeaderText="�ɹ�Ա����">
																	<HeaderStyle Wrap="False"></HeaderStyle>
																	<ItemStyle Wrap="False"></ItemStyle>
																</asp:BoundColumn>
																<asp:BoundColumn DataField="CompanyName" SortExpression="CompanyName" HeaderText="��Ӧ������">
																	<HeaderStyle Wrap="False"></HeaderStyle>
																	<ItemStyle Wrap="False"></ItemStyle>
																</asp:BoundColumn>
															</Columns>
															<PagerStyle Visible="False" NextPageText="��һҳ" PrevPageText="��һҳ" HorizontalAlign="Right" ForeColor="White"
																BackColor="#AECADF" Mode="NumericPages"></PagerStyle>
														</asp:datagrid></div>
													<uc1:fenye id="Fenye1" runat="server"></uc1:fenye></td>
											</tr>
							</tr>
						</table>
						<table height="25" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td background="i_blue/third_head_bg1.jpg">
									<table cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
											<td width="39%">&nbsp;</td>
											<td width="9%"><asp:imagebutton id="ImageButton1" runat="server" ImageUrl="i_blue/ok.jpg"></asp:imagebutton></td>
											<td width="52%"><asp:imagebutton id="ImageButton2" runat="server" ImageUrl="i_blue/back.jpg"></asp:imagebutton></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<asp:TextBox id="number" runat="server"  style="DISPLAY: none"></asp:TextBox></TD>
			<td width="15">&nbsp;</td>
			</TR></TBODY></TABLE></form>
	</body>
</HTML>