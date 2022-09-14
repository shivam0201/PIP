<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" enableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.2.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

           <%-- <section class="h-100 gradient-form" style="background-color: #eee;">--%>
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-xl-10">
                            <div class="card rounded-3 text-black">
                                <div class="row g-0">
                                    <div class="col-lg-6">
                                        <div class="card-body p-md-5 mx-md-4">

                                            <div class="text-center">
                                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp"
                                                    style="width: 185px;" alt="logo" />
                                                <h4 class="mt-1 mb-5 pb-1" style="font-family:'Lucida Calligraphy';">We are S8-news</h4>
                                            </div>
                                            <form>
                                                <p>Please login to your account</p>
                                                <%--<div class="form-outline mb-4">
                                                    <asp:Label runat="server" class="form-label" for="txt1">Name </asp:Label>
                                                    <asp:Textbox runat="server" type="text" id="txt1" class="form-control"
                                                        placeholder="Name"></asp:Textbox>
                                                    
                                                </div>--%>
                                                <asp:Label ID="Label1" runat="server" CssClass="text-center text-danger" style="color:red;"></asp:Label>


                                                <div class="form-outline mb-4">
                                                    <asp:Label runat="server" class="form-label" for="txt1">Editor ID</asp:Label>
                                                    <asp:Textbox runat="server" type="text" id="txt1" class="form-control"
                                                        placeholder="XXXXX" required></asp:Textbox>
                                                    
                                                </div>

                                                <div class="form-outline mb-4">
                                                    <asp:Label runat="server" class="form-label" for="txt2">Password</asp:Label>
                                                    <asp:Textbox runat="server" type="password" id="txt2" class="form-control" placeholder="*********" required></asp:Textbox>
                                                    
                                                </div>

                                                <div class="text-center pt-1 mb-5 pb-1">
                                                    <asp:Button runat="server" class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"  Text="Log in" OnClick="admin_Click">
                                                    </asp:Button>
                                                    <a class="text-muted" href="#!">Forgot password?</a>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                                        <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                                            <h4 class="mb-4">We are more than just a company</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <%--</section>--%>

        </div>
    </form>
</body>
</html>
</asp:FormView>