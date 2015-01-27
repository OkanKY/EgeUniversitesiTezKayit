
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Kullanici.aspx.cs" Inherits="Kullanici" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style4
        {
            color: #FF0066;
        }
        .style7
        {
            width: 40%;
            height: 196px;
        }
        .style10
        {
            height: 1px;
        }
        .style6
        {
            color: #CC00FF;
        }
        .style11
        {
            width: 98%;
            height: 235px;
            margin-left: 1px;
        }
        .style14
        {
            width: 78%;
            height: 179px;
        }
        .style15
        {
            width: 309px;
        }
        .style16
        {
            width: 582px;
        }
        .style17
        {
            height: 99px;
        }
        .style18
        {
            width: 309px;
            height: 99px;
        }
        .style19
        {
            height: 20px;
        }
        .style20
        {
            width: 309px;
            height: 20px;
        }
        .auto-style1 {
            height: 171px;
        }
        .auto-style2 {
            width: 309px;
            height: 171px;
        }
        .auto-style3 {
            width: 294px;
        }
        </style>
</head>
<body background="img/body.jpg">
    <form id="form1" runat="server">
    <p>
        <span class="style4"><br />
        <asp:Image ID="Image1" runat="server" Height="93px" 
            ImageUrl="~/image/PNGLER/access.jpg" Width="103px" />
        </span>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            style="color: #CC00CC" Text="KULLANICI İŞLEMLERİ SAYFASI"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style6">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
            style="color: #CC00CC" Text="HOŞGELDİNİZ"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<asp:Label ID="Label1" runat="server" 
            Text="Label" CssClass="style6" Font-Size="X-Large"></asp:Label>
        &quot;&nbsp;&nbsp;&nbsp; </span></p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label4" runat="server" 
            style="font-size: x-large; color: #003399" Text="İŞLEMLER LİSTESİ"></asp:Label>
    </p>
    <table class="style14">
        <tr>
            <td class="auto-style3">
    <table class="style7">
        <tr>
            <td class="style10">
                <table class="style11">
                    <tr>
                        <td class="style19">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="56px" 
                                ImageUrl="~/image/PNGLER/yeni_kayit.png" Width="75px" />
                        </td>
                        <td class="style20">
                <asp:Button ID="Button1" runat="server" Height="60px" Text="ŞİFRE DEĞİŞTİRME" 
                    Width="220px" PostBackUrl="~/sifreislemleri.aspx" Font-Bold="True" 
                                Font-Size="Medium" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="51px" 
                                ImageUrl="~/image/PNGLER/HP-TV-Dock-512.png" Width="73px" />
                        </td>
                        <td class="auto-style2">
                <asp:Button ID="Button3" runat="server" Height="58px" Text="ANASAYFA" 
                    Width="220px" PostBackUrl="~/index2.aspx" Font-Bold="True" Font-Size="Medium" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
   
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
    <br />
    <br />
    <br />
    
        &nbsp;<asp:Label ID="Label5" runat="server" 
        Text="YÖNETİCİ OLARAK GİRİŞ YAPILDI...SAYFAYA KAYITLI OLAN DİĞER ÜYELERİMİZ.."></asp:Label>
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
    <asp:Panel ID="Panel1" runat="server" Width="504px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
            CellPadding="4" DataKeyNames="uyeid" DataSourceID="AccessDataSource1" 
            EmptyDataText="There are no data records to display." GridLines="Horizontal" 
            Width="464px" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="uyeid" HeaderText="uyeid" ReadOnly="True" 
                    SortExpression="uyeid" />
                <asp:BoundField DataField="AdSoyad" HeaderText="AdSoyad" 
                    SortExpression="AdSoyad" />
                <asp:BoundField DataField="KullaniciAdi" HeaderText="KullaniciAdi" 
                    SortExpression="KullaniciAdi" />
                <asp:BoundField DataField="Sifre" HeaderText="Sifre" SortExpression="Sifre" />
                <asp:BoundField DataField="Eposta" HeaderText="Eposta" 
                    SortExpression="Eposta" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
            <div>
    <h2>Dosyalar</h2>

<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" EmptyDataText = "No files uploaded">
    <Columns>
        <asp:BoundField DataField="Text" HeaderText="File Name" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("Value") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID = "lnkDelete" Text = "Delete" CommandArgument = '<%# Eval("Value") %>' runat = "server" OnClick = "DeleteFile" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

    </div>
    </asp:Panel>
    </form> 
    </body>
</html>
