<%@ Page language="c#" Codebehind="BB_SellOrder_BT_show.aspx.cs" AutoEventWireup="false" Inherits="qpsmartweb_jxc.BB_SellOrder_BT_show" %>
<%@ Register TagPrefix="uc1" TagName="fenye" Src="fenye.ascx" %>
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
								<td width="97%"><FONT color="#ffffff"><A class="line_b" href="main_1.aspx">����̨</A>&nbsp;&gt;&gt; 
										���۶������� &gt;&gt; ������������ʾ &gt;&gt; �鿴���۶���</FONT></td>
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
											<td background="i_blue/third_head_bg.jpg">&nbsp;</td>
										</tr>
									</table>
									<table cellSpacing="1" cellPadding="4" width="100%" bgColor="#d8e1e8" border="0">
										<TBODY>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%"><FONT face="����">���⣺</FONT></td>
												<td width="35%"><asp:textbox id="title" runat="server" Width="100%" ></asp:textbox></td>
												<td align="right" width="15%"><FONT face="����">�Ƿ�����</FONT></td>
												<td width="35%"><asp:dropdownlist id="Ifopen" runat="server" Width="100%" Enabled="False">
														<asp:ListItem Value="��">��</asp:ListItem>
														<asp:ListItem Value="��">��</asp:ListItem>
													</asp:dropdownlist></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%"><FONT face="����">�������ͣ�</FONT></td>
												<td width="35%"><asp:textbox id="Type" runat="server" Width="100%" ></asp:textbox></td>
												<td align="right" width="15%"><FONT face="����">��Ʊ���ͣ�</FONT></td>
												<td width="35%"><asp:textbox id="InvoiceType" runat="server" Width="100%" ></asp:textbox></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%">��Ʊ��</td>
												<td width="35%"><FONT face="����"><asp:textbox id="InvoiceNum" runat="server" Width="100%" ></asp:textbox></FONT></td>
												<td align="right" width="15%">ǩ�����ڣ�</td>
												<td width="35%"><asp:textbox id="QdTime" runat="server" Width="100%" ></asp:textbox>
													<script>SetNeed('QdTime')</script>
													</FONT></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%">ǩ���ص㣺</td>
												<td width="35%"><asp:textbox id="OrderAdd" runat="server" Width="100%" ></asp:textbox></td>
												<td align="right" width="15%">�������еص㣺</td>
												<td width="35%"><asp:textbox id="LxAdd" runat="server" Width="100%" ></asp:textbox></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%">�����֣�</td>
												<td width="35%"><asp:textbox id="Storeroom" runat="server" Width="100%" ></asp:textbox>
												</td>
												<td align="right" width="15%">�������ڣ�</td>
												<td width="35%"><asp:textbox id="ShTime" runat="server" Width="100%"  DataType="DateTime"></asp:textbox>
													<script>SetNeed('ShTime')</script>
													</FONT></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%">�ͻ����ƣ�</td>
												<td width="35%"><asp:textbox id="CompanyName" runat="server" Width="100%" ></asp:textbox></td>
												<td align="right">�ͻ���ַ��</td>
												<td><asp:textbox id="CompanyAdd" runat="server" Width="100%" ></asp:textbox></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%">�ʺţ�</td>
												<td width="35%"><asp:textbox id="BankNumber" runat="server" Width="100%" ></asp:textbox></td>
												<td align="right" width="15%">˰�ţ�</td>
												<td width="35%"><asp:textbox id="TaxNumber" runat="server" Width="100%" ></asp:textbox></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%">�������У�</td>
												<td width="35%"><asp:textbox id="Bank" runat="server" Width="100%" ></asp:textbox></td>
												<td align="right" width="15%">�绰��</td>
												<td width="35%"><asp:textbox id="Tel" runat="server" Width="100%" ></asp:textbox></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%">��ϵ�ˣ�</td>
												<td width="35%"><asp:textbox id="LxPeople" runat="server" Width="100%" ></asp:textbox></td>
												<td align="right" width="15%">�����ˣ�</td>
												<td width="35%"><asp:textbox id="DlPeople" runat="server" Width="100%" ></asp:textbox></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right">���ţ�</td>
												<td><asp:textbox id="Unit" runat="server" Width="100%" ></asp:textbox></td>
												<td align="right">ҵ��Ա������</td>
												<td><asp:textbox id="StockPeoName" runat="server" Width="100%" ></asp:textbox></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%"><FONT face="����">��Ч��ʼʱ�䣺</FONT></td>
												<td width="35%"><asp:textbox id="YxStarttime" runat="server" Width="100%" ></asp:textbox>
													<script>SetNeed('YxStarttime')</script>
													</FONT></td>
												<td align="right" width="15%"><FONT face="����">��Ч����ʱ�䣺</FONT></td>
												<td width="35%"><asp:textbox id="YxEndtime" runat="server" Width="100%" ></asp:textbox>
													<script>SetNeed('YxEndtime')</script>
													</FONT></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right" width="15%"><FONT face="����">�ۿ��ʣ�</FONT></td>
												<td width="35%"><asp:textbox onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/\D/.test(clipboardData.getData('text'))"
														id="Discount" ondragenter="return false" style="IME-MODE: disabled" onmouseout="selstr()" runat="server"
														Width="100%" >0</asp:textbox></td>
												<td align="right" width="15%"><FONT face="����">�ܽ��(δ����)��</FONT></td>
												<td width="35%"><asp:textbox onkeypress="var k=event.keyCode; return (k>=48&amp;&amp;k<=57)||k==46" onpaste="return !/\D/.test(clipboardData.getData('text'))"
														id="AllMoney" ondragenter="return false" style="IME-MODE: disabled" onmouseout="selstr()" runat="server"
														Width="100%" >0</asp:textbox></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right" style="HEIGHT: 30px"><FONT face="����">ѡ���������̣�</FONT></td>
												<td colSpan="3" style="HEIGHT: 30px"><asp:textbox id="StreamName" runat="server" Width="100%" ></asp:textbox>
												</td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td align="right"><FONT face="����">������ע��</FONT></td>
												<td colSpan="3"><asp:textbox id="Remark" runat="server" Width="100%" TextMode="MultiLine" Height="52px" ></asp:textbox><A href="javascript:void(0)"></A></FONT></td>
											</tr>
											<tr bgColor="#f3f8fe">
												<td width="100%" colSpan="4">
													<div class="mainDiv"><asp:datagrid id="Datagrid2" runat="server" Width="100%" BorderStyle="None" GridLines="Vertical"
															BackColor="White" AutoGenerateColumns="False" BorderColor="#4D77B1" CellPadding="3" PageSize="12" OnPageIndexChanged="MyDataGrid_Page_1"
															BorderWidth="1px" AllowPaging="True">
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
																<asp:BoundColumn DataField="StockPoint" SortExpression="StockPoint" HeaderText="�ɹ�����">
																	<HeaderStyle Wrap="False"></HeaderStyle>
																	<ItemStyle Wrap="False"></ItemStyle>
																</asp:BoundColumn>
																<asp:BoundColumn DataField="SingleMoney" SortExpression="SingleMoney" HeaderText="����"></asp:BoundColumn>
																<asp:BoundColumn DataField="Allmoney" SortExpression="Allmoney" HeaderText="�ɹ��ܽ��">
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
											<td width="9%"><FONT face="����"></FONT></td>
											<td width="52%"><asp:imagebutton id="ImageButton2" runat="server" ImageUrl="i_blue/back.jpg"></asp:imagebutton></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<asp:textbox id="number" style="DISPLAY: none" runat="server" ></asp:textbox></TD>
			<td width="15">&nbsp;</td>
			</TR></TBODY></TABLE><asp:textbox id="CompanyNumber" style="DISPLAY: none" runat="server"></asp:textbox><asp:textbox id="StockPeoNum" style="DISPLAY: none" runat="server"></asp:textbox><asp:textbox id="StreamNumber" style="DISPLAY: none" runat="server" ></asp:textbox>
		</form>
	</body>
</HTML>