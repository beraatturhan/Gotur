    <%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Food_Ordering_Project.User.Profile" %>

<%@ Import Namespace="Food_Ordering_Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        string imageUrl = Session["imageUrl"].ToString();
    %>
    <section class="book_section layout_padding">

        <div class="container">
            <div class="heading_container">
                <h2>User Information</h2>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card">

                        <div class="card-body">
                            <div class="card-title mb-4">
                                <div class="d-flex justify-content-start">
                                    <div class="middle pt-2">
                                            <a href="Registration.aspx?id=<% Response.Write(Session["userId"]); %>" class="btn btn-warning">
                                                <i class="fa fa-pencil"></i>Edit Profile
                                            </a>
                                        </div>
                                   

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active text-info" id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab" aria-controls="basicInfo" aria-selected="true"><i class="fa fa-id-badge mr-2"></i>Basic Info</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link text-info" id="connectedServices-tab" data-toggle="tab" href="#connectedServices" role="tab" aria-controls="connectedServices" aria-selected="false"><i class="fa fa-clock-o mr-2"></i>Purchased History</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link text-info" id="FavServices-tab" data-toggle="tab" href="#FavServices" role="tab" aria-controls="FavServices" aria-selected="false"><i class="fa fa-clock-o mr-2"></i>Favourites</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content ml-1" id="myTabContent">
                                        <%--Basic Info Starts--%>
                                        <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                                            <asp:Repeater ID="rUserProfile" runat="server">
                                                <ItemTemplate>

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Full Name</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Name") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Username</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            @<%# Eval("Username") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Mobile No.</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Mobile") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Email Addr.</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Email") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Post Code</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("PostCode") %>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Address</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Address") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                        <%--Basic Info Ends--%>

                                        <%--Order History Starts--%>
                                        <div class="tab-pane fade" id="connectedServices" role="tabpanel" aria-labelledby="ConnectedServices-tab">
                                            
                                            <asp:Repeater ID="rPurchaseHistory" runat="server" OnItemDataBound="rPurchaseHistory_ItemDataBound">
                                                <ItemTemplate>
                                                    <div class="container">
                                                        <div class="row pt-1 pb-1" style="background-color:lightgray">
                                                            <div class="col-4">
                                                                <span class="badge badge-pill badge-dark text-white">
                                                                    <%# Eval("SrNo") %>
                                                                </span>
                                                                Payment Mode: <%# Eval("PaymentMode").ToString() == "cod" ? "Cash On Delivery" : Eval("PaymentMode").ToString().ToUpper() %>
                                                            </div>
                                                            <div class="col-6">
                                                                <%# string.IsNullOrEmpty( Eval("CardNo").ToString() ) ? "" : "Card No: "+ Eval("CardNo") %>
                                                            </div>
                                                            <div class="col-2" style="text-align:end">
                                                                <a href="Invoice.aspx?id=<%# Eval("PaymentId") %>" class="btn btn-info btn-sm"><i class="fa fa-download mr-2"></i>Invoice</a>
                                                            </div>
                                                        </div>
                                                        <asp:HiddenField ID="hdnPaymentId" Value='<%# Eval("PaymentId") %>' runat="server" />

                                                        <asp:Repeater ID="rOrders" runat="server" OnItemCommand="rOrder_OnClick">
                                                            <HeaderTemplate>
                                                                <table class="table data-table-export table-responsive-sm table-bordered table-hover">
                                                                    <thead class="bg-dark text-white">
                                                                        <tr>
                                                                            <th>Product Name</th>
                                                                            <th>Unit Price</th>
                                                                            <th>Qty</th>
                                                                            <th>Total Price</th>
                                                                            <th>OrderId</th>
                                                                            <th>Status</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>

                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lblPrice" runat="server" Text='<%# string.IsNullOrEmpty( Eval("Price").ToString() ) ? "" : "₺"+ Eval("Price") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                                                    </td>
                                                                    <td><asp:Label ID="lblTotalPrice" runat="server" Text='<%# Eval("TotalPrice") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="lblOrderNo" runat="server" Text='<%# Eval("OrderNo") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Linkbutton ID="CancelOrder" Text="Cancel"  runat="server" CssClass="btn btn-primary"
                                                                            CommandArgument='<%# Eval("OrderNo") %>' CommandName="Cancel" Visible="true">
                                                                        <asp:HiddenField ID="hdnId" Value='<%# Eval("OrderNo") %>' runat="server" />
                                                                        </asp:LinkButton>
                                                                        <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %> '
                                                                            CssClass='<%# Eval("Status").ToString() == "Delivered" ? "badge badge-success" : "badge badge-warning" %>'></asp:Label>
                                                                        
                                                                    </td>
                                                                </tr>
                                                            </ItemTemplate>
                                                            <FooterTemplate>
                                                                    </tbody>
                                                                </table>
                                                            </FooterTemplate>
                                                        </asp:Repeater>

                                                    </div>

                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                        <%--Order History Ends--%>

                                        <%-- Fav--%>
                                        <div class="tab-pane fade" id="FavServices" role="tabpanel" aria-labelledby="FavServices-tab">
                                            
                                                    <div class="container">
                                                        <asp:Repeater ID="rFav" runat="server" OnItemDataBound="rFav_ItemDataBound" OnItemCommand="rFav_onClick">
                                                            <HeaderTemplate>
                                                                <table class="table data-table-export table-responsive-sm table-bordered table-hover">
                                                                    <thead class="bg-dark text-white">
                                                                        <tr>
                                                                            <th>Favourite Product Name</th>
                                                                            <th>Image</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>

                                                                <tr>
                                                                    <td>
                                                                        <asp:HiddenField ID="RateId" Value='<%# Eval("ProductId") %>' runat="server" />
                                                                        <asp:Label ID="lblFavName" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Image ID="lblFavImg" runat="server" ImageUrl='<%# Eval("ImageUrl1") %>'></asp:Image>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Linkbutton ID="RemoveFav" Text="Remove"  runat="server" CssClass="btn btn-primary"
                                                                            CommandArgument='<%# Eval("ProductName") %>' CommandName="RemoveFav" Visible="true">
                                                                        </asp:LinkButton>
                                                                    </td>
                                                                </tr>
                                                            </ItemTemplate>
                                                            <FooterTemplate>
                                                                    </tbody>
                                                                </table>
                                                            </FooterTemplate>
                                                        </asp:Repeater>

                                                    </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>

                    </div>
                </div>
            </div>


        </div>
    </section>

</asp:Content>
