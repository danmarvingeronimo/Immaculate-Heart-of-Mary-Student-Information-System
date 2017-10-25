<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Accounting/Accounting.master" AutoEventWireup="true" CodeFile="PaymentInfo.aspx.cs" Inherits="Admin_Admission_PaymentInfo" %>

<%--JIONNE LIZARDO --%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    <i class="fa fa-user"></i>
    <asp:literal id="ltSID" runat="server" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <div class="container-fluid" style="padding-bottom: 20px;">
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <div class="box-body">
                        <form runat="server" class="form-horizontal">

                            <div>
                                <br />
                                <a href='AccViewSection.aspx'
                                    class="btn btn-success" style="margin-bottom: 20px;"> Back to View </a>
                            </div>

                            <table id="table" class="table table-hover">

                                <thead>
                                    <th>Date of Payment</th>
                                    <th>SY</th>
                                    <th>Quarter</th>
                                    <th>Payment Status</th>
                                </thead>
                                <tbody>
                                    <asp:listview id="lvStudents" runat="server" onitemcommand="lvStudents_ItemCommand">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("DateOfPayment") %></td>
                                                <td><%#Eval("SY") %></td>
                                                <td><%#Eval("Quarter") %></td>
                                                <td><%#Eval("Payment_Status") %></td>


                                            </tr>
                                        </ItemTemplate>

                                        <EmptyDataTemplate>
                                            <tr>
                                                <td colspan="10">
                                                    <h2 class="text-center">
                                                No records found!

                                            </tr>
                                        </EmptyDataTemplate>
                                    </asp:listview>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>





</asp:Content>

