<%@ Page Title="" Language="C#" MasterPageFile="~/Student Portal/Student.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Student_Portal_Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Welcome to Student Portal
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
   <div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
      <li data-target="#myCarousel" data-slide-to="7"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="../Content/images/portal/slider20161.jpg" alt="IHMC-P" style="width:100%;"/>
      </div>
      <div class="item">
        <img src="../Content/images/portal/slider20162jpg.jpg" alt="IHMC-P" style="width:100%;"/>
      </div>
      <div class="item">
        <img src="../Content/images/portal/slider20163.jpg" alt="IHMC-P" style="width:100%;"/>
      </div>
        <div class="item">
        <img src="../Content/images/portal/slider20164.jpg" alt="IHMC-P" style="width:100%;"/>
      </div>
        <div class="item">
        <img src="../Content/images/portal/slider20165.jpg" alt="IHMC-P" style="width:100%;"/>
      </div>
        <div class="item">
        <img src="../Content/images/portal/slider20166.jpg" alt="IHMC-P" style="width:100%;"/>
      </div>
        <div class="item">
        <img src="../Content/images/portal/slider20167.jpg" alt="IHMC-P" style="width:100%;"/>
      </div>
        <div class="item">
        <img src="../Content/images/portal/slider20168.jpg" alt="IHMC-P" style="width:100%;"/>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    <br /><br />

</asp:Content>

 