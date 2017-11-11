<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="PLogIn.aspx.cs" Inherits="Student_LogIn" %>

<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="cc1" %>


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
									    <li><a href="#">
                            <img src="../Content/images/portfolio/1.jpg" alt="" height="153" width="153" /></a></li>
                        <li><a href="#">
                            <img src="../Content/images/portfolio/5_2.jpg" alt="" height="153" width="153" /></a></li>
                        <li><a href="#">
                            <img src="../Content/images/portfolio/5_3.jpg" alt="" height="153" width="153" /></a></li>
                        <li><a href="#">
                            <img src="../Content/images/portfolio/5_4.png" alt="" height="153" width="153" /></a></li>
                        <li><a href="#">
                            <img src="../Content/images/portfolio/5_5.jpg" alt="" height="153" width="153" /></a></li>
                        <li><a href="#">
                            <img src="../Content/images/portfolio/5_6.jpg" alt="" height="153" width="153" /></a></li>
                        <li><a href="#">
                            <img src="../Content/images/portfolio/5_7.jpg" alt="" height="153" width="153" /></a></li>
                        <li><a href="#">
                            <img src="../Content/images/portfolio/5_8.jpg" alt="" height="153" width="153" /></a></li>
                        <li><a href="#">
                            <img src="../Content/images/portfolio/5_9.jpg" alt="" height="153" width="153" /></a></li>
                        <li><a href="#">
                            <img src="../Content/images/portfolio/5_10.jpg" alt="" height="153" width="153" /></a></li>
                        <li><a href="#">
                            <img src="../Content/images/portfolio/5_11.jpg" alt="" height="153" width="153" /></a></li>
                        <li><a href="#">
                            <img src="../Content/images/portfolio/5_12.jpg" alt="" height="153" width="153" /></a></li>
								</ul>
							</div>
						
				</div>
              </div>
               </div>
			<!-- / sidebar -->
            <h1 class="single">PARENT LOG IN</h1>
    <form style="margin-left: 15px;" runat="server" class="form-horizontal" align="left">
        <div class="form-group">
            <div class="control-label col-lg-7">
                <asp:Label ID="error" runat="server" ForeColor="#CD3333"
                    Visible="false">
                Invalid ID Number or Password!
                </asp:Label>
            </div>

          <div class="control-label col-lg-7">
                <asp:Label ID="captcha" runat="server" ForeColor="#CD3333"
                    Visible="false">
                    Invalid Captcha!
                </asp:Label>
            </div>

        </div>
        <div class="form-group">
            <label class="control-label col-lg-4">ID Number</label>
            <div class="col-lg-8">
                <asp:TextBox ID="txtUID" runat="server"
                    class="input-txt" type="text" MaxLength="10" required />
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-lg-4">Password</label>
            <div class="col-lg-4">
                <asp:TextBox ID="txtPWD" runat="server"
                    class="input-txt" type="password" MaxLength="20" required />
            </div>
        </div>
        <br />
               <div style="margin-right: 485px;" class="form-group" align="right">
            <label class="control-label col-lg-4"></label>
            <div class="col-lg-4">
                <cc1:GoogleReCaptcha ID="ctrlGoogleReCaptcha" runat="server" PublicKey="6LcypzcUAAAAAHZGU92TxL8W2P_MD5duaneqJ6F-" 
                    PrivateKey="6LcypzcUAAAAAK76cOcDqB_I4zZ57UndBJRt9X5U" />
            </div>
        </div>

              <div style="float:right; margin-right:700px;" class="form-group">
                <div class="col-lg-offset-4 col-lg-8">
                    <br />
                    <asp:Button ID="btnLogin" runat="server" class="btn btn--right" Type="submit" Text="Login" 
                        OnClick="btnLogin_Click"/>
                         <br /><br />
                </div>
            </div>

  

        <br />
        <br />
        <br />
        <br />


        

    </form>
 
        
        <div class="g-recaptcha" data-sitekey="6LcypzcUAAAAAHZGU92TxL8W2P_MD5duaneqJ6F-"></div>
          <br />
        <br />
</asp:Content>
