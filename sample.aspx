<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sample.aspx.cs" Inherits="sample" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">
            <section class="index-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div id="ri-grid" class="ri-grid ri-grid-size-1 ri-shadow">
                            <img class="ri-loading-image" src="images/loading.gif"/>
                            <ul>
                                    <li><a href="#"><img src="Content/images/portfolio/5.jpg" alt="" height="139" width="138"/></a></li>
									<li><a href="#"><img src="Content/images/portfolio/5_2.jpg" alt="" height="139" width="138"/></a></li>
									<li><a href="#"><img src="Content/images/portfolio/5_3.jpg" alt="" height="139" width="138"/></a></li>
									<li><a href="#"><img src="Content/images/portfolio/5_4.png" alt="" height="139" width="138"/></a></li>
									<li><a href="#"><img src="Content/images/portfolio/5_5.jpg" alt="" height="139" width="138"/></a></li>
									<li><a href="#"><img src="Content/images/portfolio/5_6.jpg" alt="" height="139" width="138"/></a></li>
									<li><a href="#"><img src="Content/images/portfolio/5_7.jpg" alt="" height="139" width="138"/></a></li>
									<li><a href="#"><img src="Content/images/portfolio/5_8.jpg" alt="" height="139" width="138"/></a></li>
									<li><a href="#"><img src="Content/images/portfolio/5_9.jpg" alt="" height="139" width="138"/></a></li>
									<li><a href="#"><img src="Content/images/portfolio/5_10.jpg" alt="" height="139" width="138"/></a></li>
									<li><a href="#"><img src="Content/images/portfolio/5_11.jpg" alt="" height="139" width="138"/></a></li>
									<li><a href="#"><img src="Content/images/portfolio/5_12.jpg" alt="" height="139" width="138"/></a></li>
									<li><a href="#"><img src="Content/images/portfolio/5_13.jpg" alt="" height="139" width="138"/></a></li>
                                    
                            </ul>
                        </div>    
                    </div>
                    
                    <div class="col-lg-6">
                        <div class="login-box">
                            <h1 class="text-blue"><strong>Stay Connected</strong></h1>
                            <p class="h4"><em>Welcome to Thomasian Alumni Information System</em></p>
                            <div class="label-box"></div>
                            
                            <form class="login-form" method="post" action="loginprocess">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <input type="text" name="email" class="form-control" placeholder="Email"/>
                                        </div>
                                    </div>
                                    
                                    <div class="col-lg-5">
                                        <div class="form-group">
                                            <input type="password" name="password" class="form-control " placeholder="Password"/>
                                        </div>
                                    </div>
                                    
                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <button type="submit" name="btnLogin" class="btn btn-warning">Log In</button>
                                        </div>
                                    </div>
                                </div>
                                
                                <a href="forgotpassword.jsp"><small>Forgot your Password?</small></a>
                            </form>
                            
                            <hr/>
                            
                            <h4 class="page-header">
                                Not yet Registered?
                                <small><em>Let's start your registration </em></small>
                            </h4>
                            
                            <form id="radio-submit" method="post" action="preregister">
                            <!--
                                <div class="form-group">
                                    <label>I am a :</label>
                                    <label class="checkbox-inline">
                                        <input type="radio" name="level" value="0"> 
                                        Primary / Secondary Graduate
                                    </label>
                                    
                                    <label class="checkbox-inline">
                                        <input type="radio" name="level" value="1"> 
                                        Tertiary / Post Graduate
                                    </label>
                                </div>   
                             -->
                                <button type="submit" class="btn-warning btn"  id="button-submit">Start Registration</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
</asp:Content>

