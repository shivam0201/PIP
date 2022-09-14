<%@ Page Title="" Language="C#" MasterPageFile="~/NewsMaster.master" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Content/StyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:FormView>
        <section id="contact">
            <div class="contact-box">
                <div class="contact-links">
                    <h2 style="color: white;">CONTACT</h2>
                    <div class="links">

                        <a href="#" class="fa fa-facebook"></a>
                        <a href="#" class="fa fa-twitter"></a>
                        <a href="#" class="fa fa-youtube"></a>
                        <a href="#" class="fa fa-instagram"></a>
                    </div>
                </div>
            </div>
            <div class="contact-form-wrapper">
                <form>
                    <div class="form-item">
                        <asp:TextBox runat="server" ID="ttl"  placeholder="query title" > </asp:TextBox>
                        <label>Title:</label>
                    </div>
                    <br />    <br />
                    <div class="form-item">
                        <asp:TextBox runat="server" ID="email"  placeholder="enter your email" > </asp:TextBox>
                        <label>Email:</label>
                    </div>
                    <br />    <br />
                    <div class="form-item">
                        <asp:TextBox runat="server" ID="msg"  placeholder="message" > </asp:TextBox>
                        <label>Message:</label>
                    </div>
                    <br />    <br />
                    <button class="submit-btn">Send</button>
                </form>
            </div>
            
        </section>
    </asp:FormView>
</asp:Content>

