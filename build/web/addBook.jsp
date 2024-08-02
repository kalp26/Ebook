<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Book</title>
<style>

body {
font-family: Arial, sans-serif;
background-color: rgba(253, 70, 70, 0.4);
background: url(loginbook.webp) no-repeat center fixed; 
background-size: cover;
margin: 0;
padding: 0;
display: flex;
justify-content: center;
align-items: center;
height: 100vh;
}

.container {
z-index: 10;
background-color: #fff;
padding: 15px;
border-radius: 8px;
box-shadow: 0px 0px 10px 0 rgba(0, 0, 0, 0.7), 0 6px 20px 0 rgba(0, 0, 0, 0.19); 
width: 300px;
text-align: center;
}

h1 {
color: #333;
}

form {
display: flex;
flex-direction: column;
}

input {
margin: 10px 0;
padding: 8px;
border: 1px solid #ccc;
border-radius: 4px;
}

input.btn {
background-color: white;
color: #000000;
padding: 10px;
border: 2px solid rgb(253, 70, 70);
border-radius: 4px;
cursor: pointer;
}

input.btn:hover {
background-color: rgb(253, 70, 70);
color: white;
transition: 0.3s;
}

a{
background-color: white;
color: #000000;
padding: 10px;
border: 2px solid rgb(253, 70, 70);
border-radius: 4px;
cursor: pointer;
}

a:hover {
background-color: rgb(253, 70, 70);
color: white;
transition: 0.3s;
}


h1 {
color: #333;
}


</style>

</head>
<body>
    
<div class="container">
    <img class="logo" src="ebook1.png" alt="ebooklogo" width="80">
    <h2>Add Book</h2>
    <form action="AddBookServlet" method="post">
        
        <input type="hidden" name="table" value="${param.table}">
        <input type="text" id="bookId" placeholder="bookId" name="bookId"><br>
        <input type="text" id="bookName" placeholder="bookName" name="bookName"><br>
        <input type="text" id="author" placeholder="author" name="author"><br>
        <input type="text" id="price" placeholder="price" name="price"><br>
        <input type="text" id="imageUrl" placeholder="imageUrl" name="imageUrl"><br>
        <input type="submit"  class="btn" value="Add Book">
    </form>
    </div>
</body>
</html>
