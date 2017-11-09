<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="PLogIn.aspx.cs" Inherits="Student_LogIn" %>

<%@ Register Assembly="Recaptcha" Namespace="Recaptcha" TagPrefix="recaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">
  <div class="divider"></div>
           <div class="container">
            	<div class="main-content">
				<div class="slider-con">
							<div class="slide">
								<ul>
									<li><a href="#"><img src="../Content/images/portfolio/5_5.jpg" alt="" height="153" width="153"/></a></li>
									<li><a href="#"><img src="../Content/images/portfolio/5_6.jpg" alt="" height="153" width="153"/></a></li>
									<li><a href="#"><img src="../Content/images/portfolio/5_7.jpg" alt="" height="153" width="153"/></a></li>
									<li><a href="#"><img src="../Content/images/portfolio/5_8.jpg" alt="" height="153" width="153"/></a></li>
									<li><a href="#"><img src="../Content/images/portfolio/5_9.jpg" alt="" height="153" width="153"/></a></li>
									<li><a href="#"><img src="../Content/images/portfolio/5_10.jpg" alt="" height="153" width="153"/></a></li>
									<li><a href="#"><img src="../Content/images/portfolio/5_11.jpg" alt="" height="153" width="153"/></a></li>
									<li><a href="#"><img src="../Content/images/portfolio/5_12.jpg" alt="" height="153" width="153"/></a></li>
								    <li><a href="#"><img src="../Content/images/portfolio/5.jpg" alt="" height="153" width="153"/></a></li>
									<li><a href="#"><img src="../Content/images/portfolio/5_2.jpg" alt="" height="153" width="153"/></a></li>
									<li><a href="#"><img src="../Content/images/portfolio/5_3.jpg" alt="" height="153" width="153"/></a></li>
									<li><a href="#"><img src="../Content/images/portfolio/5_4.png" alt="" height="153" width="153"/></a></li>
                                    <li><a href="#"><img src="../Content/images/portfolio/5_4.png" alt="" height="153" width="153"/></a></li>
								</ul>
							</div>
						
				</div>
              </div>
               </div>
			<!-- / sidebar -->
            <h1 class="single">LOG IN</h1>
    <form style="margin-left:15px;" runat="server" class="form-horizontal" align="left">
          <div class="form-group">
                <div class="control-label col-lg-7">
                    <asp:Label ID="error" runat="server" ForeColor="#CD3333"
                        Visible="false">
                    Incorrect User ID or Password!
                    </asp:Label>
                </div>
            </div>
                <div class="form-group">
                <label class="control-label col-lg-4">ID Number</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="txtUID" runat="server"
                        class="input-txt" type="text" MaxLength="100"/>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-lg-4">Password</label>
                <div class="col-lg-4">
                    <asp:TextBox ID="txtPWD" runat="server"
                        class="input-txt" type="password" MaxLength="20" />
                </div>
            </div><br />
            <div style="margin-right:240px;" class="form-group" align="right">
          <label class="control-label col-lg-4"></label>
                <div class="col-lg-4">
                    <recaptcha:RecaptchaControl ID="rcRegister" runat="server"
                        PublicKey="6LdRviATAAAAACc5ahRHppqVMx0COExz1pFLppaU"
                        PrivateKey="6LdRviATAAAAAOwZ4TdfXJxu6wS8-qzOhYNNkoKI"
                        Theme="blackglass" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <br />
                    <asp:Button ID="btnLogin" runat="server" class="btn btn--right" Type="submit" Text="Login" 
                        OnClick="btnLogin_Click"/>
                         <br /><br />
                </div>
            </div>

        <div class=" form-group" align="left">
                <div class="col-lg-offset-4 col-lg-8">
                    <img width="121" src="../images/bg_slider_nav.png" alt=""/>
                </div>
            </div>
   

        <br />
        <br />
        <br />
        <br />


        

    </form>
 
        
        
         
</asp:Content>
