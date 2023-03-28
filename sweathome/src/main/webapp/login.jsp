<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
    margin: 0;
    padding: 0;
    font-family: 'poppins', sans-serif;
}
section{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    width: 100%;
    background: white;
   
}
.box{
    position: relative;
    width: 400px;
    height: 450px;
    background: transparent;
    border: 2px solid #BBDEFB;
    border-radius: 20px;
    background-color: #E3F2FD;
    backdrop-filter: blur(15px);
    display: flex;
    justify-content: center;
    align-items: center;
}
h2{
    font-size: 2em;
    color: black;
    text-align: center;
}
.inputbox{
    position: relative;
    margin: 30px 0;
    width: 310px;
    border-bottom: 2px solid white;
}
.inputbox label{
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    color: black;
    font-size: 1em;
    pointer-events: none;
    font-size: 1em;
    transform: .5s;
    
}
input:focus ~label,
input:valid ~ label{
top: -5px;
}
.inputbox input{
    width: 100%;
    height: 50px;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    padding: 0 35px 0 5px;
    color: black;
}
.inputbox ion-icon{
    position: absolute;
    right: 8px;
    color: black;
    font-size: 1.2em;
    top: 20px;
}
.forget{
    margin: -15px 0 15px;
    font-size: .9em;
    color: black;
    display: flex;
    justify-content: center;
}
.forget label input{
    margin-right: 3px;
}
.forget label a{
    color: black;
    text-decoration: none;

}
.forget label a:hover{
    text-decoration: underline;
}
button{
    width: 100%;
    height: 40px;
    border-radius: 40px;
    background-color: white;
    border: none;
    outline: none;
    cursor: pointer;
    font-size: 1em;
    font-weight: 600;
}
.register{
    font-size: .9em;
    color: black;
    text-align: center;
    margin: 25px 0 10px;
}
.register p a{
    text-decoration: none;
    color: black;
    font-weight: 600;
}
.register p a:hover{
    text-decoration: underline;
   
}
</style>
</head>
<body>
    <section>
        <div class="box">
            <div class="value">
                <form action="Logincon">
                    <h2>login</h2>
                    <div class="inputbox">
                        <ion-icon name="person-circle-outline"></ion-icon>
                        <input type="text" name="id" required> 
                        <label for="" >ID</label>
                    </div>
                    <div class="inputbox">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                        <input type="password" type="text" required> 
                        <label for="" >Password</label>
                    </div>
                    <div class="forget">
                        <label for=""><input type="checkbox"><a href="#">Forget Password</a></label>
                        
                    </div>
                    <button>Log in</button>
                    <div class="register">
                        <p> Don't have a account <a href="#">Register</a></p>
                    </div>
                </form>
            </div>
        </div>
    </section>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>