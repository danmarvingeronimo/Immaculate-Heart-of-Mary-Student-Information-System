<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Principal/Principal.master" AutoEventWireup="true" CodeFile="Principal_index.aspx.cs" Inherits="Admin_Prinicipal_Principal_index" %>

<%-- JIONNE LIZARDO  --%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Welcome to SIS Admin - Principal
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">

    <section class="content">
        <div class="row">

            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lbfac" runat="server"></asp:Label>
                        </h3>
                        <p>Unassigned Homeroom Adviser</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-ios-people"></i>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lbsub" runat="server"></asp:Label>
                        </h3>
                        <p>Unassigned Faculty</p>
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

        </div>
    </section>
</asp:Content>

