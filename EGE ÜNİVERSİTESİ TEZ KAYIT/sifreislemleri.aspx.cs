using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //mutlaka ekleyiniz
using System.Data.OleDb;//mutlaka ekleyiniz

public partial class sifreislemleri : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdSoyad"] != null)

            Label1.Text = Session["AdSoyad"].ToString();
        else
            Response.Redirect("index.aspx");
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string conn = @"Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("~/App_Data/uyelik.mdb");
        OleDbConnection baglantim = new OleDbConnection(conn);
        baglantim.Open();
        OleDbCommand komut = new OleDbCommand();
        komut.Connection = baglantim;
        komut.CommandText = @"Update uyeler Set Sifre = '" + TextBox2.Text + "' Where AdSoyad = '" + Label1.Text + "' and Sifre='" + TextBox1.Text + "' ";
        komut.ExecuteNonQuery();
        baglantim.Close();

    }
}

