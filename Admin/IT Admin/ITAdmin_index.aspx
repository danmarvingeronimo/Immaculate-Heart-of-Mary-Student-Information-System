<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/IT Admin/ITAdmin.master" AutoEventWireup="true" CodeFile="ITAdmin_index.aspx.cs" Inherits="Admin_IT_Admin_ITAdmin_index" %>

<%-- JIONNE LIZARDO  --%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Welcome to SIS Admin - IT Admin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <section class="content">
        <div class="row">

            <%--     <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lbadmin" runat="server"></asp:Label>
                        </h3>
                        <p>Admin Personnel</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-settings"></i>
                    </div>
                </div>
            </div>--%>



            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lbIT" runat="server"></asp:Label>
                        </h3>
                        <p>IT Admin</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-mouse"></i>
                    </div>
                </div>
            </div>



            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lbregist" runat="server"></asp:Label>
                        </h3>
                        <p>Registrar</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-compose"></i>
                    </div>
                </div>
            </div>


            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lbaccount" runat="server"></asp:Label>
                        </h3>
                        <p>Accounting</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-calculator"></i>
                    </div>
                </div>
            </div>


            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-red">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lbteach" runat="server"></asp:Label>
                        </h3>
                        <p>Faculty</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-ios-people"></i>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-blue">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lbsection" runat="server"></asp:Label>
                        </h3>
                        <p>Sections</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-ios-people"></i>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-purple">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lbstudnew" runat="server"></asp:Label>
                        </h3>
                        <p>New Students</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-android-contacts"></i>
                    </div>
                </div>
            </div>

               <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-purple">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lbstudpen" runat="server"></asp:Label>
                        </h3>
                        <p>Pending Students </p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-android-contacts"></i>
                    </div>
                </div>
            </div>



        </div>
    </section>


</asp:Content>
