<%-- 
    Document   : index
    Created on : Apr 17, 2024, 3:29:03 PM
    Author     : 91762
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Ebook store</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    
    <body>
        <html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ebook</title>
    <link rel="stylesheet" href=
    "https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
  
    <link rel="stylesheet" href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
 
    <link rel="stylesheet" href=
"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="style.css">
    <style>
        .blogs .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(30rem, 1fr));
    gap: 1.5rem;
    padding-bottom: 4rem;
}

.blogs .box-container .box{
    overflow: hidden;
    border-radius: .5rem;
    background: #fff;
}
.blogs .box-container .box:hover{
    overflow: hidden;
    border-radius: .5rem;
    background: #fff;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.blogs .box-container .box img{
    height: 25rem;
    width: 100%;
    object-fit: cover;
}

.blogs .box-container .box .content{
    padding: 2rem;
}

.blogs .box-container .box .content .icons{
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 1.5rem;
    margin-bottom: 1rem;
    border-bottom: solid black;
}

.blogs .box-container .box .content .icons a{
   color: aqua;
   font-size: 1.5rem;
}

.blogs .box-container .box .content .icons a:hover{
    color: black;
}

.blogs .box-container .box .content .icons a i{
    color: rgb(0, 0, 0);
    padding-right: .5rem;
}

.blogs .box-container .box .content h3{
    line-height: 1.8;
    color: black;
    font-size: 2.2rem;
    padding: .5rem 0;
}

.blogs .box-container .box .content p{
    line-height: 1.8;
    color: black;
    font-size: 1.2rem;
    padding: .5rem 0;
}
    </style>
</head>
<body>
  <%@ include file="header.jsp" %>
    
        <section class="home" id="home">

        <div class="content">
            <div class="tagline">
            <h3 id="tagline">Books are a <span> uniquely </span> portable magic.</h3>
            </div>
            <p> There's a book for everyone, even if they don't think there is....</p>
            <a href="action.jsp" class="btn">Buy Now</a>
        </div>
        </section>
    
    <h1 class="heading">Our<span>Topsellers</span></h1>
    
    <section class="allc" id="allc">
        
        <div class="box-container">
            <div class="box">
            <img src="Action/A1.png" alt="">
            <h3>Scorned Vows: An Arranged Marriage Romance (Scorned Fate)</h3>
            <h5>Victoria Paige</h5>
            <div class="price">Rs 415/-</div>
            <a href="action.jsp" class="btn">Buy Now</a>    
        </div>
            
            <div class="box">
            <img src="Romance/R2.png" alt="">
            <h3>The Notebook</h3>
            <h5>Nicholas Sparks</h5>
            <div class="price">Rs 108</div>
             <a href="romance.jsp" class="btn">Buy Now</a>    
        </div>
        
        
            <div class="box">
            <img src="Drama/D3.png" alt="">
            <h3>1984</h3>
            <h5>George Orwell</h5>
            <div class="price">Rs 139</div>
             <a href="drama.jsp" class="btn">Buy Now</a>  
        </div>
            
        
            <div class="box">
            <img src="Horror/H4.png" alt="">
            <h3>It</h3>
            <h5>Stephen King</h5>
            <div class="price">Rs 411</div>
             <a href="horror.jsp" class="btn">Buy Now</a>    
        </div>
            
       
            <div class="box">
            <img src="SF/SF5.png" alt="">
            <h3>Dark Matter</h3>
            <h5>Blake Crouch</h5>
            <div class="price">Rs 417</div>
             <a href="scitionFiction.jsp" class="btn">Buy Now</a>    
        </div>
                
       
            <div class="box">
            <img src="History/History6.png" alt="">
            <h3>Meditations</h3>
            <h5>Marcus Aurelius</h5>
            <div class="price">Rs 139</div>
             <a href="history.jsp" class="btn">Buy Now</a>    
        </div>
                    
            <div class="box">
            <img src="Action/A7.png" alt="">
            <h3>The Cruel Prince (The Folk of the Air)</h3>
            <h5>Holly Black</h5>
            <div class="price">Rs 535</div>
            <a href="action.jsp" class="btn">Buy Now</a>    
        </div>
            
            <div class="box">
            <img src="Romance/R8.png" alt="">
            <h3>Anna Karenina</h3>
            <h5>Leo Tolstoy</h5>
            <div class="price">Rs 649</div>
             <a href="romance.jsp" class="btn">Buy Now</a>    
        </div>
        
        
            <div class="box">
            <img src="Drama/D9.png" alt="">
            <h3>The Color Purple</h3>
            <h5>Alice Walker</h5>
            <div class="price">Rs 256</div>
             <a href="drama.jsp" class="btn">Buy Now</a>  
        </div>
            
        
            <div class="box">
            <img src="Horror/H10.png" alt="">
             <h3>Ghosts of The Silent Hills</h3>
            <h5>Ankita Krishan</h5>
            <div class="price">Rs 189</div>
            <div class="price">Rs 415/-</div>
             <a href="horror.jsp" class="btn">Buy Now</a>    
        </div>
            
       
            <div class="box">
            <img src="SF/SF11.png" alt="">
            <h3>Samsara: Enter The Valley Of The Gods</h3>
            <h5>Saksham Garg</h5>
            <div class="price">Rs 164</div>
             <a href="scienceFiction.jsp" class="btn">Buy Now</a>    
        </div>
                
       
            <div class="box">
            <img src="History/History12.png" alt="">
            <h3>The Anarchy Hardcover</h3>
            <h5>William Dalrymple</h5>
            <div class="price">Rs 711</div>
             <a href="history.jsp" class="btn">Buy Now</a>    
        </div>
    </section>
    
    <section class="blogs" id="blogs">

        <h1 class="heading"> CUSTOMER <span>reviews</span></h1>

        <div class="box-container">
            
            <div class="box">
                <img src="person1.jpg" alt="">
                <div class="content">
                    <div class="icons">
                        <i class="bi bi-person">By Sam</i>
                        <a href="#"><i class="bi bi-calendar"></i></a>
                    </div>
                    <h3>Quality Products</h3>
                    <p>Quality of the books i bought here were awesome and that too at fantastistic rates.</p>
                </div>
            </div>

            <div class="box">
                <img src="person3.jpg" alt="">
                <div class="content">
                    <div class="icons">
                        <i class="bi bi-person">By Haley</i>
                        <a href="#"><i class="bi bi-calendar"></i></a>
                    </div>
                    <h3>Amazing Books</h3>
                    <p>The books Which are Available here Are totally amazing and they are very interesting </p>
                </div>
            </div>

            <div class="box">
                <img src="person2.jpg" alt="">
                <div class="content">
                    <div class="icons">
                        <i class="bi bi-person">By Lisa</i>
                        <a href="#"><i class="bi bi-calendar"></i></a>
                    </div>
                    <h3>Low cost</h3>
                    <p>The price of the book is very cheap compare to rest of the market </p>
                </div>
            </div>

        </div>
    </section>

 <%@ include file="footer.jsp" %>
    </body>
</html>

