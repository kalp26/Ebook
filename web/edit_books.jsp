<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Table</title>
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

select {
    margin: 10px 0;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

select:focus {
    outline: none;
    border-color: rgb(253, 70, 70);
    box-shadow: 0 0 5px rgba(253, 70, 70, 0.5);
}

select option {
    background-color: white;
    color: #000000;
}

select option:hover {
    background-color: rgb(253, 70, 70);
    color: white;
}

select:focus option:checked {
    background-color: rgb(253, 70, 70);
    color: white;
}

select::-ms-expand {
    display: none;
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
    <h1>Edit Books</h1>
    <form action="manageBookServlet" method="post">
        <label for="table">Select Page:</label>
        <select name="table" id="table">
            <option value="action">Action</option>
            <option value="drama">Drama</option>
            <option value="history">History</option>
            <option value="horror">Horror</option>
            <option value="romance">Romance</option>
            <option value="science_fiction">Science Fiction</option>
        </select>
        <br>
        <label for="operation">Select Operation:</label>
        <select name="operation" id="operation">
            <option value="add">Insert</option>
            <option value="delete">Delete</option>
        </select>
        <br>
        <input type="submit" class="btn" value="Submit">
    </form>
</body>
</html>
