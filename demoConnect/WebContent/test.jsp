<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>test</title>
    <link rel="stylesheet" href="trial.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>


	<%
		
		String mobile =(String) request.getAttribute("mobile");
		
	%>

	

    <div class="container-fluid" style="margin-top:15px">
        
        <header class="head" >
       		<div class="logohead">      			
       			<h4 style="color: white"><img src="logo.png" style="max-width:110px;" />COVID-19 RISK SCANNING SYSTEM </h4>
       		</div>
        </header>
        <div id="wrapper">

            <!--- <h1>Give The Response Below!</h1>-->
            <!-- <p>Take this questionnaire to find out!</p>-->
			<br>

            <form action="servlet2" id="quiz" style="padding:20px">

				<input type="hidden" name="mobile" value="${mobile}">
                <!-- Question 1 -->
                <div class="ques">
                    <h4>Is Your Current Body Temperature More Than 100 Degrees?</h4><br>
                    <!-- Here are the choices for the first question. Each input tag must have the same name. For this question, the name is q1. -->
                    <!-- The value is which answer the choice corresponds to. -->
                    
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="yes1" name="q1" value="yes" required>
					  <label class="custom-control-label" for="yes1" style="font-family: Roboto;font-size: 20px">Yes</label>
					</div>
					
					<br />
					
					<div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="no1" name="q1" value="no" required>
					  <label class="custom-control-label" for="no1" style="font-family: Roboto;font-size: 20px">No</label>
					</div>
                    <br />

                </div>
                <br />
                <br />

                <!-- Question 2 -->
                <div class="ques">
                    <h4>Is Your Age More Than 45?</h4><br>
                    <!-- Here are the choices for the second question. Notice how each input tag has the same name (q2), but a different name than the previous question. -->
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="yes2" name="q2" value="yes" required>
					  <label class="custom-control-label" for="yes2" style="font-family: Roboto;font-size: 20px">Yes</label>
					</div>
                    <br />
                    
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="no2" name="q2" value="no" required>
					  <label class="custom-control-label" for="no2" style="font-family: Roboto;font-size: 20px">No</label>
					</div><br />

                </div>
                <br />
                <br />

                <!-- Question 3 -->
                <div class="ques">

                    <h4>Do You Have Any kind of  the Health Condition like (Diabetes,Heart disease,Lung Disease,High Blood Pressure,)?</h4>
                    <!-- Choices for the third question -->
                    <br>
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="yes3" name="q3" value="yes" required>
					  <label class="custom-control-label" for="yes3" style="font-family: Roboto;font-size: 20px">Yes</label>
					</div>
					
                    <br />
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="no3" name="q3" value="no" required>
					  <label class="custom-control-label" for="no3" style="font-family: Roboto;font-size: 20px">No</label>
					</div><br />

                </div>
                <br />
                <br />
                <!-- Question 4 -->

                <div class="ques">
                    <h4> Are You Experiencing Sore Throat? </h4><br>
                    <!-- Choices for the fourth question -->
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="yes4" name="q4" value="yes" required>
					  <label class="custom-control-label" for="yes4" style="font-family: Roboto;font-size: 20px">Yes</label>
					</div>
                    <br />
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="no4" name="q4" value="no" required>
					  <label class="custom-control-label" for="no4" style="font-family: Roboto;font-size: 20px">No</label>
					</div><br />

                </div>
                <br />
                <br />
                <!-- question 5-->
                <div class="ques">
                    <h4>Are You Experiencing Cough / DryCough?</h4><br>
                    <!-- Choices for the fourth question -->
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="yes5" name="q5" value="yes" required>
					  <label class="custom-control-label" for="yes5" style="font-family: Roboto;font-size: 20px">Yes</label>
					</div>
                    <br />
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="no5" name="q5" value="no" required>
					  <label class="custom-control-label" for="no5" style="font-family: Roboto;font-size: 20px">No</label>
					</div><br />

                </div>
                <br />
                <br />
                <!--Question 6-->
                <div class="ques">
                    <h4>Are You Experiencing Difficulty in Breathing?</h4><br>
                    <!-- Choices for the fourth question -->
                    
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="yes6" name="q6" value="yes" required>
					  <label class="custom-control-label" for="yes6" style="font-family: Roboto;font-size: 20px">Yes</label>
					</div>
					<br />
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="no6" name="q6" value="no" required>
					  <label class="custom-control-label" for="no6" style="font-family: Roboto;font-size: 20px">No</label>
					</div><br />

                </div>
                <br />
                <br />
                <!--Question 7-->
                <div class="ques">
                    <h4>Are You Feeling Tired/Weak?</h4><br>
                    <!-- Choices for the fourth question -->
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="yes7" name="q7" value="yes" required>
					  <label class="custom-control-label" for="yes7" style="font-family: Roboto;font-size: 20px">Yes</label>
					</div>
                    <br />
					<div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="no7" name="q7" value="no" required>
					  <label class="custom-control-label" for="no7" style="font-family: Roboto;font-size: 20px">No</label>
					</div><br />

                </div>
                <br />
                <br />
                <!--Question 8-->
                <div class="ques">
                    <h4> Do You Have Any Travel History In Past 14 days? </h4><br>
                    <!-- Choices for the fourth question -->
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="yes8" name="q8" value="yes" required>
					  <label class="custom-control-label" for="yes8" style="font-family: Roboto;font-size: 20px">Yes</label>
					</div>
                    <br />
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="no8" name="q8" value="no" required>
					  <label class="custom-control-label" for="no8" style="font-family: Roboto;font-size: 20px">No</label>
					</div><br />

                </div>
                <br />
                <br />

                <!--question 9-->

                <div class="ques">
                    <h4> Have you came in close contact with a confirmed COVID-19 patient in last 14 days ? </h4>
                    <!-- Choices for the fourth question -->
                    <br>
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="yes9" name="q9" value="yes" required>
					  <label class="custom-control-label" for="q9" style="font-family: Roboto;font-size: 20px">Yes</label>
					</div>
                    <br />
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="no9" name="q9" value="no" required>
					  <label class="custom-control-label" for="no9" style="font-family: Roboto;font-size: 20px">No</label>
					</div><br />

                </div>

                <br />
                <br />

                <!--question 10-->

                <div class="ques">
                    <h4> Is Your Symptoms gets worst In Last 48 Hr.?</h4><br>
                    <!-- Choices for the fourth question -->
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="yes10" name="q10" value="yes" required>
					  <label class="custom-control-label" for="yes10" style="font-family: Roboto;font-size: 20px">Yes</label>
					</div>
                    <br />
                    <div class="custom-control custom-radio">
					  <input type="radio" class="custom-control-input" id="no10" name="q10" value="no" required>
					  <label class="custom-control-label" for="no10" style="font-family: Roboto;font-size: 20px">No</label>
					</div><br />

                </div>
                <br />
                <br />
				<div class="buttonstyle">
	                <button type="submit" id="submit" ><span>Submit</span></button>
	                <button type="reset" id="reset">Reset</button>
                </div>
            </form>
            <br />
            <br />

        </div>



    </div>
    <footer style="background-color:#08303f">
        <br />
        <br />
        <img src="one.png" id="one-img" />
        <br />
        <br />
        <p style="color:white;font-family:'Adobe Arabic';font-size:20px;text-align:center">&copy;All Rights Reserved 2020 MBtesting.com<p>

    </footer>
</body>
</html>