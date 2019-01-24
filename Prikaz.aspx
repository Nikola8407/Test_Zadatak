<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prikaz.aspx.cs" Inherits="Test_Zadatak.Prikaz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT * FROM [tableinfo]"></asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Br." ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                <asp:BoundField DataField="ime" HeaderText="Ime" SortExpression="ime" />
                <asp:BoundField DataField="prezime" HeaderText="Prezime" SortExpression="prezime" />
                <asp:BoundField DataField="adresa" HeaderText="Adresa" SortExpression="adresa" />
                <asp:BoundField DataField="neto" HeaderText="Neto iznos" SortExpression="neto" DataFormatString ="{0:N}"/>
                <asp:BoundField DataField="bruto" HeaderText="Bruto iznos" SortExpression="bruto" DataFormatString ="{0:N}"/>
                <asp:BoundField DataField="tr_pio" HeaderText="Radnik (PIO)" SortExpression="tr_pio" DataFormatString ="{0:N}"/>
                <asp:BoundField DataField="tr_zo" HeaderText="Radnik (Zravstveno O.)" SortExpression="tr_zo" DataFormatString ="{0:N}"/>
                <asp:BoundField DataField="tr_nez" HeaderText="Nezaposlenost" SortExpression="tr_nez" DataFormatString ="{0:N}"/>
                <asp:BoundField DataField="tp_pio" HeaderText="Poslodavac (PIO)" SortExpression="tp_pio" DataFormatString ="{0:N}"/>
                <asp:BoundField DataField="tp_zo" HeaderText="Poslodavac (Zravstveno O.)" SortExpression="tp_zo" DataFormatString ="{0:N}"/>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:Button ID="BtnPocetna" runat="server" Text="Pocetna" Width="91px" OnClick="BtnPocetna_Click" />
    </form>
</body>
</html>
