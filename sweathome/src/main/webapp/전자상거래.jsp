<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>샵</title>
    <link rel="stylesheet" href="CSS/전자상거래.css">
    <link rel="stylesheet" href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">
		$(document).ready( function() {

		$("#headers").load("header.html");  // 원하는 파일 경로를 삽입하면 된다
		$("#footers").load("footer1.html");  // 추가 인클루드를 원할 경우 이런식으로 추가하면 된다

});
	</script>
</head>

<body>
    <div id="headers"></div>
    <section>
    <div class="webshop">
        <div class="container">
            <!-- <a href="#" class="logo">Ecommerce</a>
            <i class='bx bx-shopping-bag' id="cart-icon"></i> -->
            <div class="cart">
                <div class="box" >
                <h2 class="cart-title">장바구니</h2>
                <div class="cart-content">

                    <div class="cart-box">
                        <img src="/img/sel.jpg" alt="" class="cart-img">
                        <div class="detail-box">
                            <div class="cart-product-title">제품이름</div>
                            <div class="cart-price">5000₩</div>
                            <input type="number" value="1" class="cart-quantity">
                        </div>
                      
                      
                        <!-- 카트 삭제 -->
                        <i class='bx bxs-trash-alt cart-remove'></i>
                    </div>
                </div>
                <!-- 전체 가격 -->
                <div class="total">
                    <span class="total-title">Total</span>
                    <span class="total price">0₩</span>
                </div>
                <!-- 구매 버튼 -->
                <a href="주문서.html"><button type="button" class="btn-buy">Buy now</button></a>
                <!-- 카트 닫기 -->
                <!-- <i class='bx bx-x' id="close-cart"></i> -->
            </div>
            </div>
        </div>
    </section>
    <section class="shop">
        <h2 class="section-title">셀러드</h2>
        <div class="shop-content">
            <!-- 상품1 -->
            <div class="product-box">
                <img src="img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름1</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>

            <!-- 상품2 -->
            <div class="product-box">
                <img src="img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름2</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>

            <!-- 상품3 -->
            <div class="product-box">
                <img src="img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름3</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>

            <!-- 상품4 -->
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름4</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>

            <!-- 상품5 -->
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름5</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>

            <!-- 상품6 -->
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">new product</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>

            <!-- 상품7 -->
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름6</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>

            <!-- 상품8 -->
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>

            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>
            <div class="product-box">
                <img src="/img/sel.jpg" alt="" class="product-img">
                <h2 class="product-title">제품이름</h2>
                <span class="price">5000₩</span>
                <i class='bx bx-shopping-bag add-cart'></i>
            </div>

        </div>
    </section>
    
</div>
<div id="footers"></div>
<script src="/js/전자상거래.js"></script>
</body>

</html>