<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="replyquery.aspx.cs" Inherits="admin_replyquery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="Form1" runat="server">
    <link rel="stylesheet" href="/style2.css" />
        <h1 align="center">Reply to Student Query</h1><br /><br />

        <asp:Table ID="replyquery" runat="server" CellPadding="6" HorizontalAlign="Center" BackColor="#CCCCFF" HeaderStyle-CssClass="h" RowStyle-CssClass="r" BorderStyle="Solid" BorderColor="Black">
        <asp:TableRow>
            <asp:TableCell><b>Query</b></asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="Query" TextMode="MultiLine" Width="220" Font-Names="Arial" Height="60" ReadOnly="true"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><b>Reply</b></asp:TableCell>
            <asp:TableCell><asp:TextBox runat="server" ID="Reply" TextMode="MultiLine" Width="220" Font-Names="Arial" Height="60"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell></asp:TableCell>
            <asp:TableCell><asp:Button ID="send" runat="server" Text="Send" OnClick="send_Click" BackColor="#006393" ForeColor="White" Font-Size="Medium" Height="30px" Width="100" /></asp:TableCell>
        </asp:TableRow>
        </asp:Table>
        <input type="hidden" id="id" runat="server" />
    </form>
</body>
</html>
</asp:Content>

