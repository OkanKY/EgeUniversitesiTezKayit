<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giris.aspx.cs" Inherits="giris" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 101%;
            text-align: center;
            height: 235px;
        }
    .style2 {
	text-align: center;
}
        .style4
        {
            color: #FF0066;
        }
        .style5
        {
            color: #FF00FF;
        }
        .style6
        {
            color: #000099;
            width: 429px;
            text-align: left;
        }
        .style15
        {
            width: 429px;
            text-align: left;
        }
        .style18
        {
            width: 265px;
            font-size: x-large;
        }
        .style19
        {
            width: 265px;
        }
        .style20
        {
            font-size: large;
        }
        .style21
        {
            font-size: xx-large;
        }
        .style23
        {
            width: 44%;
        }
    </style>
</head>
<body background="img/body.jpg">
    <form id="form1" runat="server">
    
    <br />
    
    <asp:Panel ID="pnlGirmedi" runat="server" Height="297px" Width="635px" 
        style="text-align: center">
        <span class="style4">Kayıtlı Değilseniz Kaydolunuz...<br /> </span>
        <br />
        <table class="style1">
            <tr>
                <td class="style18" bgcolor="#99CCFF">
                    Kullanıcı Adı:</td>
                <td class="style15" bgcolor="#99CCFF">
                    <asp:TextBox ID="txtKullanidiAdi" runat="server" BackColor="#FFCC99" 
                        Font-Bold="True" Font-Size="Large" Height="35px" Width="156px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtKullanidiAdi" 
                        ErrorMessage="Kullanıcı Adını Boş Geçemezsiniz.." style="color: #FF0000" 
                        ValidationGroup="1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style18" bgcolor="#99CCFF">
                    Şifre:</td>
                <td class="style15" bgcolor="#99CCFF">
                    <asp:TextBox ID="Sifre" runat="server" 
                TextMode="Password" MaxLength="5" BackColor="#FFCC99" Font-Bold="True" 
                        Font-Size="Large" Height="35px" Width="156px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="Sifre" ErrorMessage="Şifreyi Boş Geçemezsiniz.." 
                        style="color: #FF0000" ValidationGroup="1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style19" bgcolor="#99CC00">
                    &nbsp;</td>
                <td class="style15" bgcolor="#99CC00">
                    <asp:Button ID="txtGiris" runat="server" Text="Giriş" Height="45px" 
                        onclick="txtGiris_Click" Width="120px" Font-Bold="True" 
                        Font-Size="X-Large" ValidationGroup="1" />
                    &nbsp;
                    <asp:Button ID="txtGiris0" runat="server" Height="45px" 
                        onclick="txtGiris_Click" PostBackUrl="~/kaydet.aspx" Text="Kaydol" 
                        Width="120px" Font-Bold="True" Font-Size="X-Large" />
                    &nbsp;
                    <asp:Button ID="txtGiris1" runat="server" Height="45px" 
                        onclick="txtGiris_Click" PostBackUrl="~/index.aspx" Text="Anasayfa" 
                        Width="120px" Font-Bold="True" Font-Size="X-Large" />
                </td>
            </tr>
            <tr>
                <td class="style19">
                    <asp:Label ID="lblBilgi" runat="server" 
                        style="font-size: large; color: #6666FF;"></asp:Label>
                </td>
                <td class="style15">
                    Güvenlik İçin Şifrenizi İki Kere Girilmeniz İstenmektedir..</td>

            </tr> <tr>
                <td class="style19">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>

            </tr>
        </table>
        <span class="style5">
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" Font-Bold="True" 
            Font-Size="Medium" style="color: #FF0000" Width="373px" 
            ValidationGroup="1" />
        </span>
    </asp:Panel>
    <div class="style2">
    <asp:Panel ID="pnlGirdi" runat="server" Height="141px" Width="822px" 
            style="margin-top: 42px">
        <span class="style21">HOŞGELDİNİZ..!!</span><br class="style21" />
        <asp:Label ID="lblKullanici" runat="server" CssClass="style21"></asp:Label>
        <span class="style21">&nbsp;<br />
        <br />
        Giriş Başarılı...</span><br class="style21" />
        <br class="style21" />
        <span class="style21">Sistemden Çıkmak İçin &quot;Güvenli Çıkış&quot; butonuna basınız..</span><br />
        <br />
        <br />
        <table class="style23">
            <tr>
              
                <td>
                    <strong>
                    <asp:Button ID="Button1" runat="server" BackColor="#666699" Height="50px" 
                        onclick="Button1_Click" style="font-weight: 700; font-size: x-large" 
                        Text="ANASAYFA" Width="347px" />
                    </strong>
                </td>
            </tr>
            <tr>
               
                <td>
                    <strong>
                    <asp:Button ID="btncik" runat="server" BackColor="#FF9933" Height="50px" 
                        onclick="btncik_Click" style="font-weight: 700; font-size: x-large" 
                        Text="GÜVENLİ ÇIKIŞ" Width="345px" />
                    </strong>
                </td>
            </tr>
            <tr>
               
                <td>
                    <strong>
                    <asp:Button ID="Button2" runat="server" BackColor="#00CC99" Height="50px" 
                        onclick="Button2_Click" style="font-size: x-large; font-weight: 700" 
                        Text="KULLANICI İŞLEMLERİ" Width="345px" />
                    </strong>
                </td>
            </tr>
        
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
    
    </div>
    
    <p>
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large"></asp:Label>
    </p>
    
    </form>
</body>
</html>
