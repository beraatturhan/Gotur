<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Food_Ordering_Project.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper">

                <div class="page-body">
                    <div class="row">
                        <div class="col-md-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <span class="text-c-blue f-w-600">Categories</span>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="Category.aspx">View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">

                                    <span class="text-c-pink f-w-600">Products</span>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="Products.aspx">View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <span class="text-c-green f-w-600">Total Orders</span>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="OrderStatus.aspx">View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <span class="text-c-pink f-w-600">Users</span>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="Users.aspx">View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <span class="text-c-green f-w-600">Sold Amount</span>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="Report.aspx">View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <span class="text-c-yellow f-w-600">Feedbacks</span>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="Contacts.aspx">View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div id="styleSelector">
            </div>
        </div>
    </div>

</asp:Content>
