using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //mutlaka ekleyiniz
using System.Data.OleDb;//mutlaka ekleyiniz
using System.IO;
public partial class Kullanici : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        Panel1.Visible = false;
        Label5.Visible = false;


        if (Session["AdSoyad"] != null)
           
                Label1.Text = Session["AdSoyad"].ToString();
        else
            Response.Redirect("index.aspx");
        if (Label1.Text == "okan kaya")
        {
            Panel1.Visible = true;
            Label5.Visible = true;

        }

        else{
            Label5.Visible = true;
            Label5.Text = "Kayıtlı uye olarak giriiş yapıldı...";
        }
        if (!IsPostBack)
        {
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/Uploads/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
            }
            GridView2.DataSource = files;
            GridView2.DataBind();
        }
    }

    protected void DownloadFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();
    }

    protected void DeleteFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        File.Delete(filePath);
        Response.Redirect(Request.Url.AbsoluteUri);
    }

  
}