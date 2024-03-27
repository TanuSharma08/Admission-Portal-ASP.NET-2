<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="lv_app.aspx.cs" Inherits="admin_lv_app" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <link rel="stylesheet" href="/style2.css" />
        
    <h1>Leave Application</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="10" Width="100%" HeaderStyle-CssClass="h" RowStyle-CssClass="r">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="mno" HeaderText="Mobile No." SortExpression="mno" />
                <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                <asp:BoundField DataField="from_dt" HeaderText="From Date" SortExpression="from_dt" />
                <asp:BoundField DataField="to_dt" HeaderText="To Date" SortExpression="to_dt" />
                <asp:BoundField DataField="lv_reason" HeaderText="Leave Reason" SortExpression="lv_reason" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                <asp:HyperLinkField HeaderText="Grant" Text="Grant" DataNavigateUrlFields="id" DataNavigateUrlFormatString="grantlv.aspx?id={0}" />
            </Columns>

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" SelectCommand="SELECT * FROM [lv_app]"></asp:SqlDataSource>
    </form>
</asp:Content>

