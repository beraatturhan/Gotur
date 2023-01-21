<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Food_Ordering_Project.User.Default" %>

<%@ Import Namespace="Food_Ordering_Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <section class="client_section layout_padding-bottom pt-5" style="background-image: url('../Images/chef.png'); width: 100%; height:100%; background-repeat:no-repeat; 
            background-size: contain; background-attachment:fixed; background-position:left">
        <div class="container">
            <div class="heading_container heading_center psudo_white_primary mb_45">
                <h2>Customer Feedback
                </h2>
            </div>
           
            <div class="carousel-wrap row ">

                <div class="owl-carousel client_owl-carousel">

             <asp:Repeater ID="rComment" runat="server">
            <ItemTemplate>
                        <div class="box">
                            <div class="detail-box">
                                <p>
                                    <%# Eval("Message") %>
                                </p>
                                <h6><%# Eval("Name") %>
                                </h6>
                                
                            </div>
                        </div>
                     </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>

        </div>

    </section>


</asp:Content>
