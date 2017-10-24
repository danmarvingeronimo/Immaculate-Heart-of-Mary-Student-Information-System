<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="PaymentInfo.aspx.cs" Inherits="Admin_Admission_PaymentInfo" %>

<%--DAN MARVIN GERONIMO--%>


<asp:Content ID="Content1" ContentPlaceHolderID="title"  Runat="Server">
   <i class="fa fa-user"></i>
    <asp:Literal ID="ltSID" runat="server" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class ="table table-hover">
                <thead>
                    <th>Date of Payment</th>
                    <th>SY</th>
                    <th>Quarter</th>
                    <th>Payment Status</th>           
                </thead>
                <tbody>
                    <asp:ListView ID="lvStudents" runat="server">
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
                    </asp:ListView>
                </tbody>
            </table>
        </div>
    </form>



</asp:Content>

