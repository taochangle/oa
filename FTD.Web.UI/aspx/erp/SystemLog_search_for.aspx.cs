using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using qpsmartweb_jxc.Public;
using System.Data.OleDb;
namespace qpsmartweb_jxc
{
	/// <summary>
	/// SystemLog_search_for ��ժҪ˵����
	/// </summary>
	public class SystemLog_search_for : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.ImageButton ImageButton1;
		protected System.Web.UI.WebControls.ImageButton ImageButton2;
		protected System.Web.UI.WebControls.ImageButton ImageButton3;
		protected System.Web.UI.WebControls.DataGrid Datagrid2;
		protected DragonWebControls.GridPager GridPager1;
		Db List=new Db();
		public static string SqlStrStart,SqlStrEnd,SqlStrMid,SqlStr,herenumber,strback;
		protected System.Web.UI.WebControls.ImageButton Imagebutton4;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
            FTD.Unit.PublicMethod.CheckSession();

			this.ImageButton2.Attributes.Add("onclick","javascript:return del();"); 
			this.Imagebutton4.Attributes.Add("onclick","javascript:return del();"); 


			if (!IsPostBack)
			{
				strback=Server.UrlDecode(Request.QueryString["str"]);
			

				SqlStrStart = "select * from SystemLog where 1=1";
				SqlStrEnd = " order by id desc";
				SqlStrMid = string.Empty;
				SqlStrMid=Server.UrlDecode(Request.QueryString["str"]);
				SqlStr = SqlStrStart + SqlStrMid + SqlStrEnd;

			}

	
			string SQL_GetList_xs    =  SqlStr;
		
			Datagrid2.DataSource   = List.GetGrid_Pages(SQL_GetList_xs,"id");
			Datagrid2.DataBind();
		}

		#region Web ������������ɵĴ���
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: �õ����� ASP.NET Web ���������������ġ�
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
		/// �˷��������ݡ�
		/// </summary>
		private void InitializeComponent()
		{    
			this.ImageButton1.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton1_Click);
			this.ImageButton2.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton2_Click);
			this.ImageButton3.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton3_Click);
			this.Imagebutton4.Click += new System.Web.UI.ImageClickEventHandler(this.Imagebutton4_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
		protected void MyDataGrid_Page_1(object sender,DataGridPageChangedEventArgs e)
		{
			Datagrid2.CurrentPageIndex = e.NewPageIndex;
			Datagrid2.DataBind();
		}

		private void ImageButton3_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Response.Redirect("SystemLog_search.aspx");
		}

		private void ImageButton2_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			try
			{
			
			
				string SQL_Del = "Delete from SystemLog  where id='"+Datagrid2.SelectedItem.Cells[1].Text.ToString()+"'";
					
				List.ExeSql(SQL_Del);

				string SQL_GetList_xs    =  SqlStr;
		
				Datagrid2.DataSource   = List.GetGrid_Pages(SQL_GetList_xs,"id");
				Datagrid2.DataBind();

			}
			catch
			{
				this.Response.Write("<script language=javascript>alert('ɾ��ʧ�ܣ���ȷ���Ƿ�ѡ��ɾ����');</script>");
			}
		}

		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Response.Redirect("SystemLog_search.aspx");
		}

		private void Imagebutton4_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
		
			
				string SQL_Del = "Delete from SystemLog  where 1=1 "+SqlStrMid+"";
					
				List.ExeSql(SQL_Del);

				string SQL_GetList_xs    =  SqlStr;
		
				Datagrid2.DataSource   = List.GetGrid_Pages(SQL_GetList_xs,"id");
				Datagrid2.DataBind();


		}
	}
}