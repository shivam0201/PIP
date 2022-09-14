<%@ Page Title="" Language="C#" MasterPageFile="~/NewsMaster.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>--%>
    <style>
        .flip-card {
            background-color: transparent;
            width: 300px;
            height: 200px;
            border: 1px solid #f1f1f1;
            perspective: 1000px; /* Remove this if you don't want the 3D effect */
        }

        /* This container is needed to position the front and back side */
        .flip-card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            text-align: center;
            transition: transform 0.8s;
            transform-style: preserve-3d;
        }

        /* Do an horizontal flip when you move the mouse over the flip box container */
        .flip-card:hover .flip-card-inner {
            transform: rotateY(180deg);
        }

        /* Position the front and back side */
        .flip-card-front, .flip-card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            -webkit-backface-visibility: hidden; /* Safari */
            backface-visibility: hidden;
        }

        /* Style the front side (fallback if image is missing) */
        .flip-card-front {
            background-color: #bbb;
            color: black;
        }

        /* Style the back side */
        .flip-card-back {
            background-color: dodgerblue;
            color: white;
            transform: rotateY(180deg);
        }

        h3 {
            text-align: center;
            background-color: #d49e9e38;
            color: green;
        }

        .box {
            box-shadow: 0px 12px 17px 6px;
        }

        .slideanim {
            visibility: hidden;
        }

        .slide {
            animation-name: slide;
            -webkit-animation-name: slide;
            animation-duration: 1s;
            -webkit-animation-duration: 1s;
            visibility: visible;
        }

        @keyframes slide {
            0% {
                opacity: 0;
                transform: translateY(70%);
            }

            100% {
                opacity: 1;
                transform: translateY(0%);
            }
        }

        @-webkit-keyframes slide {
            0% {
                opacity: 0;
                -webkit-transform: translateY(70%);
            }

            100% {
                opacity: 1;
                -webkit-transform: translateY(0%);
            }
        }

        @media screen and (max-width: 768px) {
            .col-sm-4 {
                text-align: center;
                margin: 25px 0;
            }

            .btn-lg {
                width: 100%;
                margin-bottom: 35px;
            }
        }

        @media screen and (max-width: 480px) {
            .logo {
                font-size: 150px;
            }
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="jumbotron jumbotron-fluid" style="background-color: pink; margin-top: 0px; background-color: white; margin-top: -20px; margin-left: -28px; padding-top: 1px; margin-bottom: -10px; padding-bottom: 2px; padding-right: 0px;">

        <div id="myCarousel" class="carousel slide" data-ride="carousel" style="background-color: transparent;">

            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img src="Content/c3.jpg" alt="Los Angeles" style="width: 100%; height: 800px;" />
                </div>
                <div class="item">
                    <img src="Content/c2.jpg" alt="Chicago" style="width: 100%; height: 800px;" />
                </div>
                <div class="item">
                    <img src="Content/c1.jpg" alt="New york" style="width: 100%; height: 800px;" />
                </div>
                <div class="item">
                    <img src="Content/c3.jpg" alt="New york" style="width: 100%; height: 800px;" />

                </div>
                <div class="item">
                    <img src="Content/c2.jpg" alt="New york" style="width: 100%; height: 800px;" />
                </div>
                <div class="item">
                    <img src="Content/c1.jpg" alt="New york" style="width: 100%; height: 800px;" />
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 15px;">
            <div class="col-md-8">
                <video autoplay muted loop id="myVideo" style="width: 100%; height: 600px;">
                    <source src="Content/NEW.mp4" type="video/mp4" />
                </video>
            </div>
            <div class="col-md-4" style="border: 5px solid; overflow: scroll; height: 600px; padding-right: 15px;">
                <center><h1 style="background-color:transparent; color:green;background-color:lightblue;">Headlines</h1></center>
                <hr style="color: red;" />
                <asp:Repeater runat="server" ID="headlines">
                    <ItemTemplate>
                        <div class="row">
                            <a href="../Category/news-disp.aspx?id=<%#Eval("Id")%>">
                                <h2><%#Eval("title") %></h2>
                            </a>
                        </div>
                        <hr />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <marquee direction="left"><h3>category</h3></marquee>

        <div class="container">
            <div class="row slideanim">
                <a href="category/crime.aspx">
                    <div class="col-md-4 box">
                        <img src="Content/cd.jpg" class="img-rounded img-responsive" height="195" />
                        <h3>CRIME </h3>
                        <blockquote>
                            <p>
                                Get to know about all the current crimes happening around you. Stay up to date regarding
                                the incidents.
                            </p>
                            <hr />
                            <footer>SHIVAM MISHRA</footer>
                        </blockquote>
                    </div>
                </a>
                <a href="category/entertainment.aspx">
                    <div class="col-md-4 box">
                        <img src="Content/ed.jpg" class="img-rounded img-responsive" height="195" />
                        <h3>ENTERTAINMENT </h3>
                        <blockquote>
                            <p>
                                Providing you the best entertainment news.Get to know about celebs,bollywood buzz,hollywood,etc.
                            </p>
                            <hr />
                            <footer>SANSAR TIWARI</footer>
                        </blockquote>
                    </div>
                </a>
                <a href="category/finance.aspx">
                    <div class="col-md-4 box">
                        <img src="Content/fd.jpg" class="img-rounded img-responsive" height="195" />
                        <h3>FINANCE </h3>
                        <blockquote>
                            <p>
                                Keep a check on the global signals to help manage your finance and stay carefree.
                            </p>
                            <hr />
                            <footer>SHUBHAM CHAURASIA</footer>
                        </blockquote>
                    </div>
                </a>
                <div class="container">
                </div>
            </div>
            <br />
            <div class="row slideanim">
                <a href="category/politics.aspx">
                    <div class="col-md-4 box">
                        <img src="Content/pd.jpg" class="img-rounded img-responsive" />
                        <h3>POLITICS </h3>
                        <blockquote>
                            <p>
                                Are you updated with the government policies?If no,check us out to know about parties
                                and schemes.
                            </p>
                            <hr />
                            <footer>SHIVSAGAR SAHU</footer>
                        </blockquote>
                    </div>
                </a>
                <div class="col-md-4 box">
                    <a href="category/sports.aspx">
                        <img src="Content/sd.jpg" class="img-rounded img-responsive" />
                        <h3>SPORTS </h3>
                        <blockquote>
                            <p>
                                Check how our teams are making us proud around the globe.Local players are a gem
                                too, get to know about them all.
                            </p>
                            <hr />
                            <footer>SAVITA SAROJ</footer>
                        </blockquote>
                    </a>
                </div>
                <a href="category/technology.aspx">
                    <div class="col-md-4 box">
                        <img src="Content/td.jpg" class="img-rounded img-responsive" />
                        <h3>TECHNOLOGY </h3>
                        <blockquote>
                            <p>
                                You ever wondered how advance this age is. Click here to check out how technology
                                is changing our lives.
                            </p>
                            <hr />
                            <footer>PRABHAKAR MISHRA</footer>
                        </blockquote>
                    </div>
                </a>
            </div>
        </div>
        <center><h1 style="color:navy;"><i>EDITORS </h1></i></marquee>

        <div class="row slideanim" style="margin-left: 0px; margin-right: 0px;">

            <div class="col-md-4 box">
                <div class="flip-card carousel-inner">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Content/arnab.jpg" alt="Avatar" style="width: 100%; height: inherit;"
                                class=" img-round img-responsive">
                        </div>
                        <div class="flip-card-back">
                            <h2>Arnab Goswami</h2>
                            <p>Crime Editor</p>
                            <p>3X IMPACT JOURNALIST OF THE YEAR</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 box">
                <div class="flip-card carousel-inner">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Content/barkha.jpg" alt="Avatar" style="width: 100%; height: inherit;"
                                class="img-responsive">
                        </div>
                        <div class="flip-card-back">
                            <h2>Barkha Dutt</h2>
                            <p>Finance Editor</p>
                            <p>4X BUSINESS AND FINANCE JOURNALIST OF THE YEAR</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 box">
                <div class="flip-card carousel-inner">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Content/rajat.jpg" alt="Avatar" style="width: 100%; height: inherit;"
                                class="img-responsive">
                        </div>
                        <div class="flip-card-back">
                            <h2>Rajat Sharma</h2>
                            <p>Politics Editor</p>
                            <p>2X COLUMNIST OF THE YEAR DAILY PAPERS.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <br />
        <div class="row slideanim" style="margin-left: 0px; margin-right: 0px;">

            <div class="col-md-4 box">
                <div class="flip-card carousel-inner">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Content/ravish.jpg" alt="Avatar" style="width: 100%; height: inherit;"
                                class=" img-round img-responsive">
                        </div>
                        <div class="flip-card-back">
                            <h2>Ravish Kumar</h2>
                            <p>Entertainment Editor</p>
                            <p>5X REPORTING COMMUNITIES AWARD</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 box">
                <div class="flip-card carousel-inner">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Content/rohit.jpg" alt="Avatar" style="width: 100%; height: inherit;"
                                class="img-responsive">
                        </div>
                        <div class="flip-card-back">
                            <h2>Rohit Sardana</h2>
                            <p>Sports Editor</p>
                            <p>1X SPORTS JOURNALIST OF THE YEAR</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 box">
                <div class="flip-card carousel-inner">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Content/sudhir.jpg" alt="Avatar" style="width: 100%; height: inherit;"
                                class="img-responsive">
                        </div>
                        <div class="flip-card-back">
                            <h2>Sudhir Chaudhary</h2>
                            <p>Technology Editor</p>
                            <p>2X SPECIALIST WRITER</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            // Add smooth scrolling to all links in navbar + footer link
            $(".navbar a, footer a[href='#myPage']").on('click', function (event) {
                // Make sure this.hash has a value before overriding default behavior
                if (this.hash !== "") {
                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 900, function () {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                } // End if
            });

            $(window).scroll(function () {
                $(".slideanim").each(function () {
                    var pos = $(this).offset().top;

                    var winTop = $(window).scrollTop();
                    if (pos < winTop + 600) {
                        $(this).addClass("slide");
                    }
                });
            });
        })

        var video = document.getElementById("myVideo");
        var btn = document.getElementById("myBtn");

        function myFunction() {
            if (video.paused) {
                video.play();
                btn.innerHTML = "Pause";
            } else {
                video.pause();
                btn.innerHTML = "Play";
            }
        }
    </script>


</asp:Content>

