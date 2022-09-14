<%@ Page Title="" Language="C#" MasterPageFile="~/NewsMaster.master" AutoEventWireup="true" CodeFile="About-us.aspx.cs" Inherits="About_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .hover-img {
            background-color: #000;
            color: #fff;
            display: inline-block;
            margin: 8px;
            max-width: 320px;
            min-width: 240px;
            overflow: hidden;
            position: relative;
            text-align: center;
            width: 100%;
        }

            .hover-img * {
                box-sizing: border-box;
                transition: all 0.45s ease;
            }

            .hover-img:before,
            .hover-img:after {
                background-color: rgba(0, 0, 0, 0.5);
                border-top: 32px solid rgba(0, 0, 0, 0.5);
                border-bottom: 32px solid rgba(0, 0, 0, 0.5);
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                content: '';
                transition: all 0.3s ease;
                z-index: 1;
                opacity: 0;
                transform: scaleY(2);
            }

            .hover-img img {
                vertical-align: top;
                max-width: 100%;
                backface-visibility: hidden;
            }

            .hover-img figcaption {
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                align-items: center;
                z-index: 1;
                display: flex;
                flex-direction: column;
                justify-content: center;
                line-height: 1.1em;
                opacity: 0;
                z-index: 2;
                transition-delay: 0.1s;
                font-size: 24px;
                font-family: sans-serif;
                font-weight: 400;
                letter-spacing: 1px;
                text-transform: uppercase;
            }

            .hover-img:hover:before,
            .hover-img:hover:after {
                transform: scale(1);
                opacity: 1;
            }

            .hover-img:hover > img {
                opacity: 0.7;
            }

            .hover-img:hover figcaption {
                opacity: 1;
            }

        #myDiv {
            display: none;
            text-align: center;
        }

        /* Add animation to "page content" */
        .animate-bottom {
            position: relative;
            -webkit-animation-name: animatebottom;
            -webkit-animation-duration: 1s;
            animation-name: animatebottom;
            animation-duration: 1s;
        }

        @-webkit-keyframes animatebottom {
            from {
                bottom: -100px;
                opacity: 0;
            }

            to {
                bottom: 0px;
                opacity: 1;
            }
        }

        @keyframes animatebottom {
            from {
                bottom: -100px;
                opacity: 0;
            }

            to {
                bottom: 0;
                opacity: 1;
            }
        }

        .img:hover {
            zoom: 5;
        }

        .shdow {
            /*width: 100px;
            height: 100px;*/
            /*background-color:;*/
            color: white;
            animation: mymove 5s infinite;
        }

        @keyframes mymove {
            50% {
                box-shadow: 10px 20px 30px maroon;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="jumbotron warning animate-bottom" style="background-color: transparent;">
        <h1 class="text-center text-success">S8-News Developers</h1>
        <br />
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="container">
                        <div class="row">
                            <figure class="hover-img shdow" style="width: 200px; border-radius: 5px;">
                                <img src="Content/shivam.jpg" class="img-responsive img-rounded img"/>
                                <figcaption>
                                    <h3 style="font-family: 'Lucida Calligraphy'; color: cornflowerblue;">Shivam Mishra</h3>
                                    <h3>Title: Leader</h3>
                                    <h3></h3>
                                </figcaption>
                            </figure>
                        </div>
                    </div>

                </div>
                <div class="col-md-3"></div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <div class="container">
                        <div class="row">
                            <figure class="hover-img shdow" style="width: 200px; border-radius: 5px;">
                                <img src="Content/shivam.jpg" class="img-responsive img-rounded img" />
                                <figcaption>
                                    <h3 style="font-family: 'Lucida Calligraphy'; color: cornflowerblue;">Shivam Mishra</h3>
                                    <h3>Title: Leader</h3>
                                    <h3></h3>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="container">
                        <div class="row">
                            <figure class="hover-img shdow" style="width: 200px; border-radius: 5px;">
                                <img src="Content/shivam.jpg" class="img-responsive img-rounded img" />
                                <figcaption>
                                    <h3 style="font-family: 'Lucida Calligraphy'; color: cornflowerblue;">Shivam Mishra</h3>
                                    <h3>Title: Leader</h3>
                                    <h3></h3>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <div class="container">
                        <div class="row">
                            <figure class="hover-img shdow" style="width: 200px; border-radius: 5px; box-shadow: inherit;">
                                <img src="Content/shivam.jpg" class="img-responsive img-rounded img" />
                                <figcaption>
                                    <h3 style="font-family: 'Lucida Calligraphy'; color: cornflowerblue;">Shivam Mishra</h3>
                                    <h3>Title: Leader</h3>
                                    <h3></h3>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="container">
                        <div class="row">
                            <figure class="hover-img shdow" style="width: 200px; border-radius: 5px;">
                                <img src="Content/shivam.jpg" class="img-responsive img-rounded img" />
                                <figcaption>
                                    <h3 style="font-family: 'Lucida Calligraphy'; color: cornflowerblue;">Shivam Mishra</h3>
                                    <h3>Title: Leader</h3>
                                    <h3></h3>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>
</asp:Content>

