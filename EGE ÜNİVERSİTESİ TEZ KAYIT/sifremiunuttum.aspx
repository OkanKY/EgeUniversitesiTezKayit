<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sifremiunuttum.aspx.cs" Inherits="sifremiunuttum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 41%;
            height: 256px;
        }
        .style2
        {
            width: 253px;
        }
    </style>
</head>
<body background="img/body.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
            style="color: #FF0066" 
            Text="ŞİFRENİZİ YENİLEMEK İÇİN BİLGİLERİNİZ DOLDURUNUZ..."></asp:Label>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="ADINIZ SOYADINIZ"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFCC99" Height="35px" 
                        Width="200px" Font-Bold="True" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="KULLANICI ADINIZ"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFCC99" Height="35px" 
                        Width="200px" Font-Bold="True" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="E-POSTA "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#FFCC99" Height="35px" 
                        Width="200px" Font-Bold="True" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="-POSTA ADRESİ BOŞ GEÇİLEMEZ">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr> <td> 
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="YENİ ŞİFRE"></asp:Label>
                </td><td>
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="#FFCC99" Height="35px" 
                        Width="200px" Font-Bold="True" Font-Size="Large" MaxLength="6" 
                        TextMode="Password"></asp:TextBox>
                </td></tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <script language="JavaScript">

                        function dogrulama() {
                            
                            
                                alert(" YENİ ŞİFRENİZ E-POSTA EDRESİNİZE GÖNDERİLMİŞTİR İYİ GÜNLER DİLERİZ..")
                                window.location = "index.aspx";
                            }
                            
                           
                        

</script>
     
     
     
               
<script language="JavaScript">

    function dogrulama() {


        alert(" Yeni Şifre Talebiniz Alınmıştır Ve Eposta Adresinize Gönderilmiştir...")
            window.location = "index.aspx";
        }
        
           
        
    
</script>
               

                        <asp:Button ID="Button1" runat="server" Height="39px" onclick="Button1_Click" 
                        Text="ŞİFREMİ YENİLE" Width="164px" Font-Bold="True" Font-Size="Large" />
                </td>
            </tr>
        </table>
    
    </div>
    <p>

    <asp:ImageButton ID="ImageButton1" runat="server" Height="48px" 
        ImageUrl="~/img/anasayfa.jpg" PostBackUrl="~/index.aspx" Width="174px" 
            onclick="ImageButton1_Click" />

    </p>
    </form>
</body>
</html>
