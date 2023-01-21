<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Food_Ordering_Project.User.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container  ">
      <div class="row">
        <div class="col-md-6 ">
          <div class="img-box">
            <img src="../UserFiles/images/about-img.png" alt="">
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                About Götür
              </h2>
            </div>
            <p>
              Götür makes it easy to order your favorite meals from your restaurant. With a simple and user-friendly interface, you can browse menus, customize your order, and track the status of your delivery all in one place.
                We offer a wide selection of cuisines to choose from, and our in-app payment system ensures a secure and seamless ordering experience.
                Whether you're at home or on the go, our app makes it convenient to order food and have it delivered straight to your door. Try it out today and enjoy the convenience of having your favorite meals just a tap away!
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

</asp:Content>
