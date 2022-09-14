<%@ Page Title="" Language="C#" MasterPageFile="~/NewsMaster.master" AutoEventWireup="true" CodeFile="news-search.aspx.cs" Inherits="news_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Label runat="server" ID="res"></asp:Label>
        <div class="jumbotron" style="background-color:transparent;">
        <div class="container">
            <div class="row">
                <asp:Repeater ID="gv1" runat="server">
                    <ItemTemplate>
                        <a href="../Category/news-disp.aspx?id=<%#Eval("Id")%>">
                            <div class="col-md-4 box hov">
                                <h3><%#Eval("title") %> </h3>
                                <asp:Image alt="" runat="server" ID="Image2" Visible='<%# Eval("image").ToString() != "" ? true:false %>' ImageUrl='<%# Eval("image").ToString() == "" ? "img/favicon.ico": "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("image")) %>' class="img-responsive" Style="max-width: 300px;" />
                                <blockquote>
                                    <p><%#Eval("description").ToString() + "..." %></p>
                                </blockquote>
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>




</asp:Content>

