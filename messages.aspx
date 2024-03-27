<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="messages.aspx.cs" Inherits="admin_messages" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <link rel="stylesheet" href="/style2.css" />

    <h1>Messages</h1><br /><br />
    
    <asp:Table ID="addcourse" runat="server" CellPadding="6" HorizontalAlign="Center" BackColor="#CCCCFF" HeaderStyle-CssClass="h" RowStyle-CssClass="r" BorderStyle="Solid" BorderColor="Black">
    <asp:TableRow>
        <asp:TableCell><b>Subject</b></asp:TableCell>
        <asp:TableCell><asp:TextBox ID="subject" runat="server" /></asp:TableCell>
    </asp:TableRow>

    <asp:TableRow>
        <asp:TableCell><b>Message</b></asp:TableCell>
        <asp:TableCell><asp:TextBox ID="message" runat="server" TextMode="MultiLine" Width="175" Font-Names="Arial" /></asp:TableCell>
    </asp:TableRow>

    <asp:TableRow>
        <asp:TableCell><b>Date</b></asp:TableCell>
        <asp:TableCell><asp:TextBox ID="date" runat="server" TextMode="Date" Width="175" Font-Names="Arial" /></asp:TableCell>
    </asp:TableRow>

    <asp:TableRow>
        <asp:TableCell></asp:TableCell>
        <asp:TableCell><asp:Button ID="send" runat="server" Text="Send" OnClick="send_Click" BackColor="#006393" ForeColor="White" Font-Size="Medium" Height="30px" /></asp:TableCell>
    </asp:TableRow>

    </asp:Table><br />
        
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="10" Width="100%" HeaderStyle-CssClass="h" RowStyle-CssClass="r">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message" />
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" SelectCommand="SELECT * FROM [messages]"></asp:SqlDataSource>
    </form>
</asp:Content>

