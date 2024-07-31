

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Registration Form</title>

      <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">-->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
      
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Calligraffitti&family=Francois+One&display=swap" rel="stylesheet">
   <style>
       body{
        margin: 60px;
        padding: 10px;
/*       background: radial-gradient(#a429bc,#9225a7,#7f2092);*/
        background-color: #7DA2A9;
        height: 100vh;
        overflow: hidden;
        font-family: 'Noto Sans TC', sans-serif;
      }
      p{
          text-align:center;
          font-family: "Francois One", sans-serif;
/*          font-family: "Devonshire",static;*/
         font-size: 28px;
         font-weight: bold;
         
  
        }
        .center{
         width: 430px;
         margin: 60px auto;
         position: relative;
       }
        .center .header{
         font-size: 28px;
         font-weight: bold;
         color: white;
         padding: 20px 0 30px 25px;
/*         background: #5c1769;*/
            background-color:black;
         border-bottom: 1px solid #370e3f;
         border-radius: 5px 5px 0 0;
       }
       
        .center form{
         position: absolute;
         background: white;
         width: 100%;
         padding: 50px 10px 0 30px;
         box-sizing: border-box;
         border: 1px solid #6d1c7d;
         border-radius: 0 0 5px 5px;
       }
        form input{
         height: 50px;
         width: 90%;
         padding: 0 10px ;
          margin:10px ;
         border-radius: 3px;
         border: 1px solid silver;
         font-size: 18px;
         outline: none;
       }
       
        form input[type="password"]{
         margin-top: 20px;
       }
        form i{
/*         position: absolute;*/
         font-size: 25px;
         color: grey;
         margin: 15px 0 0 -45px;
       }
        i.fa-lock{
         margin-top: 35px;
       }
        form input[type="submit"]{
         margin-top: 40px;
         margin-bottom: 40px;
         width: 130px;
         height: 45px;
         color: white;
         cursor: pointer;
         line-height: 45px;
         border-radius: 45px;
         border-radius: 5px;
         background:black;
       }
        form input[type="submit"]:hover{
            cursor:pointer;
         background: #7DA2A9;
         transition: .5s;
      }
        form a{
         text-decoration: none;
         font-size: 18px;
         color:black;
         padding: 0 0 0 20px;
      }
      

  
      
      
   </style>
   </head>
   <body>
      <p > Welcome user ! <p>
      <div class="center">

       
            <div class="header">
            Registration  Form
         </div>
          <form action="fetchdata.jsp" method="post">
             <input type="text" placeholder="name" name="sname" id="sname" required>
            <i class="fa fa-user"></i>
            <input type="text" placeholder="Email or Username" name="username" id="username" required >
            <i class="far fa-envelope"></i>
            <input  type="password" placeholder="Password" name="password" id="password" required>
            <i class="fas fa-lock" ></i>
            <input type="number" placeholder="Mobile number" name="mobile" id="mobile" required>
            <i class="fa fa-phone"></i>

            <input type="submit" value="Register" id="submit" name="submit">
            <a href="#">Forgot Password?</a>
         </form>
      </div>

   </body>
</html>

