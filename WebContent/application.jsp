<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Survey Form</title>

        <!--font-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,400;1,200;1,400&display=swap" rel="stylesheet">

        <!--css
        <link rel="stylesheet" href="./src/style/style.css">
        -->
   
   <style>
   *variables*/
:root {
    --color-white: #f3f3f3;
    --color-darkblue: #1b1b32;
    --color-darkblue-alpha: rgba(27,27,50,0.8);
    --color-green: #37af65;
}

/*reset*/
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.4;
    color: var(--color-white, white);
    background-color: var(--color-darkblue);
    width: 100%;
    height: 100%;
    z-index: -1;
    background-image: linear-gradient(115deg, 
    rgba(58, 58, 158, 0.8), rgba(136, 136, 206, 0.7)), 
    url(https://cdn.freecodecamp.org/testable-projects-fcc/images/survey-form-background.jpeg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
}


h1, p, label, button {
    color: var(--color-white);
}

input, select, textarea, button {
    border: none;
    outline: none;
    color: rgb(73, 80, 87);
}

/*container*/
.container {
    max-width: 720px;
    margin: 3.125rem auto 0 auto;
}

.text-center {
    text-align: center;
}

/*header*/
.container .header {
    padding: 0 0.625rem;
    margin-bottom: 1.875rem;
}

.container .header #title {
    line-height: 1.2;
    font-size: 2rem;
    margin-bottom: 0.5rem;
}

.container .header .description {
    font-size: 1.125rem;
    font-style: italic;
    font-weight: 200;
}


/*form*/
.container #survey-form {
    border-radius: 5px;
    background-color: var(--color-darkblue-alpha);
    padding: 2.5rem;
    margin-bottom: 2rem;
}

.container #survey-form .form-group {
    margin: 0 auto 1.25rem auto;
    padding: 0.25rem;
}

.container #survey-form .form-group label, 
.container #survey-form .form-group p {
    display: flex;
    align-items: center;
    font-size: 1.125rem;
    margin-bottom: 0.5rem 
}

.container #survey-form .form-group input,
.container #survey-form .form-group select,
.container #survey-form .form-group textarea {
    font-size: 1rem;
    padding: 0.375rem 0.75rem;
    color: #494949;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.container #survey-form .form-group .form-control {
    display: block;
    width: 100%;
    height: 2.375rem;        
}

.container #survey-form .form-control:focus{
    border-color: #80bdff;
    box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
}

.container #survey-form .form-group .input-radio, 
.container #survey-form .form-group .input-checkbox {
    margin-right: 0.625rem;
    min-height: 1.25rem;
    min-width: 1.25rem;
}

.container #survey-form .form-group .input-textarea {
    width: 100%;
    font-size: 1.07rem;
    min-height: 120px;
    padding: 0.625rem;
    resize: vertical;
}

.container #survey-form .form-group .input-textarea:focus{
    border-color: #80bdff;
    box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
}

.container #survey-form .form-group .submit-button {
    width: 100%;
    padding: 0.75rem;
    background-color: var(--color-green, rgb(20, 190, 70));
    color: var(--color-white);
    border-radius: 2px;
    cursor: pointer;
    transition: background-color .15s ease;
    font-size: 1.125rem;
    font-weight: 400;
}

.container #survey-form .form-group .submit-button:hover {
    background-color: #358f58;
}
   
   
   .div1{
   display: block;
   visibility: 
   
   
   
   
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   </style>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    </head>
    

      <body onload='hola("")'>


      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
        <div class="container">
            <header class="header"> 
                <h1 id="title" class="text-center"></h1>
                <p id="description" class="description text-center"></p>
            </header>
    
            <form action="Application" method="post" id="survey-form">
                <div class="form-group">
                    <label id="name-label" for="name">Parking name</label>
                    <input type="text" name="name" id="name" class="form-control" required placeholder="Enter your name">
                </div>
    <div class="form-group">
                    <label id="name-label" for="name">Slot count</label>
                    <input type="text" name="count" id="name" class="form-control" required placeholder="Enter your name">
                </div>
              
      <!-- <div class="form-group">
              <label  class="field6" for="shower_times"> Select a slot</label>
<SELECT name="shower_times" onChange="hola(this.value)">

<OPTION>select on option</OPTION>
<OPTION value="1">1</OPTION>
<OPTION value="2">2</OPTION>
<OPTION value="3">3</OPTION>
<OPTION value="4">4</OPTION>
<OPTION value="5">5</OPTION>










</SELECT>  -->

<!-- <div id="div1">
<BR>
<label  class="field6" for="hour"> hour of the shower: </label><input type="text"   name="hour" class="input"> 
</div>

<div id="div2">
<label  class="field6" for="hour1">hour of first shower: </label><input type="text" name="hour1" class="input"> 
<BR>
<label  class="field6" for="hour2">hour of second shower: </label><input type="text" name="hour2" class="input"> 
</div>
           </div>     
               -->
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
             <br>
               
               <div class="form-group" id="div1" >
                    <label id="number-label" for="number">Slot 1</label>
                    <input type="text" name="slot1" id="number" class="form-control" min="10" max="99" placeholder="Age" >
                </div>
     <div class="form-group" id="div2" >
                    <label id="number-label" for="number">Slot 2</label>
                    <input type="text" name="slot2" id="number" class="form-control" min="10" max="99" placeholder="Age">
                </div>
    
                <div class="form-group" id="div3">
                    <label id="number-label" for="number">Slot 3</label>
                    <input type="text" name="slot3" id="number" class="form-control" min="10" max="99" placeholder="Age">
                </div>
     <div class="form-group" id="div4" >
                    <label id="number-label" for="number">Slot 4</label>
                    <input type="text" name="slot4" id="number" class="form-control" min="10" max="99" placeholder="Age">
                </div>
    
                <div class="form-group" id="div5" >
                    <label id="number-label" for="number">Slot 5</label>
                    <input type="text" name="slot5" id="number" class="form-control" min="10" max="99" placeholder="Age">
                </div>
    
                
                
                
                
                
                
                
                
                
                
                
                  <div class="form-group" >
                    <label id="number-label" for="number">Location</label>
                    <input type="text" name="location" id="number" class="form-control" min="10" max="99" placeholder="Age">
                </div>
      <div class="form-group">
                    <label id="name-label" for="name">Rate per Hour</label>
                    <input type="text" name="rate" id="name" class="form-control" required placeholder="Enter your name">
                </div>
              
               
                   <div class="form-group" >
                    <label id="number-label" for="number">Address</label>
                    <input type="text" name="address" id="number" class="form-control" min="10" max="99" placeholder="Age">
                </div>
    
                   <div class="form-group" >
                    <label id="number-label" for="number">pin your location</label>
                    <input type="text" name="pin" id="number" class="form-control" min="10" max="99" placeholder="Age">
                </div>
    
               
               
               
               
               
              
             
    
                <div class="form-group">
                    <button type="submit" id="submit" name="submit" class="submit-button">Submit</button>
                </div>
            </form>
        </div>
       <script language="javascript">

       
       
       
       
       
       
       
       
       
       
       
       
       function hola(x) {
        	
           
        	
        	if(x == 1) {
                document.getElementById("div1").style.display="block";
                document.getElementById("div2").style.display="hidden"; 
                document.getElementById("div3").style.display="hidden"; 
                document.getElementById("div4").style.visibility="hidden"; 
                document.getElementById("div5").style.visibility="hidden"; 
                
            
            
            
            
            }

            if(x == 2)  {
            	 document.getElementById("div1").style.display="block";
                 document.getElementById("div2").style.display="block"; 
                 document.getElementById("div3").style.display="hidden"; 
                 document.getElementById("div4").style.visibility="hidden"; 
                 document.getElementById("div5").style.visibility="hidden"; 
                 
             
            }
        
            if(x == 3)  {
           	 document.getElementById("div1").style.display="block";
                document.getElementById("div2").style.display="block"; 
                document.getElementById("div3").style.display="block"; 
                document.getElementById("div4").style.visibility="hidden"; 
                document.getElementById("div5").style.visibility="hidden"; 
                
            
           }
       
            if(x == 4)  {
           	 document.getElementById("div1").style.display="block";
                document.getElementById("div2").style.display="block"; 
                document.getElementById("div3").style.display="block"; 
                document.getElementById("div4").style.visibility="block"; 
                document.getElementById("div5").style.visibility="hidden"; 
                
            
           }
            if(x == 5)  {
           	 document.getElementById("div1").style.display="block";
                document.getElementById("div2").style.display="block"; 
                document.getElementById("div3").style.display="block"; 
                document.getElementById("div4").style.visibility="block"; 
                document.getElementById("div5").style.visibility="block"; 
                
            
           }
       
       
       }
    </script>


       
       
        
    </body>
</html>
