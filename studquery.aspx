<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="studquery.aspx.cs" Inherits="admin_studquery" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <link rel="stylesheet" href="/style2.css" />
        
    <h1>Student Query</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="10" Width="100%" HeaderStyle-CssClass="h" RowStyle-CssClass="r">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="mno" HeaderText="Mno" SortExpression="mno" />
                <asp:BoundField DataField="query" HeaderText="Query" SortExpression="query" />
                <asp:BoundField DataField="reply" HeaderText="Reply" SortExpression="reply" />
                <asp:HyperLinkField HeaderText="Reply Query" Text="Reply" DataNavigateUrlFields="id" DataNavigateUrlFormatString="replyquery.aspx?id={0}" />
            </Columns>

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" SelectCommand="SELECT * FROM [studquery]"></asp:SqlDataSource>
    </form>
</asp:Content>

