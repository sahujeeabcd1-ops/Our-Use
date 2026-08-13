<!DOCTYPE html>
<html lang="hi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Owner Dashboard - LocalShop</title>

  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: Arial, sans-serif;
      background: #f5f7f6;
      color: #222;
    }

    header {
      background: #176b24;
      color: white;
      padding: 15px 20px;
    }

    .header-inner {
      max-width: 1100px;
      margin: auto;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 15px;
    }

    .logo {
      font-size: 20px;
      font-weight: bold;
    }

    .shop-small {
      font-size: 12px;
      opacity: .9;
      margin-top: 3px;
    }

    .logout {
      border: none;
      background: white;
      color: #176b24;
      padding: 9px 14px;
      border-radius: 8px;
      font-weight: bold;
      cursor: pointer;
    }

    .container {
      max-width: 1100px;
      margin: auto;
      padding: 20px;
    }

    .welcome {
      background: white;
      padding: 20px;
      border-radius: 14px;
      margin-bottom: 18px;
      box-shadow: 0 3px 15px #0001;
    }

    .welcome h1 {
      color: #176b24;
      margin-bottom: 6px;
    }

    .welcome p {
      color: #777;
      font-size: 14px;
    }

    .stats {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 15px;
      margin-bottom: 20px;
    }

    .stat {
      background: white;
      padding: 18px;
      border-radius: 13px;
      text-align: center;
      box-shadow: 0 3px 15px #0001;
    }

    .stat-icon {
      font-size: 25px;
    }

    .stat-number {
      font-size: 27px;
      font-weight: bold;
      color: #176b24;
      margin: 5px 0;
    }

    .stat-label {
      color: #777;
      font-size: 13px;
    }

    .panel {
      background: white;
      padding: 20px;
      border-radius: 14px;
      margin-bottom: 20px;
      box-shadow: 0 3px 15px #0001;
    }

    .panel h2 {
      color: #176b24;
      margin-bottom: 18px;
      font-size: 20px;
    }

    .grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 15px;
    }

    .full {
      grid-column: 1 / -1;
    }

    .group label {
      display: block;
      font-size: 13px;
      font-weight: bold;
      margin-bottom: 6px;
    }

    input,
    select,
    textarea {
      width: 100%;
      padding: 11px;
      border: 1px solid #ddd;
      border-radius: 8px;
      outline: none;
      font-size: 14px;
      background: white;
    }

    textarea {
      min-height: 90px;
      resize: vertical;
    }

    input:focus,
    select:focus,
    textarea:focus {
      border-color: #176b24;
    }

    .quantity-options {
      display: flex;
      flex-wrap: wrap;
      gap: 8px;
    }

    .quantity-option {
      border: 1px solid #ccc;
      background: white;
      padding: 9px 12px;
      border-radius: 8px;
      cursor: pointer;
      font-weight: bold;
      font-size: 13px;
    }

    .quantity-option.active {
      background: #176b24;
      color: white;
      border-color: #176b24;
    }

    .unit-info {
      margin-top: 8px;
      background: #f1f8f2;
      color: #176b24;
      padding: 9px;
      border-radius: 8px;
      font-size: 12px;
      line-height: 1.5;
    }

    .stock-box {
      display: flex;
      gap: 10px;
    }

    .stock-btn {
      flex: 1;
      padding: 11px;
      border: 1px solid #ddd;
      border-radius: 8px;
      background: white;
      cursor: pointer;
      font-weight: bold;
    }

    .active-in {
      border-color: #176b24;
      background: #e8f7eb;
      color: #176b24;
    }

    .active-out {
      border-color: #d62828;
      background: #ffe8e8;
      color: #d62828;
    }

    .main-btn,
    .secondary-btn {
      width: 100%;
      padding: 13px;
      border: none;
      border-radius: 9px;
      cursor: pointer;
      font-weight: bold;
      font-size: 14px;
      margin-top: 15px;
    }

    .main-btn {
      background: #176b24;
      color: white;
    }

    .secondary-btn {
      background: #eee;
      color: #333;
    }

    .message {
      display: none;
      padding: 11px;
      border-radius: 8px;
      margin-bottom: 15px;
      font-size: 13px;
    }

    .error {
      background: #ffe5e5;
      color: #b00000;
    }

    .success {
      background: #e4f7e8;
      color: #176b24;
    }

    .product-list {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 15px;
    }

    .product-card {
      border: 1px solid #eee;
      border-radius: 12px;
      overflow: hidden;
      background: white;
    }

    .product-card img {
      width: 100%;
      height: 180px;
      object-fit: cover;
      display: block;
      background: #eee;
    }

    .product-body {
      padding: 13px;
    }

    .product-body h3 {
      margin-bottom: 5px;
    }

    .product-body p {
      color: #777;
      font-size: 12px;
      margin-top: 5px;
    }

    .product-price {
      font-size: 17px;
      font-weight: bold;
      color: #176b24;
      margin: 8px 0;
    }

    .badge {
      display: inline-block;
      padding: 5px 9px;
      border-radius: 15px;
      font-size: 11px;
      font-weight: bold;
    }

    .in {
      background: #e4f7e8;
      color: #176b24;
    }

    .out {
      background: #ffe5e5;
      color: #d62828;
    }

    .card-actions {
      display: flex;
      gap: 7px;
      margin-top: 10px;
    }

    .card-actions button {
      flex: 1;
      padding: 8px;
      border: none;
      border-radius: 7px;
      cursor: pointer;
      font-weight: bold;
    }

    .edit {
      background: #176b24;
      color: white;
    }

    .delete {
      background: #d62828;
      color: white;
    }

    .empty {
      text-align: center;
      color: #777;
      padding: 35px;
      border: 1px dashed #ccc;
      border-radius: 10px;
      grid-column: 1 / -1;
    }

    .loading {
      position: fixed;
      inset: 0;
      background: #ffffffee;
      display: flex;
      align-items: center;
      justify-content: center;
      z-index: 9999;
      font-size: 18px;
      font-weight: bold;
      color: #176b24;
    }

    @media (max-width: 750px) {
      .stats {
        grid-template-columns: 1fr 1fr;
      }

      .grid {
        grid-template-columns: 1fr;
      }

      .full {
        grid-column: auto;
      }

      .product-list {
        grid-template-columns: 1fr 1fr;
      }
    }

    @media (max-width: 500px) {
      .stats {
        grid-template-columns: 1fr;
      }

      .product-list {
        grid-template-columns: 1fr;
      }

      .stock-box {
        flex-direction: column;
      }

      .header-inner {
        align-items: flex-start;
      }
    }
  </style>
</head>

<body>

  <div id="loading" class="loading">
    ⏳ Dashboard verify हो रहा है...
  </div>


  <header>
    <div class="header-inner">

      <div>
        <div class="logo">
          🏪 LocalShop Owner
        </div>

        <div
          id="headerShop"
          class="shop-small"
        >
          Shop Dashboard
        </div>
      </div>

      <button
        type="button"
        class="logout"
        onclick="logout()"
      >
        Logout
      </button>

    </div>
  </header>


  <main
    id="mainContent"
    class="container"
    style="display:none;"
  >

    <section class="welcome">

      <h1 id="welcomeTitle">
        Welcome
      </h1>

      <p>
        अपने shop के products यहाँ से manage करें।
      </p>

    </section>


    <section class="stats">

      <div class="stat">
        <div class="stat-icon">📦</div>

        <div
          id="totalProducts"
          class="stat-number"
        >
          0
        </div>

        <div class="stat-label">
          Total Products
        </div>
      </div>


      <div class="stat">
        <div class="stat-icon">🟢</div>

        <div
          id="inStockProducts"
          class="stat-number"
        >
          0
        </div>

        <div class="stat-label">
          In Stock
        </div>
      </div>


      <div class="stat">
        <div class="stat-icon">🔴</div>

        <div
          id="outStockProducts"
          class="stat-number"
        >
          0
        </div>

        <div class="stat-label">
          Out of Stock
        </div>
      </div>

    </section>


    <section class="panel">

      <h2 id="formTitle">
        ➕ Add New Product
      </h2>

      <div
        id="errorMessage"
        class="message error"
      ></div>

      <div
        id="successMessage"
        class="message success"
      ></div>


      <form id="productForm">

        <div class="grid">

          <div class="group">

            <label for="productName">
              Product Name *
            </label>

            <input
              id="productName"
              type="text"
              placeholder="जैसे Rice"
              required
            >

          </div>


          <div class="group">

            <label for="category">
              Category *
            </label>

            <input
              id="category"
              type="text"
              placeholder="जैसे Grocery"
              required
            >

          </div>


          <div class="group">

            <label for="price">
              Price *
            </label>

            <input
              id="price"
              type="number"
              min="0"
              step="0.01"
              placeholder="100"
              required
            >

          </div>


          <div class="group">

            <label for="unit">
              Selling Unit *
            </label>

            <select
              id="unit"
              required
            >

              <option value="kg">
                Kilogram (kg)
              </option>

              <option value="gram">
                Gram (g)
              </option>

              <option value="litre">
                Litre (L)
              </option>

              <option value="ml">
                Millilitre (ml)
              </option>

              <option value="piece">
                Piece
              </option>

              <option value="dozen">
                Dozen
              </option>

            </select>

          </div>


          <div class="group full">

            <label>
              Customer Quantity Options
            </label>

            <div
              id="quantityOptions"
              class="quantity-options"
            ></div>

            <div
              id="unitInfo"
              class="unit-info"
            ></div>

          </div>


          <div class="group full">

            <label for="description">
              Product Description
            </label>

            <textarea
              id="description"
              placeholder="Product के बारे में लिखें..."
            ></textarea>

          </div>


          <div class="group full">

            <label for="imageUrl">
              Product Image URL
            </label>

            <input
              id="imageUrl"
              type="url"
              placeholder="https://example.com/product.jpg"
            >

          </div>


          <div class="group full">

            <label>
              Stock Status
            </label>

            <div class="stock-box">

              <button
                type="button"
                id="inStockBtn"
                class="stock-btn active-in"
                onclick="setStock(true)"
              >
                🟢 In Stock
              </button>

              <button
                type="button"
                id="outStockBtn"
                class="stock-btn"
                onclick="setStock(false)"
              >
                🔴 Out of Stock
              </button>

            </div>

          </div>

        </div>


        <button
          type="submit"
          id="saveBtn"
          class="main-btn"
        >
          ➕ Add Product
        </button>


        <button
          type="button"
          id="cancelEditBtn"
          class="secondary-btn"
          style="display:none;"
          onclick="cancelEdit()"
        >
          Cancel Edit
        </button>

      </form>

    </section>


    <section class="panel">

      <h2>
        📦 My Products
      </h2>

      <div
        id="productList"
        class="product-list"
      ></div>

    </section>

  </main>


  <script type="module">

    /*
     * =========================================
     * FIREBASE
     * =========================================
     */

    import {
      auth,
      db
    } from "./firebase.js";


    import {
      onAuthStateChanged,
      signOut
    } from "https://www.gstatic.com/firebasejs/12.1.0/firebase-auth.js";


    import {
      doc,
      getDoc
    } from "https://www.gstatic.com/firebasejs/12.1.0/firebase-firestore.js";


    /*
     * =========================================
     * GLOBALS
     * =========================================
     */

    let session = null;

    let currentShopId = null;

    let products = [];

    let editingId = null;

    let currentStock = true;

    let selectedQuantities = [];


    /*
     * =========================================
     * ELEMENTS
     * =========================================
     */

    const loading =
      document.getElementById(
        "loading"
      );


    const mainContent =
      document.getElementById(
        "mainContent"
      );


    /*
     * =========================================
     * ESCAPE HTML
     * =========================================
     */

    function escapeHtml(value) {

      return String(
        value ?? ""
      )
        .replace(
          /&/g,
          "&amp;"
        )
        .replace(
          /</g,
          "&lt;"
        )
        .replace(
          />/g,
          "&gt;"
        )
        .replace(
          /"/g,
          "&quot;"
        )
        .replace(
          /'/g,
          "&#039;"
        );

    }


    /*
     * =========================================
     * FIREBASE AUTH + APPROVAL CHECK
     * =========================================
     */

    onAuthStateChanged(
      auth,
      async function(user) {

        try {

          /*
           * User login नहीं है
           */

          if (!user) {

            window.location.replace(
              "owner-login.html"
            );

            return;
          }


          /*
           * Owner document
           */

          const ownerRef =
            doc(
              db,
              "owners",
              user.uid
            );


          const ownerSnap =
            await getDoc(
              ownerRef
            );


          if (!ownerSnap.exists()) {

            await signOut(auth);

            window.location.replace(
              "owner-login.html"
            );

            return;
          }


          const ownerData =
            ownerSnap.data();


          /*
           * Shop ID
           */

          const shopId =
            ownerData.shopId;


          if (!shopId) {

            await signOut(auth);

            alert(
              "इस owner account से कोई shop जुड़ी नहीं है।"
            );

            window.location.replace(
              "owner-login.html"
            );

            return;
          }


          /*
           * Shop document
           */

          const shopRef =
            doc(
              db,
              "shops",
              shopId
            );


          const shopSnap =
            await getDoc(
              shopRef
            );


          if (!shopSnap.exists()) {

            await signOut(auth);

            alert(
              "Shop record नहीं मिला।"
            );

            window.location.replace(
              "owner-login.html"
            );

            return;
          }


          const shopData =
            shopSnap.data();


          const status =
            String(
              shopData.status || ""
            ).toLowerCase();


          /*
           * सिर्फ approved shop को dashboard
           */

          if (
            status !== "approved"
          ) {

            await signOut(auth);

            if (
              status === "pending"
            ) {

              alert(
                "आपकी shop अभी Admin approval के लिए pending है।"
              );

            }

            else if (
              status === "rejected"
            ) {

              alert(
                "आपकी shop registration reject कर दी गई है।"
              );

            }

            else {

              alert(
                "आपकी shop अभी approved नहीं है।"
              );

            }


            window.location.replace(
              "owner-login.html"
            );

            return;
          }


          /*
           * =====================================
           * CREATE FRESH SESSION
           * =====================================
           */

          session = {

            uid:
              user.uid,

            ownerId:
              user.uid,

            ownerName:
              ownerData.name ||
              shopData.ownerName ||
              user.displayName ||
              "Shop Owner",

            email:
              user.email || "",

            shopId:
              shopId,

            shopName:
              shopData.name ||
              "My Shop",

            location:
              shopData.location ||
              "",

            status:
              "approved"

          };


          sessionStorage.setItem(
            "localShopOwnerSession",
            JSON.stringify(
              session
            )
          );


          localStorage.setItem(
            "localShopOwnerId",
            user.uid
          );


          localStorage.setItem(
            "localShopId",
            shopId
          );


          localStorage.setItem(
            "localShopName",
            session.shopName
          );


          /*
           * =====================================
           * START DASHBOARD
           * =====================================
           */

          currentShopId =
            shopId;


          document.getElementById(
            "welcomeTitle"
          ).textContent =
            "Welcome, " +
            session.ownerName;


          document.getElementById(
            "headerShop"
          ).textContent =
            session.shopName +
            " • " +
            session.shopId;


          products =
            getProducts();


          generateQuantityOptions(
            "kg"
          );


          renderProducts();

          updateStats();


          loading.style.display =
            "none";


          mainContent.style.display =
            "block";

        }

        catch(error) {

          console.error(
            "OWNER DASHBOARD ERROR:",
            error
          );


          await signOut(
            auth
          ).catch(
            () => {}
          );


          alert(
            "Dashboard verify नहीं हो सका। Firebase Rules और connection check करें।"
          );


          window.location.replace(
            "owner-login.html"
          );

        }

      }
    );


    /*
     * =========================================
     * PRODUCT STORAGE
     * =========================================
     */

    function productStorageKey() {

      return (
        "localShopProducts_" +
        currentShopId
      );

    }


    function getProducts() {

      try {

        return (
          JSON.parse(
            localStorage.getItem(
              productStorageKey()
            )
          ) || []
        );

      }

      catch(error) {

        return [];

      }

    }


    function saveProducts() {

      localStorage.setItem(
        productStorageKey(),
        JSON.stringify(
          products
        )
      );

    }


    /*
     * =========================================
     * MESSAGES
     * =========================================
     */

    function showError(message) {

      const box =
        document.getElementById(
          "errorMessage"
        );

      box.textContent =
        message;

      box.style.display =
        "block";

      document.getElementById(
        "successMessage"
      ).style.display =
        "none";

    }


    function showSuccess(message) {

      const box =
        document.getElementById(
          "successMessage"
        );

      box.textContent =
        message;

      box.style.display =
        "block";

      document.getElementById(
        "errorMessage"
      ).style.display =
        "none";

    }


    function hideMessages() {

      document.getElementById(
        "errorMessage"
      ).style.display =
        "none";

      document.getElementById(
        "successMessage"
      ).style.display =
        "none";

    }


    /*
     * =========================================
     * UNIT CHANGE
     * =========================================
     */

    document
      .getElementById("unit")
      .addEventListener(
        "change",
        function() {

          selectedQuantities =
            [];

          generateQuantityOptions(
            this.value
          );

        }
      );


    /*
     * =========================================
     * SMART QUANTITY OPTIONS
     * =========================================
     */

    function generateQuantityOptions(
      unit
    ) {

      const container =
        document.getElementById(
          "quantityOptions"
        );


      const info =
        document.getElementById(
          "unitInfo"
        );


      container.innerHTML =
        "";


      let options = [];


      /*
       * KG
       */

      if (
        unit === "kg"
      ) {

        options = [

          {
            value: 0.25,
            label: "250 g"
          },

          {
            value: 0.5,
            label: "500 g"
          },

          {
            value: 0.75,
            label: "750 g"
          },

          {
            value: 1,
            label: "1 kg"
          },

          {
            value: 1.5,
            label: "1.5 kg"
          },

          {
            value: 2,
            label: "2 kg"
          },

          {
            value: 3,
            label: "3 kg"
          },

          {
            value: 5,
            label: "5 kg"
          }

        ];


        info.textContent =
          "Customer 250g, 500g, 750g, 1kg आदि चुन सकेगा।";

      }


      /*
       * GRAM
       */

      else if (
        unit === "gram"
      ) {

        options = [

          {
            value: 50,
            label: "50 g"
          },

          {
            value: 100,
            label: "100 g"
          },

          {
            value: 250,
            label: "250 g"
          },

          {
            value: 500,
            label: "500 g"
          },

          {
            value: 750,
            label: "750 g"
          },

          {
            value: 1000,
            label: "1 kg"
          }

        ];


        info.textContent =
          "Customer अलग-अलग gram quantity चुन सकेगा।";

      }


      /*
       * LITRE
       */

      else if (
        unit === "litre"
      ) {

        options = [

          {
            value: 0.25,
            label: "250 ml"
          },

          {
            value: 0.5,
            label: "500 ml"
          },

          {
            value: 0.75,
            label: "750 ml"
          },

          {
            value: 1,
            label: "1 L"
          },

          {
            value: 1.5,
            label: "1.5 L"
          },

          {
            value: 2,
            label: "2 L"
          },

          {
            value: 5,
            label: "5 L"
          }

        ];


        info.textContent =
          "Customer 250ml, 500ml, 750ml, 1L आदि चुन सकेगा।";

      }


      /*
       * ML
       */

      else if (
        unit === "ml"
      ) {

        options = [

          {
            value: 100,
            label: "100 ml"
          },

          {
            value: 250,
            label: "250 ml"
          },

          {
            value: 500,
            label: "500 ml"
          },

          {
            value: 750,
            label: "750 ml"
          },

          {
            value: 1000,
            label: "1 L"
          }

        ];


        info.textContent =
          "Customer ml quantity चुन सकेगा।";

      }


      /*
       * PIECE
       */

      else if (
        unit === "piece"
      ) {

        options = [

          {
            value: 1,
            label: "1 Piece"
          },

          {
            value: 2,
            label: "2 Pieces"
          },

          {
            value: 5,
            label: "5 Pieces"
          },

          {
            value: 10,
            label: "10 Pieces"
          }

        ];


        info.textContent =
          "Customer pieces में quantity चुन सकेगा।";

      }


      /*
       * DOZEN
       */

      else if (
        unit === "dozen"
      ) {

        options = [

          {
            value: 1,
            label: "1 Dozen"
          },

          {
            value: 2,
            label: "2 Dozen"
          },

          {
            value: 5,
            label: "5 Dozen"
          }

        ];


        info.textContent =
          "Customer dozen में quantity चुन सकेगा।";

      }


      options.forEach(
        function(option) {

          const button =
            document.createElement(
              "button"
            );


          button.type =
            "button";


          button.className =
            "quantity-option";


          button.textContent =
            option.label;


          const alreadySelected =
            selectedQuantities.some(
              item =>
                Number(
                  item.value
                ) ===
                Number(
                  option.value
                )
            );


          if (
            alreadySelected
          ) {

            button.classList.add(
              "active"
            );

          }


          button.addEventListener(
            "click",
            function() {

              const index =
                selectedQuantities.findIndex(
                  item =>
                    Number(
                      item.value
                    ) ===
                    Number(
                      option.value
                    )
                );


              if (
                index >= 0
              ) {

                selectedQuantities.splice(
                  index,
                  1
                );

                button.classList.remove(
                  "active"
                );

              }

              else {

                selectedQuantities.push(
                  {
                    value:
                      option.value,

                    label:
                      option.label
                  }
                );

                button.classList.add(
                  "active"
                );

              }

            }
          );


          container.appendChild(
            button
          );

        }
      );

    }


    /*
     * =========================================
     * STOCK
     * =========================================
     */

    function setStock(
      value
    ) {

      currentStock =
        value;


      const inBtn =
        document.getElementById(
          "inStockBtn"
        );


      const outBtn =
        document.getElementById(
          "outStockBtn"
        );


      inBtn.classList.remove(
        "active-in"
      );


      outBtn.classList.remove(
        "active-out"
      );


      if (
        value
      ) {

        inBtn.classList.add(
          "active-in"
        );

      }

      else {

        outBtn.classList.add(
          "active-out"
        );

      }

    }


    /*
     * =========================================
     * ADD / EDIT PRODUCT
     * =========================================
     */

    document
      .getElementById(
        "productForm"
      )
      .addEventListener(
        "submit",
        function(event) {

          event.preventDefault();

          hideMessages();


          const name =
            document
              .getElementById(
                "productName"
              )
              .value
              .trim();


          const category =
            document
              .getElementById(
                "category"
              )
              .value
              .trim();


          const price =
            Number(
              document
                .getElementById(
                  "price"
                )
                .value
            );


          const unit =
            document
              .getElementById(
                "unit"
              )
              .value;


          const description =
            document
              .getElementById(
                "description"
              )
              .value
              .trim();


          const image =
            document
              .getElementById(
                "imageUrl"
              )
              .value
              .trim();


          if (
            !name
          ) {

            showError(
              "Product name डालें।"
            );

            return;

          }


          if (
            !category
          ) {

            showError(
              "Category डालें।"
            );

            return;

          }


          if (
            !price ||
            price <= 0
          ) {

            showError(
              "Valid price डालें।"
            );

            return;

          }


          if (
            selectedQuantities.length ===
            0
          ) {

            showError(
              "कम से कम एक customer quantity option चुनें।"
            );

            return;

          }


          /*
           * EDIT
           */

          if (
            editingId !== null
          ) {

            const product =
              products.find(
                item =>
                  Number(
                    item.id
                  ) ===
                  Number(
                    editingId
                  )
              );


            if (
              product
            ) {

              product.name =
                name;

              product.category =
                category;

              product.price =
                price;

              product.unit =
                unit;

              product.description =
                description;

              product.image =
                image;

              product.inStock =
                currentStock;

              product.quantityOptions =
                selectedQuantities;

            }


            showSuccess(
              "Product successfully updated."
            );

          }


          /*
           * ADD
           */

          else {

            products.push({

              id:
                Date.now(),

              shopId:
                currentShopId,

              name:
                name,

              category:
                category,

              price:
                price,

              unit:
                unit,

              description:
                description,

              image:
                image,

              inStock:
                currentStock,

              quantityOptions:
                selectedQuantities,

              createdAt:
                new Date()
                  .toISOString()

            });


            showSuccess(
              "Product successfully added."
            );

          }


          saveProducts();

          resetForm();

          renderProducts();

          updateStats();

        }
      );


    /*
     * =========================================
     * RENDER PRODUCTS
     * =========================================
     */

    function renderProducts() {

      const container =
        document.getElementById(
          "productList"
        );


      if (
        products.length ===
        0
      ) {

        container.innerHTML = `

          <div class="empty">

            <h3>
              📦 अभी कोई product नहीं है
            </h3>

            <p style="margin-top:7px;">
              ऊपर से अपना पहला product add करें।
            </p>

          </div>

        `;

        return;

      }


      container.innerHTML =
        "";


      products
        .slice()
        .reverse()
        .forEach(
          function(product) {

            const card =
              document.createElement(
                "div"
              );


            card.className =
              "product-card";


            const image =
              product.image ||
              "https://via.placeholder.com/500x350?text=No+Image";


            const quantities =
              product.quantityOptions ||
              [];


            card.innerHTML = `

              <img
                src="${escapeHtml(image)}"
                alt="${escapeHtml(product.name)}"
                onerror="
                  this.src='https://via.placeholder.com/500x350?text=No+Image'
                "
              >


              <div class="product-body">

                <h3>
                  ${escapeHtml(product.name)}
                </h3>


                <p>
                  ${escapeHtml(product.category)}
                </p>


                <div class="product-price">

                  ₹${Number(
                    product.price
                  ).toFixed(2)}

                  /

                  ${escapeHtml(
                    product.unit
                  )}

                </div>


                <p>

                  Options:

                  ${
                    quantities
                      .map(
                        item =>
                          escapeHtml(
                            item.label
                          )
                      )
                      .join(", ")
                  }

                </p>


                <div style="margin-top:8px;">

                  <span
                    class="badge ${
                      product.inStock
                        ? "in"
                        : "out"
                    }"
                  >

                    ${
                      product.inStock
                        ? "🟢 In Stock"
                        : "🔴 Out of Stock"
                    }

                  </span>

                </div>


                <div class="card-actions">

                  <button
                    type="button"
                    class="edit"
                    onclick="
                      editProduct(
                        ${Number(product.id)}
                      )
                    "
                  >
                    ✏️ Edit
                  </button>


                  <button
                    type="button"
                    class="delete"
                    onclick="
                      deleteProduct(
                        ${Number(product.id)}
                      )
                    "
                  >
                    🗑 Remove
                  </button>

                </div>

              </div>

            `;


            container.appendChild(
              card
            );

          }
        );

    }


    /*
     * =========================================
     * EDIT PRODUCT
     * =========================================
     */

    function editProduct(
      id
    ) {

      const product =
        products.find(
          item =>
            Number(
              item.id
            ) ===
            Number(
              id
            )
        );


      if (
        !product
      ) {

        return;

      }


      editingId =
        product.id;


      document.getElementById(
        "formTitle"
      ).textContent =
        "✏️ Edit Product";


      document.getElementById(
        "productName"
      ).value =
        product.name;


      document.getElementById(
        "category"
      ).value =
        product.category;


      document.getElementById(
        "price"
      ).value =
        product.price;


      document.getElementById(
        "unit"
      ).value =
        product.unit;


      document.getElementById(
        "description"
      ).value =
        product.description ||
        "";


      document.getElementById(
        "imageUrl"
      ).value =
        product.image ||
        "";


      currentStock =
        product.inStock;


      setStock(
        currentStock
      );


      selectedQuantities =
        product.quantityOptions ||
        [];


      generateQuantityOptions(
        product.unit
      );


      document.getElementById(
        "saveBtn"
      ).textContent =
        "💾 Update Product";


      document.getElementById(
        "cancelEditBtn"
      ).style.display =
        "block";


      document
        .getElementById(
          "productForm"
        )
        .scrollIntoView({
          behavior:
            "smooth"
        });

    }


    /*
     * =========================================
     * DELETE PRODUCT
     * =========================================
     */

    function deleteProduct(
      id
    ) {

      const product =
        products.find(
          item =>
            Number(
              item.id
            ) ===
            Number(
              id
            )
        );


      if (
        !product
      ) {

        return;

      }


      const confirmDelete =
        confirm(
          '"' +
          product.name +
          '" को remove करना है?'
        );


      if (
        !confirmDelete
      ) {

        return;

      }


      products =
        products.filter(
          item =>
            Number(
              item.id
            ) !==
            Number(
              id
            )
        );


      saveProducts();

      renderProducts();

      updateStats();


      showSuccess(
        "Product removed successfully."
      );

    }


    /*
     * =========================================
     * CANCEL EDIT
     * =========================================
     */

    function cancelEdit() {

      editingId =
        null;

      resetForm();

    }


    /*
     * =========================================
     * RESET FORM
     * =========================================
     */

    function resetForm() {

      document
        .getElementById(
          "productForm"
        )
        .reset();


      editingId =
        null;


      currentStock =
        true;


      selectedQuantities =
        [];


      document.getElementById(
        "formTitle"
      ).textContent =
        "➕ Add New Product";


      document.getElementById(
        "saveBtn"
      ).textContent =
        "➕ Add Product";


      document.getElementById(
        "cancelEditBtn"
      ).style.display =
        "none";


      setStock(
        true
      );


      document.getElementById(
        "unit"
      ).value =
        "kg";


      generateQuantityOptions(
        "kg"
      );

    }


    /*
     * =========================================
     * STATS
     * =========================================
     */

    function updateStats() {

      const total =
        products.length;


      const inStock =
        products.filter(
          product =>
            product.inStock
        ).length;


      const outStock =
        products.filter(
          product =>
            !product.inStock
        ).length;


      document.getElementById(
        "totalProducts"
      ).textContent =
        total;


      document.getElementById(
        "inStockProducts"
      ).textContent =
        inStock;


      document.getElementById(
        "outStockProducts"
      ).textContent =
        outStock;

    }


    /*
     * =========================================
     * LOGOUT
     * =========================================
     */

    window.logout =
      async function() {

        try {

          await signOut(
            auth
          );

        }

        catch(error) {

          console.error(
            "LOGOUT ERROR:",
            error
          );

        }


        sessionStorage.removeItem(
          "localShopOwnerSession"
        );


        localStorage.removeItem(
          "localShopOwnerId"
        );


        localStorage.removeItem(
          "localShopId"
        );


        localStorage.removeItem(
          "localShopName"
        );


        window.location.replace(
          "owner-login.html"
        );

      };


    /*
     * =========================================
     * MAKE FUNCTIONS AVAILABLE TO BUTTONS
     * =========================================
     */

    window.setStock =
      setStock;

    window.editProduct =
      editProduct;

    window.deleteProduct =
      deleteProduct;

    window.cancelEdit =
      cancelEdit;

  </script>

</body>
</html>
