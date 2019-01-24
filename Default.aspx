<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Test_Zadatak.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pocetna stranica</title>
    <style>
        .tb {
             border: 1px solid #AAAAAA;
             width: 550px;
             margin: 0 auto;
             background-color: lightblue;
        }   
        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
}
       
    </style>
</head>
<body>
    <h1 align="center">Test zadatak</h1>
    <form id="form1" runat="server">
        <div>
            <table class="tb">
                <tr>
                    <td>
                        <asp:Label ID="LbIme" runat="server" Text="Ime"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TbIme" runat="server" Width="300px" autocomplete="off"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="LbPrezime" runat="server" Text="Prezime"></asp:Label></td>
                    <td><asp:TextBox ID="TbPrezime" runat="server" Width="300px" autocomplete="off"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="LbAdresa" runat="server" Text="Adresa"></asp:Label></td>
                    <td><asp:TextBox ID="TbAdresa" runat="server" TextMode="MultiLine" Width="300px" Height="50px" autocomplete="off"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="LbNeto" runat="server" Text="Neto"></asp:Label></td>
                    <td><asp:TextBox ID="TbNeto" runat="server" autocomplete="off"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="BtnBrutoIznos" runat="server" Text="Izracunaj bruto" CssClass="button" OnClick="BtnBrutoIznos_Click"/></td>
                    <td><asp:TextBox ID="TbBrutoIznos" runat="server" ReadOnly="True" Enabled="False"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><asp:Button ID="BtnSacuvaj" runat="server" Text="Sacuvaj" CssClass="button" OnClick="BtnSacuvaj_Click" Width="91px" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
