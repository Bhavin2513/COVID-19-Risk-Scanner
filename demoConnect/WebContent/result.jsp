<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link rel="stylesheet" href="style2.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body >

		<header class="head">
            <div class="logohead">
       			<h4 style="color:white;"><img src="logo.png" style="width:120px;">COVID-19 RISK SCANNING SYSTEM </h4>
       		</div> 
        </header>
	
	<main>
		<div id="wrapper">
			
			<%
				int yes = (int)request.getAttribute("yes");
				int no = (int)request.getAttribute("no");
				int confirm = (int)request.getAttribute("confirm");
				
				//HIGH RISK
				if(confirm==1){
			%>
					<section class="resulthigh">
						<img src="sick12.svg" style="float:right;width:100px;height:70px">
	                    <h4>HIGH RISK of COVID-19</h4>
	                    
	                    <h5 style="color: black;">You need to ISOLATE YOURSELF !!</h5>
                    </section>
                    
                    <br>
				
					<section class="precautionshigh">
					
						<h3>We Recommend : </h3>
	                        
	                        <br>
		                        <img src="home5.svg" style="float:right;width:100px;height:90px"> 
		                        <h5>1. Immediately quarantine yourself for atleast 14 days.</h5>
		                        <br>
		                        <br>
		
		                        <img src="check.svg" style="float:left;width:100px;height:80px">
		                        <br>
		                        <h5>&nbsp;&nbsp;&nbsp;2. Monitor your symptoms daily !!</h5>
		                        <br>
		                        <br>
		                        <br>
		                        
		
		                        <img src="doctor.svg" style="float:right;width:100px;height:80px">
		                        <h5>3. Consult the Doctor and get yourself tested for COVID-19 !</h5>
		                        <br>
		                        <br>
		                        
		                        
		                        <img src="follow.svg" style="float:left;width:100px;height:80px">
		                        <br>
		                        <h5>4. Strictly follow the instructions given by Doctors.  </h5>

					</section>
					
				<%
				}
				
				else{
					
					
					
					
					//HIGH RISK
					if(yes>6){
					%>
						<section class="resulthigh">
							<img src="sick12.svg" style="float:right;width:100px;height:70px">
		                    <h4>HIGH RISK of COVID-19</h4>
		                    
		                    <h5 style="color: black;">You need to ISOLATE YOURSELF !!</h5>
                    	</section>
                    	
                    	<br>
				
						<section class="precautionshigh">
						
							<h3>We Recommend : </h3>
		                        <br>
		                        <img src="home5.svg" style="float:right;width:100px;height:90px"> 
		                        <h5>1. Immediately quarantine yourself for atleast 14 days.</h5>
		                        <br>
		                        <br>
		
		                        <img src="check.svg" style="float:left;width:100px;height:80px">
		                        <br>
		                        <h5>&nbsp;&nbsp;&nbsp;2. Monitor your symptoms daily !!</h5>
		                        <br>
		                        <br>
		                        <br>
		                        
		
		                        <img src="doctor.svg" style="float:right;width:100px;height:80px">
		                        <h5>3. Consult the Doctor and get yourself tested for COVID-19 !</h5>
		                        <br>
		                        <br>
		                        
		                        
		                        <img src="follow.svg" style="float:left;width:100px;height:80px">
		                        <br>
		                        <h5>4. Strictly follow the instructions given by Doctors.  </h5>
						
						</section>
						
					<% 
					}
					
					
					if((yes>3)&&(yes<7)){
						%>	
							
							<section class="resultmedium">

			                    <img src="medium3.svg" style="float:right;width:100px;height:70px">
			                    <h4>MEDIUM RISK of COVID-19</h4>
			                    
			                    <h5 style="color: black;">You need to take some precautions in order to prevent COVID-19.</h5>
			                    
			                </section>
			
			                <br>
			                
			                <section class="precautionslow">
			                    <h3>We Recommend : </h3>
			                        <br>
			                        <img src="stay.svg" style="float:right;width:100px;height:80px">   
			                        <h5>1. Stay HOME. Maintain Social distance.</h5>
			                        <br>
			                        <br>
			                        <br>
			
			                        <img src="test.svg" style="float:left;width:100px;height:80px">
			                        <h5>&nbsp;&nbsp;&nbsp;2. Keep track of your health !</h5>
			                        <br>
			                        <br>
			                        <br>
			                        <br>
			                        
			
			                        <img src="wash2.svg" style="float:right;width:100px;height:80px">
			                        <h5>3. Wash your hands often with soap and water.</h5>
			                        <br>
			                        <br>
			                        <br>
			
			                        <img src="mask.svg" style="float:left;width:100px;height:80px">
			                        <h5>&nbsp;&nbsp;4. Strictly wear a mask while stepping out.</h5>
			                        <br>
			                        <br>
			                        
	                		</section>
							
							
						<% 	
						}
					
					
					//LOW RISK
					if(yes<4){
					%>
						<section class="resultlow">
		                    <img src="healthy2.svg" style="float:right;width:100px;height:70px">
		                    <h4>LOW RISK of COVID-19</h4>
		                    
		                    <h5 style="color: black;">You are safe. Just take some precautions !!</h5>     
		                </section>
		                
		                <br>
		                
		                <section class="precautionslow">
		                    <h3>We Recommend : </h3>
		                        <br>
		                        <img src="stay.svg" style="float:right;width:100px;height:80px">   
		                        <h5>1. Stay HOME. Maintain Social distance.</h5>
		                        <br>
		                        <br>
		                        <br>
		
		                        <img src="test.svg" style="float:left;width:100px;height:80px">
		                        <h5>&nbsp;&nbsp;&nbsp;2. Keep track of your health !</h5>
		                        <br>
		                        <br>
		                        <br>
		                        <br>
		                        
		
		                        <img src="wash2.svg" style="float:right;width:100px;height:80px">
		                        <h5>3. Wash your hands often with soap and water.</h5>
		                        <br>
		                        <br>
		                        <br>
		
		                        <img src="mask.svg" style="float:left;width:100px;height:80px">
		                        <h5>&nbsp;&nbsp;4. Strictly wear a mask while stepping out.</h5>
		                        <br>
		                        <br>
		                        
                		</section>
					<%	
					}
				}
				%>
				
				
				
		
			</div>
		</main>
	
</body>
</html>