<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kaydet.aspx.cs" Inherits="kaydet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
	margin-top: 68px;
	margin-right: 0px;
}
        .style2
        {
            width: 186px;
            height: 68px;
        }
        .style3
        {
            color: #CC00FF;
	text-align: left;
}
        .style4
        {
            width: 318px;
        }
    .style5 {
	text-align: center;
}
        .style6
        {
            width: 186px;
            font-size: x-large;
        }
        .style7
        {
            width: 318px;
            height: 68px;
        }
    </style>
</head>
<body background="img/body.jpg">
    <form id="form1" runat="server">
    <div>
    <h1 class="style3"> ÜYE DEĞİLSENİZ KAYDOLUN..</h1>
         <div class="style5"> 
             <table class="style1" 
                 style="width: 50%; height: 276px; margin-left: 0px;">
            <tbody class="style5">
            <tr>
                <td class="style6" bgcolor="#99CCFF">
                    ADI SOYADI:</td>
                <td class="style4" bgcolor="#99CCFF">
                    <asp:TextBox ID="txtAdSoyad" runat="server" BackColor="#FFCC99" 
                        Font-Bold="True" Font-Size="Large" Height="35px" 
                        ontextchanged="txtAdSoyad_TextChanged" Width="156px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtAdSoyad" ErrorMessage="Ad-Soyad Kısmını Boş Geçmeyiniz.." 
                        style="color: #FF0000">Hata</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6" bgcolor="#99CCFF">
                    KULLANICI ADI:</td>
                <td class="style4" bgcolor="#99CCFF">
                    <asp:TextBox ID="txtKullaniciAdi" runat="server" BackColor="#FFCC99" 
                        Font-Bold="True" Font-Size="Large" Height="35px" Width="156px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtKullaniciAdi" 
                        ErrorMessage="Kullanıcı Adını Boş Geçmeyiniz.." style="color: #FF0000">Hata</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6" bgcolor="#99CCFF">
                    ŞİFRE:</td>
                <td class="style4" bgcolor="#99CCFF">
                    <asp:TextBox ID="txtSifre" runat="server" MaxLength="5" TextMode="Password" 
                        BackColor="#FFCC99" Font-Bold="True" Font-Size="Large" Height="35px" 
                        Width="156px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtSifre" ErrorMessage="Şifreyi Boş Geçmeyiniz.." 
                        style="color: #FF0000">Hata</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6" bgcolor="#99CCFF">
                    E-POSTA</td>
                <td class="style4" bgcolor="#99CCFF">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtEposta" runat="server" BackColor="#FFCC99" Font-Bold="True" 
                        Font-Size="Large" Height="35px" Width="156px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtEposta" ErrorMessage="E-Postayı Boş Geçmeyiniz.." 
                        style="color: #FF0000">Hata</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEposta" ErrorMessage="Mail adresini uygun girmediniz.." 
                        style="color: #FF0000" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">.</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" bgcolor="#009900">
                    </td>
                <td class="style7" bgcolor="#009900">
                    <asp:Button ID="btnKaydet" runat="server" onclick="btnKaydet_Click" 
                        Text="KAYDET" Font-Bold="True" Font-Size="X-Large" Height="50px" 
                        Width="145px" />

                &nbsp;
                    
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/index.aspx" 
                        Text="ANASAYFA" Font-Bold="True" Font-Size="X-Large" Height="50px" 
                        Width="145px" />
                    
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" 
        Font-Size="Medium" style="color: #FF0000" />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="App_Data\uyelik.mdb" 
        DeleteCommand="DELETE FROM `uyeler` WHERE `uyeid` = ?" 
        InsertCommand="INSERT INTO `uyeler` (`uyeid`, `AdSoyad`, `KullaniciAdi`, `Sifre`, `Eposta`) VALUES (?, ?, ?, ?, ?)" 
        SelectCommand="SELECT `uyeid`, `AdSoyad`, `KullaniciAdi`, `Sifre`, `Eposta` FROM `uyeler`" 
        UpdateCommand="UPDATE `uyeler` SET `AdSoyad` = ?, `KullaniciAdi` = ?, `Sifre` = ?, `Eposta` = ? WHERE `uyeid` = ?">
        <DeleteParameters>
            <asp:Parameter Name="uyeid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uyeid" Type="Int32" />
            <asp:Parameter Name="AdSoyad" Type="String" />
            <asp:Parameter Name="KullaniciAdi" Type="String" />
            <asp:Parameter Name="Sifre" Type="String" />
            <asp:Parameter Name="Eposta" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AdSoyad" Type="String" />
            <asp:Parameter Name="KullaniciAdi" Type="String" />
            <asp:Parameter Name="Sifre" Type="String" />
            <asp:Parameter Name="Eposta" Type="String" />
            <asp:Parameter Name="uyeid" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    </form>
</body>
</html>
