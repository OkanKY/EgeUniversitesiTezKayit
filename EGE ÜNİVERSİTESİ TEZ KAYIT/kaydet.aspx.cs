using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //mutlaka ekleyiniz
using System.Data.OleDb;//mutlaka ekleyiniz

public partial class kaydet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti;//baglantı tanımlıyoruz
        baglanti = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("~/App_Data/uyelik.mdb"));//Veri tabanı ismi ve yolu eger sql kullanıyorsak ( baglanti.ConnectionString = "Integrated Security=True; Initial Catalog=uyelik; Data Source=BurakTURGUT\\SQLEXPRESS" ) ; şeklinde olurdu
        OleDbCommand SorguKaydet = new OleDbCommand("insert Into uyeler (AdSoyad,KullaniciAdi,Sifre,Eposta) values('"
             +txtAdSoyad.Text+"','"
    +txtKullaniciAdi.Text+"','"
    +txtSifre.Text+"','" //Kayit Ekledikl
    +txtEposta.Text+"') ", baglanti);//Kodu hangi bağlantıya göre çalıştı
     baglanti.Open();

     if (Convert.ToBoolean(SorguKaydet.ExecuteNonQuery()))
     {

         baglanti.Close();
         Label1.Text = "İşleminiz Başarıyla Gerçekleşti..";

         Response.Redirect("Giris.aspx");
         baglanti.Dispose();
     }

   
     
}
    protected void txtAdSoyad_TextChanged(object sender, EventArgs e)
    {
        txtAdSoyad.Text = txtAdSoyad.Text.ToUpper();
    }
}
