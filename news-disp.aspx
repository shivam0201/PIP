<%@ Page Title="" Language="C#" MasterPageFile="~/NewsMaster.master" AutoEventWireup="true" CodeFile="news-disp.aspx.cs" Inherits="news_disp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="jumbotron" style="background-color: transparent;">
        <div class="container">
            <asp:Label ID="lblalert" CssClass="txt-danger" runat="server" />
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="row">
                    <center><asp:Label ID="lbltitle" CssClass="text-center" runat="server" /></center> 
                </div>
                <br />
                <div class="row">
                    <asp:Image ID="piImage" runat="server" width="631px" CssClass="img-responsive"/>
                </div>

                <hr />
                <div class="row">
                    <asp:Label ID="lbldesc" runat="server" />
                </div>
                <div class="row">
                    <asp:Label ID="lbldate" runat="server" style="float:right;" />
                </div>
                <div class="row">
                    <iframe id="ytvideo" class="responsive-iframe" runat="server" width="560" height="315" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</asp:Content>


