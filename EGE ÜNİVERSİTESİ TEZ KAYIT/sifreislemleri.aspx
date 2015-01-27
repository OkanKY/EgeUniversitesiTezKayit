<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sifreislemleri.aspx.cs" Inherits="sifreislemleri" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style6
        {
            color: #CC00FF;
        }
        .style7
        {
            width: 44%;
            height: 147px;
        }
        .style9
        {
            width: 241px;
            height: 52px;
        }
        .style10
        {
            height: 52px;
        }
        .style11
        {
            width: 65%;
        }
        .style12
        {
            width: 241px;
            height: 102px;
        }
        .style13
        {
            height: 102px;
        }
        .style14
        {
            width: 241px;
            height: 46px;
        }
        .style15
        {
            height: 46px;
        }
        .style16
        {
            width: 53px;
        }
    </style>
</head>
<body background="img/body.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <span class="style6">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
            style="color: #CC00CC" Text="HOŞGELDİNİZ"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;</span><asp:Label 
        ID="Label1" runat="server" Text="Label" CssClass="style6" Font-Size="X-Large"></asp:Label>
        &quot;<br />
    <br />
    <br />
    <br />
    <table class="style7">
        <tr>
            <td class="style9">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                    style="color: #6666FF" Text="ESKİ ŞİFRENİZİ GİRİNİZ"></asp:Label>
            </td>
            <td class="style10">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" MaxLength="6" 
                    TextMode="Password" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
                    style="color: #6666FF" Text="YENİ ŞİFRENİZİ GİRİNİZ"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" MaxLength="6" 
                    TextMode="Password" Width="205px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                <table class="style11">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="57px" 
                                ImageUrl="~/image/PNGLER/yeni_kayit.png" Width="84px" />
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                                Height="58px" style="margin-left: 0px" Text="KAYDET" Width="119px" 
                                onclick="Button1_Click" BorderStyle="Ridge" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <p style="color: #FF0000">
        ESKİ ŞİFRENİZİ DOĞRU GİRDİĞİNİZE EMİN OLUN AKSİ HALDE DEĞİŞMEZ.</p>
    <table class="style7">
        <tr>
            <td class="style10">
                <table class="style11">
                   
                    <tr>
                        <td class="style16">
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="51px" 
                                ImageUrl="~/image/PNGLER/HP-TV-Dock-512.png" Width="73px" />
                        </td>
                        <td>
                <asp:Button ID="Button3" runat="server" Height="58px" Text="ANASAYFA" 
                    Width="220px" PostBackUrl="~/index2.aspx" Font-Bold="True" Font-Size="Medium" 
                                BorderStyle="Ridge" style="font-size: large" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        
        
    </table>
    </form>
</body>
</html>
