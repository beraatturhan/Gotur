<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Food_Ordering_Project.User.Menu" %>
<%@ Import Namespace="Food_Ordering_Project" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
.checked {
  color: orange;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="food_section layout_padding" style="background-image: url('../Images/chefCap3.png'); width: 100%; height:100%; background-repeat:no-repeat; 
            background-size: contain; background-attachment:fixed; background-position:left">
        <div class="container">
            <div class="h   eading_container heading_center">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <h2>Our Menu
                </h2>
            </div>

            <ul class="filters_menu">
                <li class="active" data-filter="*" data-id="0">All</li>
                <asp:Repeater ID="rCategories" runat="server">
                    <ItemTemplate>
                        <li data-filter=".<%# LowerCase(Eval("Name")) %>" data-id="<%# Eval("CategoryId") %>"><%# Eval("Name") %></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>

            <div class="filters-content">
                <div class="row grid">
                    <asp:Repeater ID="rProducts" runat="server" OnItemCommand="rProducts_ItemCommand" OnItemDataBound="rProducts_ItemdataBound">
                        <ItemTemplate>
                            <div class="col-sm-6 col-lg-4 all <%# LowerCase(Eval("CategoryName")) %>">
                                <div class="box">
                                    <div>
                                        <div class="img-box">
                                            <img src="<%# Utils.GetImageUrl( Eval("ImageUrl")) %>" alt="">
                                        </div>
                                        <div class="detail-box">
                                            <h5><%# Eval("Name") %></h5>
                                            <p>
                                                <%# Eval("Description") %>
                                            </p> 
                                                 <asp:Label ID="AvgRating" Text="dasdsa" runat="server"></asp:Label>
                                            <div class="options">
                                                <h6>₺<%# Eval("Price") %></h6>
                                                <asp:HiddenField ID="hdnProductId" runat="server" Value='<%# Eval("ProductId") %>' />
                                               <asp:LinkButton ID="lbAddToFav" runat="server" CommandName="addToFav" 
                                                    CommandArgument='<%# Eval("ProductId") %>'>
                                                   <asp:Image ID="AddToFav" ImageUrl="~/Images/Favourite.png" runat="server" Style=" width:30px; height:30px;"></asp:Image>
                                                </asp:LinkButton>
                                                        <asp:TextBox ID="txtRate" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rate"
                                                         ToolTip="Enter Rate" style="width: 35%; height:100%;"></asp:TextBox>
                                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Rate must be between 0-5"
                                                            ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-5]$"
                                                            ControlToValidate="txtRate">
                                                        </asp:RegularExpressionValidator>

                                                <asp:LinkButton ID="lbRate" runat="server" CommandName="SendRate"
                                                    CommandArgument='<%# Eval("ProductId") %>'>     
                                                   <asp:Image ID="RateProduct" ImageUrl="~/Images/rateStar.png" runat="server" Style=" width:30px; height:30px;"></asp:Image>
                                                </asp:LinkButton>

                                                <asp:LinkButton ID="lbAddToCart" runat="server" CommandName="addToCart" 
                                                    CommandArgument='<%# Eval("ProductId") %>'>
                                                   <asp:Image ID="AddToCart" ImageUrl="~/Images/cardPlus.png" runat="server" Style=" width:30px; height:30px;"></asp:Image>
                                                </asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

        </div>
    </section>

</asp:Content>
