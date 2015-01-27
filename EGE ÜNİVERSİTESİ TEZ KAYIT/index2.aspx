<%@ Page Language="C#" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Diagnostics" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
    <script runat="server">

    protected void btnGonder_Click(object sender, EventArgs e)
    {
        if (uplDosya.HasFile)
        {
            uplDosya.SaveAs(Server.MapPath("~/Uploads/") + "\\" + uplDosya.FileName);
        }
        else
            Response.Write("Upload edilecek dosya yok");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdSoyad"] == null)
            Response.Redirect("index.aspx");
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
</script>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="description" content="description"/>
<meta name="keywords" content="keywords"/> 
<meta name="author" content="author"/> 
<link rel="stylesheet" type="text/css" href="default.css" media="screen"/>
<title>Ege Universitesi</title>
<style type="text/css">
.style1 {
	text-align: center;
	font-size=22px;
	
}
    .style2
    {
        width: 206px;
        height: 163px;
    }
    .style3
    {
        width: 158px;
        height: 151px;
    }
    .style4
    {
        width: 146px;
        height: 146px;
    }
    .style5
    {
        width: 157px;
        height: 164px;
    }
    .style6
    {
        width: 156px;
        height: 178px;
    }
    .style7
    {
        width: 152px;
        height: 130px;
    }
    .style8
    {
        width: 172px;
        height: 141px;
    }
    .style9
    {
        width: 105px;
        height: 200px;
    }
    .style10
    {
        width: 103px;
        height: 200px;
    }
    .style11
    {
        width: 154px;
        height: 146px;
    }
    .style12
    {
        width: 124px;
        height: 161px;
    }
    .style13
    {
        width: 162px;
        height: 181px;
    }
    </style>
</head>

<body>

    <form id="form2" runat="server" visible="True">

<div class="outer-container">

<div class="inner-container">

	<div class="header">
		
		<div class="title">

			<span class="sitename"><a href="index.html">EGE ÜNİVERSİTESİ </a></span>
		  <div class="slogan">TEZ YÜKLEME MERKEZİ</div>

		</div>
		
	</div>

	<div class="path">
			
            &#8250;&nbsp;
			<a href="index2.aspx"><span class="style2">ANASAYFA</span></a> 
			
			
            &#8250; 
			<a href="kullanici.aspx" target="_parent">KULLANICI AYARLARI </a>
    </div>

	<div class="main">		
		
		<div class="content">

		  <h1>Hoşgeldiniz..Giriş Yaptığınız için teşekkürler..</h1>
			&nbsp;</div>
        
         <div>
        Dosyayı Seçin : <asp:FileUpload ID="uplDosya" runat="server" />
        <br />
        <asp:Button ID="bntGonder" runat="server" Text="Gönder" OnClick="btnGonder_Click" />
    </div>

		<div class="navigation">

			<h2>SİTE İÇEİRĞİ</h2>
			<ul>
				<li><a href="hakkinda.html">HAKKINDA</a></li>
				<li><a href="iletisim.html">İLETİŞİM</a></li>
			</ul>
			<ul>
                <li class="style1">
				    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Oturumu Kapat" Width="193px" />
				</li>
                <li class="style1">
				</li>
               
&nbsp;<li>Sitemize Hoşgeldiniz...</li>
			</ul>

		</div>

	</div>

</div>

</div>

    </form>

</body>

</html>