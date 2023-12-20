# BMI-Calculator
Purpose
In the second part of the BMI Calculator Project, learners will develop either an iOS app (preferred) or an Android app. Software architecture and web data integration are fundamentally important in mobile app design and implementation. This project provides learners with the opportunity to put their knowledge of MVC architecture and mobile web integration into practice. Learners will develop a simple BMI calculator application using MVC architecture, then use Web APIs to perform the same BMI calculation.
Objectives
Learners will be able to:
● Apply the MVC architecture to design a mobile app that satisfies given requirements.
● Implement an MVC architecture-based mobile app.
● Use Web API calls.
● Process JSON data in a mobile app.
Technology Requirements
● For iOS app: XCode 10, programming language Swift (no Objective-C) (strongly preferred)
● For Android app: Android SDK using Java
● A way to record your screen
Project Overview
Design and implement a mobile app that calculates BMI and displays the results to the user.
Project Description
In this second part of your BMI Calculator Project, you will create an application that, when given the height and weight of a person, calculates their BMI. You will use a web API call to calculate BMI and show the API call results to the user.
Directions
Develop an application that calls the calculateBMI API, which takes height and weight as parameters and returns the BMI JSON data that contains BMI, Risk Factor, and Array of web links with BMI information. Include screenshots of your app's outputs with your submission. All of this should be submitted as a single ZIP file.
Once you have created your app, create a video demonstration of your app's output. Your video must start from you opening your ZIP file, followed by compilation and run. You must demonstrate every possible test case scenario that you tested as well. Include this video in a separate ZIP file submission as either a YouTube link or an MP4.
API Call
You will be calling the calculateBMI API, which takes height and weight as parameters and returns the BMI JSON data that contains BMI, Risk Factor, and Array of web links with BMI information.
Your app should read the height and weight and call the API to calculate the BMI. See the example API call for a height of 60 inches and weight of 156 lbs in Figure 1.
Figure 1: Example API call for height = 60 in. and weight = 156 lbs.
http://webstrar99.fulton.asu.edu/page3/Service1.svc/calculateBMI?height=60&weight=156
The results from the API call is a JSON document structure:
{
"bmi":30.463333333333335,
"more":["https://www.cdc.gov/healthyweight/assessing/bmi/index.html","https:
//www.nhlbi.nih.gov/health/educational/lose_wt/index.htm","https://www.ucsfh
ealth.org/education/body_mass_index_tool/"],
"risk":"You are obese :("
}
Figure 1: Example API call for height = 60 in. and weight = 156 lbs.
 User Interface (UI) Design
The main UI of your app must have all required components, and all components should have proper alignment and placement on the screen.
Required Components:
● Field to enter height (in inches)
● Field to enter weight (in pounds)
● BMI value display
● Risk message display
● Call BMI API button
● Educate Me button
Refer to Figure 2: User Interface (UI) Design Guidelines1 to see an example of what the main UI of your app should look like. (Please note that weight should be given in pounds, not "inches.")
Figure 2: User Interface (UI) Design Guidelines
 Figure 2: User Interface (UI) Design Guidelines
 1 Figure 2 is modified from Xcode 10 and originally developed using Swift 4.2.

App Requirements
Your app must process the JSON results and display BMI information to the user. Then, based on the BMI value, it must display one (1) of these risk messages to the user:
You are underweight if BMI is < 18: Blue Color
You are normal if BMI is ≥ 18 and < 25: Green Color
You are pre-obese if BMI is between 25 and 30: Purple Color You are obese if BMI is greater than 30: Red Color
Additionally, when the user selects the button "Educate Me," your app should load a web page that shows additional information about BMI by using one of the web links from the JSON results (refer to Figure 1: Example API call for height = 60 in. and weight = 156 lbs.).
