//카트
let cartIcon = document.querySelector("#cart-icon");
let cart = document.querySelector(".cart");
let closeCart = document.querySelector("#close-cart");

//카트 아이콘 클릭
// cartIcon.onclick  =() => {
//     cart.classList.add("active");
// };
//카트 닫기
// closeCart.onclick =() => {
//     cart.classList.remove("active");
// };


if(document.readyState == 'loading'){
    document.addEventListener('DOMContentLoaded', ready);

}else{
    ready();
}

//클릭시 상품 수량 증가
function ready(){
    var removeCartButton = document.getElementsByClassName('bx bxs-trash-alt cart-remove');
    console.log(removeCartButton);
    for(var i = 0; i<removeCartButton.length; i++){
        var button = removeCartButton[i];
        button.addEventListener("click", removeCartItem);
    }
//상품 수량 변경
    var quantityInputs = document.getElementsByClassName("cart-quantity");
    for(var i = 0; i<quantityInputs.length; i++){
        var input = quantityInputs[i];
        input.addEventListener("change" ,quantityChanged);
    }

    var addCart = document.getElementsByClassName("bx bx-shopping-bag add-cart");
    for(var i = 0; i<addCart.length; i++){
       var button = addCart[i];
       button.addEventListener("click" , addCartClicked);
    }

    
   document.getElementsByClassName("btn-buy")[0]
   .addEventListener("click" , buyButtonClicked);

}
function buyButtonClicked(){
    alert("주문 페이지로 이동");
    var cartContent = document.getElementsByClassName("cart-content")[0];
    while(cartContent.hasChildNodes()){
        cartContent.removeChild(cartContent.firstChild);
    }
    
    updatetotal();
}

//상품 제거
function removeCartItem(event){
    var buttonClicked = event.target;
    buttonClicked.parentElement.remove();
    updatetotal();
}
//수량이 1일때 더이상 내려가지 않음
function quantityChanged(event){
    var input = event.target;
    if(isNaN(input.value) || input.value <= 0) {
        input.value = 1;
    }
    updatetotal();
}

function addCartClicked(event){
    var button = event.target;
    var shopProducts = button.parentElement;
    var title = shopProducts.getElementsByClassName("product-title")[0].innerText;
    var price = shopProducts.getElementsByClassName("price")[0].innerText;
    var productImg = shopProducts.getElementsByClassName("product-img")[0].src;
    addProcuctToCart(title, price, productImg);
    updatetotal();
}
function addProcuctToCart(title, price, productImg){
    var cartShopBox = document.createElement("div");
    cartShopBox.classList.add("cart-box");
    var cartItems = document.getElementsByClassName("cart-content")[0];
    var cartIntemsNames = cartItems.getElementsByClassName("cart-product-title");
    for(var i = 0; i<cartIntemsNames.length; i++) {
       if(cartIntemsNames[i].innerText == title ){
        alert('이미 장바구니에 담겨있는 상품입니다');
        return;
       }
    }

    var cartBoxContent = `
                            <img src="${productImg}" alt="" class="cart-img">
                            <div class="detail-box">
                                <div class="cart-product-title" name="product_name">${title}</div>
                                <div class="cart-price">${price}</div>
                                <input type="number" value="1" class="cart-quantity">
                            </div>
                            <!-- 카트 삭제 -->
                            <i class='bx bxs-trash-alt cart-remove'></i>`;
cartShopBox.innerHTML = cartBoxContent;
cartItems.append(cartShopBox);
cartShopBox
    .getElementsByClassName('bx bxs-trash-alt cart-remove')[0]
    .addEventListener("click",removeCartItem);
cartShopBox
    .getElementsByClassName("cart-quantity")[0]
    .addEventListener("change",quantityChanged);
}
function updatetotal(){
    var cartContent = document.getElementsByClassName("cart-content")[0];
    var cartBoxes = cartContent.getElementsByClassName("cart-box");
    var total =0;
    for(var i = 0; i<cartBoxes.length; i++){
        var cartBox = cartBoxes[i];
        var priceElement = cartBox.getElementsByClassName("cart-price")[0];
        var quantityElement = cartBox.getElementsByClassName("cart-quantity")[0];
        var price = parseFloat(priceElement.innerText.replace("₩",""));
        var quantity = quantityElement.value;
        total = total +(price * quantity);
    }
        total = Math.round(total*100)/100;
    
        
        document.getElementsByClassName("total-price")[0].innerText = total +"₩";
     
} 