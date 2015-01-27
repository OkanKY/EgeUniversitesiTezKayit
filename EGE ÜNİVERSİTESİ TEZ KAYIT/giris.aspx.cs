using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //mutlaka ekleyiniz
using System.Data.OleDb;//mutlaka ekleyiniz

public partial class giris : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["AdSoyad"] != null)
        {
            pnlGirmedi.Visible = false;
            pnlGirdi.Visible = true;
            lblKullanici.Text = Session["AdSoyad"].ToString();
        }
        else
        {

            Label1.Visible = true;
            pnlGirmedi.Visible = true;
            pnlGirdi.Visible = false;

        }
    
    }
    protected void txtGiris_Click(object sender, EventArgs e)
    {
        if (Session["AdSoyad"] != null)
            Session.Abandon();
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("~/App_Data/uyelik.mdb"));
        OleDbCommand verial = new OleDbCommand("Select * From uyeler where KullaniciAdi='" + txtKullanidiAdi.Text + "' and Sifre='" + Sifre.Text + "'", baglanti); //from uyeler tablosuna gider ve istenilen değeri bulur
        baglanti.Open();  //baglantıyı yukledım ve açmasını istiyorum
        OleDbDataReader drOku = verial.ExecuteReader(); //veri tababındanı tablolarımı teker teker okuyorum .. tamamını...
        if (drOku.Read()) //bu deger bize true ise yani yukarıdaki şart saglandıysa alttakı işlemleri yap.
        {

            Session["uyeid"] = drOku["uyeid"].ToString(); //
            Session["AdSoyad"] = drOku["AdSoyad"].ToString();

        }
        else
        {
            lblBilgi.Text = "Böyle Bir Kullanıcı Bulunamadı..";
           // Session["uyeid"] = null; //
          //  Session["AdSoyad"] = null;
            Session.Abandon();
        }
            drOku.Close();
           baglanti.Close();

        HttpCookie myCookie = new HttpCookie("deneme");
        myCookie["AdSoyad"] = lblKullanici.Text;
        myCookie.Expires = DateTime.Now.AddDays(1);
        Response.Cookies.Add(myCookie);
    
        if (Session["uyeid"] != null)
        {
            pnlGirmedi.Visible = false;
            pnlGirdi.Visible = true;
            lblKullanici.Text = Session["AdSoyad"].ToString();
        }
        else
        {

            Label1.Visible = true;
            pnlGirmedi.Visible = true;
            pnlGirdi.Visible = false;

        }

   
    }
    protected void btncik_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("index2.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

      Response.Redirect("kullanici.aspx?KullaniciAdi=" + lblKullanici.Text);
    }
  
}