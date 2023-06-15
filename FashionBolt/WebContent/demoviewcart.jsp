<!DOCTYPE html>
<html>
  <head>
    <title>Simple JS Cart</title>
    <link rel="stylesheet" href="Newcart_ASSERT/cart.css">
    <script src="Newcart_ASSERT/products.js"></script>
    <script src="Newcart_ASSERT/cart.js"></script>
  </head>
  <body>
    <!-- (A) CART -->
    <div id="cart-wrap">
      <!-- (A1) PRODUCTS LIST -->
      <div id="cart-products">
      <div class="p-item">
      <img class="p-img" src="images/dummy-pdt-b.jpg">
      <div class="p-name">MokBook Thicc</div>
      <div class="p-desc">Greatest properly off ham exercise all.</div>
      <div class="p-price">$2034.00</div>
      <button class="cart p-add">Add To Cart</button>
    </div>
      
      </div>

      <!-- (A2) CURRENT CART ITEMS -->
      <div id="cart-items">
      
      
      </div>
    </div>

    <!-- (B) TEMPLATES -->
    <!-- (B1) PRODUCT CELL -->
    <template id="template-product">
    <div class="p-item">
      <img class="p-img"/>
      <div class="p-name"></div>
      <div class="p-desc"></div>
      <div class="p-price"></div>
      <button class="cart p-add">Add To Cart</button>
    </div>
    </template>

    <!-- (B2) CART ITEMS -->
    <template id="template-cart">
    <div class="c-item">
      <div class="c-name"></div>
      <button class="c-del cart">X</button>
      <input class="c-qty" type="number" min="0"/>
    </div>
    </template>
    <template id="template-cart-checkout">
      <button class="c-empty cart" onclick="cart.nuke()">Empty</button>
      <button class="c-checkout cart" onclick="cart.checkout()">Checkout</button>
    </template>
  </body>
</html>
