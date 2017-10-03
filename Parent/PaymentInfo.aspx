<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/Parent.master" AutoEventWireup="true" CodeFile="PaymentInfo.aspx.cs" Inherits="Parent_PaymentInfo" %>


<%--DAN MARVIN GERONIMO--%>
<%--STILL INCOMPLETE--%>


<asp:Content ID="Content1" ContentPlaceHolderID="title"  Runat="Server">
   <i class="fa fa-user"></i>
    <asp:Literal ID="ltSID" runat="server" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <form runat="server" class="form-horizontal">
        <div class="col-lg-12">
            <table class ="table table-hover">
                <thead>
                    <th>#</th>
                    <th>Amount</th>
                    <th>Payment Method</th>
                    <th>Date of Payment</th>
                    
                    
                </thead>
                <tbody>
                    <asp:ListView ID="lvStudents" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("Paymentinfo_ID") %></td>
                                <td><%#Eval("Amount") %></td>
                                <td><%#Eval("Payment_Method") %></td>
                                <td><%#Eval("DateOfPayment") %></td>

                            </tr>
                            <asp:LinkButton runat="server" id="ViewStudentList" href="StudentList.aspx" CssClass="btn btn-info btn-xs">Previous Records</asp:LinkButton>
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

