﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="admin_courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>

    <form id="form1" runat="server">
    <link rel="stylesheet" href="/style2.css" />

    <h1>Courses</h1><br /><br />
    <asp:Table ID="addcourse" runat="server" CellPadding="6" HorizontalAlign="Center" BackColor="#CCCCFF" HeaderStyle-CssClass="h" RowStyle-CssClass="r" BorderStyle="Solid" BorderColor="Black">
    <asp:TableRow>
        <asp:TableCell><b>Category</b></asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="category" runat="server" Width="175px" Height="23">
            <asp:ListItem Text="--select--" Value="" />
            <asp:ListItem Text="UG" /><asp:ListItem Text="PG" /><asp:ListItem Text="Database" />
            <asp:ListItem Text="Web Designing" /><asp:ListItem Text="Web Programming" />
            <asp:ListItem Text="Programming Language" /></asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>

    <asp:TableRow>
        <asp:TableCell><b>Course</b></asp:TableCell>
        <asp:TableCell><asp:TextBox ID="course" runat="server" /></asp:TableCell>
    </asp:TableRow>

    <asp:TableRow>
        <asp:TableCell><b>Fees</b></asp:TableCell>
        <asp:TableCell><asp:TextBox ID="fees" runat="server" /></asp:TableCell>
    </asp:TableRow>

    <asp:TableRow>
        <asp:TableCell><b>Duration</b></asp:TableCell>
        <asp:TableCell><asp:TextBox ID="duration" runat="server" /></asp:TableCell>
    </asp:TableRow>

    <asp:TableRow>
        <asp:TableCell></asp:TableCell>
        <asp:TableCell><asp:Button ID="add" runat="server" Text="Add Course" OnClick="add_Click" BackColor="#006393" ForeColor="White" Font-Size="Medium" Height="30px" /></asp:TableCell>
    </asp:TableRow>

    </asp:Table><br />
        
        <br /><br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="10" Width="100%" AutoGenerateDeleteButton="True" DataKeyNames="id" HeaderStyle-CssClass="h" RowStyle-CssClass="r">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" SortExpression="id" />
                <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                <asp:BoundField DataField="course" HeaderText="Course" SortExpression="course" />
                <asp:BoundField DataField="fees" HeaderText="Fees" SortExpression="fees" />
                <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" SelectCommand="SELECT [id], [category], [course], [fees], [duration] FROM [courses]" DeleteCommand="DELETE FROM [courses] WHERE [id] = @id"></asp:SqlDataSource>
    </form>
</body>
</html>
</asp:Content>

