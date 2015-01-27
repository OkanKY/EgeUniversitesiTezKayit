using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //mutlaka ekleyiniz
using System.Data.OleDb;//mutlaka ekleyiniz
using System.Net.Mail;


public partial class sifremiunuttum : System.Web.UI.Page
{
    MailMessage ePosta = new MailMessage();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdSoyad"] == null)
            Response.Redirect("index.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conn = @"Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("~/App_Data/uyelik.mdb");
        OleDbConnection baglantim = new OleDbConnection(conn);
        baglantim.Open();
        OleDbCommand komut = new OleDbCommand();
        komut.Connection = baglantim;
        komut.CommandText = @"Update uyeler Set Sifre = '" + TextBox4.Text + "' Where AdSoyad = '" + TextBox1.Text + "' and KullaniciAdi='" + TextBox2.Text + "' and Eposta='" + TextBox3.Text + "' ";
        komut.ExecuteNonQuery();
        baglantim.Close();
        ePosta.From = new MailAddress("okan-kaya93@hotmail.com");
       // ePosta.To.Add(@"'"+TextBox3.Text+"'");
       // ePosta.Attachments.Add(new Attachment("Yeni Şifre"));
        //ePosta.Subject = "Yeni Şifre Talebiniz..";
        
    }
}