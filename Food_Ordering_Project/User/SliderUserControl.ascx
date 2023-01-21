<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SliderUserControl.ascx.cs" Inherits="Food_Ordering_Project.User.SliderUserControl" %>


<section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Pasta
                    </h1>
                    <p>
                      Experience the rich and authentic flavors of Italy with our homemade pasta dishes, crafted with the freshest ingredients and cooked to al-dente perfection.
                    </p>
                    <div class="btn-box">
                      <a href="Menu.aspx" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
                  <div class="img-Slider">
                     <img class="img-Slider" src="../UserFiles/images/pasta.png" alt="pasta" />
                 </div> 
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Pizza
                    </h1>
                    <p>
                      Indulge in the delicious taste of our freshly made pizza, made with only the highest quality ingredients and cooked to perfection in a wood-fired oven."
                    </p>
                    <div class="btn-box">
                        <q></q>
                      <a href="Menu.aspx" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
                  <div class="img-Slider">
                     <img class="img-Slider" src="../UserFiles/images/f1.png" alt="pizza" />
                 </div> 
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Burger
                    </h1>
                    <p>
                      Satisfy your cravings with our juicy and flavorful burgers made from 100% pure beef and served on a freshly baked bun, topped with your choice of delicious toppings.
                    </p>
                    <div class="btn-box">
                      <a href="Menu.aspx" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
                  <div class="img-Slider">
                     <img class="img-Slider" src="../UserFiles/images/f2.png" alt="burger" />
                 </div> 
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <ol class="carousel-indicators">
            <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
            <li data-target="#customCarousel1" data-slide-to="1"></li>
            <li data-target="#customCarousel1" data-slide-to="2"></li>
          </ol>
        </div>
      </div>

    </section>