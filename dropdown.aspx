<%@ Page Title="" Language="C#" MasterPageFile="~/NewsMaster.master" AutoEventWireup="true" CodeFile="dropdown.aspx.cs" Inherits="dropdown" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="Server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:DropDownList ID="Drd1" runat="server">
        <asp:ListItem Value="0">select course</asp:ListItem>
        <asp:ListItem Value="1">BTech</asp:ListItem>
        <asp:ListItem Value="2">MCA</asp:ListItem>
        <asp:ListItem Value="3">MBA</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="Drd2" runat="server">
        <asp:ListItem Value="0">select branch</asp:ListItem>
        <asp:ListItem Value="1">CS</asp:ListItem>
        <asp:ListItem Value="2">IT</asp:ListItem>
        <asp:ListItem Value="3">EC</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="Drd3" runat="server">
        <asp:ListItem Value="0">FEE,Duration</asp:ListItem>
        <asp:ListItem Value="1">40K 4YEAR</asp:ListItem>
        <asp:ListItem Value="2">50K 4YEAR</asp:ListItem>
        <asp:ListItem Value="3">60K 4YEAR</asp:ListItem>
    </asp:DropDownList>

    <asp:Button ID="Button1" runat="server" Text="submit" CssClass="btn-primary" OnClick="Button1_Click"/>
    <h2>Course Details:</h2>
    <span>course name:</span>
    <asp:Label ID="lbl1" runat="server"></asp:Label><hr />
    <span>branch name:</span>
    <asp:Label ID="lbl2" runat="server"></asp:Label><hr />
    <span>Fee/Duration:</span>
    <asp:Label ID="lbl3" runat="server"></asp:Label><hr />
</asp:Content>

