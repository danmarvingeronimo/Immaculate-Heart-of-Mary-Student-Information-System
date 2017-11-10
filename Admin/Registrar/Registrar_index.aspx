<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Registrar/Registrar.master" AutoEventWireup="true" CodeFile="Registrar_index.aspx.cs" Inherits="Admin_Registrar_Registrar_index" %>

<%-- JIONNE LIZARDO  --%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server"> Welcome to SIS Admin - Registrar
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

     <section class="content">
         <div class="row">

             <div class="col-lg-3 col-xs-6">
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>
                            <asp:Label ID="lbstudnew" runat="server"></asp:Label>
                        </h3>
                        <p>Unassigned Students</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-android-contacts"></i>
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

