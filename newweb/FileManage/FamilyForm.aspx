﻿<%--文件名:FamilyForm.aspx--%>
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FamilyForm.aspx.cs" Inherits="FileManage_FamilyForm" Title="当前位置：人事管理->员工家庭成员" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 556px; height: 161px">
        <tr>
            <td align="left" style="font-size: 0.8em; width: 2232px; font-family: 宋体; height: 16px;
                background-color: teal">
                &nbsp;请输入查询员工姓名：<asp:TextBox ID="TextBox1" runat="server" Width="145px">%%</asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="查询" Width="80px" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="新增" Width="80px" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="修改" Width="80px" /></td>
        </tr>
        <tr>
            <td align="left" style="font-size: 0.8em; width: 2232px; font-family: 宋体; height: 27px;
                background-color: gainsboro">
                &nbsp;自编号:<asp:TextBox ID="TextBox2" runat="server" BackColor="DarkGray" ReadOnly="True"
                    Width="35px"></asp:TextBox>
                所在部门:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                    DataTextField="部门名称" DataValueField="部门名称" Width="80px">
                </asp:DropDownList>
                员工姓名:<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2"
                    DataTextField="姓名" DataValueField="员工编号" Width="80px">
                </asp:DropDownList>
                家庭成员姓名：<asp:TextBox ID="TextBox3" runat="server" Width="59px">罗帅</asp:TextBox><br />
                &nbsp;与员工关系:<asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>父</asp:ListItem>
                    <asp:ListItem>母</asp:ListItem>
                    <asp:ListItem>兄</asp:ListItem>
                    <asp:ListItem>弟</asp:ListItem>
                    <asp:ListItem>姐</asp:ListItem>
                    <asp:ListItem>妹</asp:ListItem>
                    <asp:ListItem>子</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                    <asp:ListItem>夫</asp:ListItem>
                    <asp:ListItem>妻</asp:ListItem>
                </asp:DropDownList>
                工作单位:<asp:TextBox ID="TextBox4" runat="server" Width="193px">长寿实验二小</asp:TextBox>
                担任职务:<asp:TextBox ID="TextBox5" runat="server" Width="93px">学生</asp:TextBox><br />
                &nbsp;政治面貌:<asp:TextBox ID="TextBox6" runat="server" Width="46px">暂无</asp:TextBox>
                联系电话:<asp:TextBox ID="TextBox7" runat="server" Width="94px">13883797515</asp:TextBox>
                补充说明:<asp:TextBox ID="TextBox8" runat="server" Width="193px">暂无</asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 2232px; height: 100px; background-color: gainsboro">
                <asp:Panel ID="Panel1" runat="server" Height="220px" ScrollBars="Auto" Width="553px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyPersonnelDBConnectionString %>"
                        SelectCommand="SELECT * FROM [公司部门]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyPersonnelDBConnectionString %>"
                        SelectCommand="SELECT * FROM [在职员工视图] WHERE ([所属部门] = @所属部门)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="所属部门" PropertyName="SelectedValue"
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MyPersonnelDBConnectionString %>"
                        DeleteCommand="DELETE FROM [家庭成员] WHERE [自编号] = @自编号" InsertCommand="INSERT INTO [家庭成员] ([员工编号], [员工姓名], [家庭成员姓名], [与员工关系], [工作单位], [担任职务], [政治面貌], [联系电话], [补充说明]) VALUES (@员工编号, @员工姓名, @家庭成员姓名, @与员工关系, @工作单位, @担任职务, @政治面貌, @联系电话, @补充说明)"
                        SelectCommand="SELECT * FROM [家庭成员] WHERE ([员工姓名] LIKE '%' + @员工姓名 + '%')" UpdateCommand="UPDATE [家庭成员] SET [员工编号] = @员工编号, [员工姓名] = @员工姓名, [家庭成员姓名] = @家庭成员姓名, [与员工关系] = @与员工关系, [工作单位] = @工作单位, [担任职务] = @担任职务, [政治面貌] = @政治面貌, [联系电话] = @联系电话, [补充说明] = @补充说明 WHERE [自编号] = @自编号">
                        <DeleteParameters>
                            <asp:Parameter Name="自编号" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="员工编号" PropertyName="SelectedValue"
                                Type="String" />
                            <asp:ControlParameter ControlID="DropDownList2" Name="员工姓名" PropertyName="SelectedItem.Text"
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="家庭成员姓名" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList3" Name="与员工关系" PropertyName="SelectedValue"
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" Name="工作单位" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox5" Name="担任职务" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox6" Name="政治面貌" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox7" Name="联系电话" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox8" Name="补充说明" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="自编号" PropertyName="Text" Type="Int32" />
                        </UpdateParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="员工姓名" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="DropDownList2" Name="员工编号" PropertyName="SelectedValue"
                                Type="String" />
                            <asp:ControlParameter ControlID="DropDownList2" Name="员工姓名" PropertyName="SelectedItem.Text"
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="家庭成员姓名" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList3" Name="与员工关系" PropertyName="SelectedValue"
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" Name="工作单位" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox5" Name="担任职务" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox6" Name="政治面貌" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox7" Name="联系电话" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox8" Name="补充说明" PropertyName="Text" Type="String" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="自编号"
                        DataSourceID="SqlDataSource3" Font-Names="宋体" Font-Size="Small" GridLines="Vertical"
                        OnRowCreated="GridView1_RowCreated" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                        Width="1000px">
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" HeaderText="选择" ShowSelectButton="True" />
                            <asp:TemplateField HeaderText="删除" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete"
                                        Text="删除" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="自编号" HeaderText="自编号" InsertVisible="False" ReadOnly="True"
                                SortExpression="自编号" />
                            <asp:BoundField DataField="员工编号" HeaderText="员工编号" SortExpression="员工编号" />
                            <asp:BoundField DataField="员工姓名" HeaderText="员工姓名" SortExpression="员工姓名" />
                            <asp:BoundField DataField="家庭成员姓名" HeaderText="家庭成员姓名" SortExpression="家庭成员姓名" />
                            <asp:BoundField DataField="与员工关系" HeaderText="与员工关系" SortExpression="与员工关系" />
                            <asp:BoundField DataField="工作单位" HeaderText="工作单位" SortExpression="工作单位" />
                            <asp:BoundField DataField="担任职务" HeaderText="担任职务" SortExpression="担任职务" />
                            <asp:BoundField DataField="政治面貌" HeaderText="政治面貌" SortExpression="政治面貌" />
                            <asp:BoundField DataField="联系电话" HeaderText="联系电话" SortExpression="联系电话" />
                            <asp:BoundField DataField="补充说明" HeaderText="补充说明" SortExpression="补充说明" />
                        </Columns>
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
