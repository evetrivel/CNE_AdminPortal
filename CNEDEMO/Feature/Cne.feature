﻿@Regression
Feature: Cne

Scenario: 01 Successful Login into CNE admin Portal with Valid Credentials 
Given CNE admin portal page loaded succesfully
When enter username "eniyan_vetrivel@condenast.com" and select Next button
Then enter password "Welcome@2022" and select signIn Button to login page
And select SendPush button
And verify page is navigated into Admin portal homepage  

#Scenario: 02 homepage check brands (scenario)
#given cne admin portal page loaded succesfully
#when verify the home page title "cne admin (staging)"
#then verify the cne logo in home page 
#
#Scenario outline: 03 select brand in admin portal (scenario)
#Given CNE admin portal page loaded succesfully
#When Select select brand drop down button
#Then select "<select brands>" in the list and verify brand logo
#And verify selected brand logo in admin portal page 
#Examples:
#|select brands|
#|acme test brand|
#|allure         |
#|architectural digest|
#|ars technica|
#|bon appétit|	
#|condé nast traveler|
#|epicurious|
#|gq|
#|glamour|
#|golf digest|
#|iris|
#|pitchfork|
#|self|
#|teen vogue|
#|the new yorker|
#|the scene|
#|vanity fair|
#|vogue|
#|wired|
#|them.|
#|cni channels ▸|
#
#Scenario: 04 verify go back button
#Given CNE admin portal page loaded succesfully
#When Select select brand drop down button
#Then select "cni channels ▸" in the list	
#And verify "◂ go back" button is exists
#Then verify Countries in CNI channels 
#|countries|
#|france|
#|germany|
#|india|
#|italy|
#|japan|
#|mexico|
#|russia|
#|spain|
#|taiwan|
#|united kingdom|
#|united states|

Scenario Outline: 05 Add New Video in admin portal 
Given CNE admin portal page loaded succesfully 
When Select select brand drop down button
Then select "<Select brands>" in the list and verify brand logo
Then verify Add New Video button exist 
And select Add New Video button
And verify navigating into New video page 
And verify Cancel and Save button exsist
And select O&O dropdown
And Enter value in O&O tab
|input_fields|Value|
|O&O Title|test123|
|O&O Categories list|user testing|
|O&O Description|testdata|
|O&O Tags|test|
And Select Slug button
And select schedule tab 
And select youtube and facebook check box
And select youtube tab
And Enter value in youtube tab
| input_fields    | Value                 |
| YouTube Channel | CondéNast TestChannel |
|YouTube Tags|testdata|
|YouTube Category|Comedy|
|YouTube Description|www.usertesting.com|
And select Facebook tab
And Enter value in Facebook tab
|input_fields|Value|
|Facebook Tags|testdata|
|Facebook Description|www.condenast.com|
And Select Save Button
And verify video created succesfully 
Examples:
|Select brands|
|Acme Test Brand|

Scenario Outline: 06 Add New Video in admin portal 
Given CNE admin portal page loaded succesfully 
When Select select brand drop down button
Then select "<Select brands>" in the list and verify brand logo
And select Add New Video button
And select schedule tab 
And select youtube and facebook check box
And Select Save Button
And verify error meaasge "O&O, YouTube, and Facebook"
And Select the cancel button
And verify navigate back to home page
Examples:
|Select brands|
|Acme Test Brand|

Scenario Outline: 07 edit video media category
Given CNE admin portal page loaded succesfully 
When Select select brand drop down button
Then select "<Select brands>" in the list and verify brand logo
And select recent video edit drop down icon 
And select video media category  
And Select O&O UploadposterFrame button
And select draganddrop  button and upload img from local
And select cropimage button 
And select O&O Poster Frame dounload button and verify the download image title in next tab
And select editcrop button
And select cropimage button 
And verify youtube UploadposterFrame button
And verify OOT UploadposterFrame button
And Select O&O Add Source Video button
And select draganddrop  button 
And wait until video get uploaded
And select close button
And verify O&O Animated Thumbnail
And verify O&O poster frame from thumbnails
And select replace video button 
And select replace video button in popup
And select draganddrop  button for replace video
And wait until video get uploaded
And select close button
Examples:
|Select brands|
|Acme Test Brand|

Scenario Outline: 08 edit Externals ID category
Given CNE admin portal page loaded succesfully 
When Select select brand drop down button
Then select "<Select brands>" in the list and verify brand logo
And select recent video edit drop down icon   
And select  Externals ID category  
And Enter value in youtube and FB field
|input_fields|Value|
|Facebook|76345782|
|youtube|657481234|
And Select Save button in EID
And select  O&O Geofencing  category  
And Select value in Blocked In and Available In
|input_fields|Value|
|Blocked In|Pakistan|
|Available In|Albania|
And Select save button in O&O Geofencing
And select  Mid-roll Cue Points  category   
And verify the mid-roll cue points forward button
And verify the mid-roll cue points backward button
And select range ms of mid-roll cue points for forward button
And Select save button in Mid-roll
And verify the mid-roll cue points
#And Select delete button in Mid-roll
And select range ms of mid-roll cue points for backward button
And Select save button in Mid-roll
And verify the mid-roll cue points
Examples:
|Select brands|
|Acme Test Brand|


Scenario Outline: 09 Added video url links and log detials 
Given CNE admin portal page loaded succesfully 
When Select select brand drop down button
Then select "<Select brands>" in the list and verify brand logo
And select recent video title link
And seelct the video log icon
And verify the video log details 
And verify error in video log details 
And select the close button in log   
And verify the edit icon 
And verify the URL link
And Select the generate button
And verify the generate preview link
And verify the delete button in generate link 
And verify the FB link
And verify the youtube link
And select DOWNLOAD ENCODED VIDEO FILES
| input_fields        | Value            |
| sourceLink          | source           |
| highLink            | high             |
| lowLink             | low              |
| mobileLink          | mobile           |
| hlsLink             | hls              |
| O&O PosterFrameLink | O&O Poster Frame |
Examples:
|Select brands|
|Acme Test Brand|


  Scenario: 10 all brands videos in admin portals
Given CNE admin portal page loaded succesfully 
When select All brand videos
Then verify the total count of videos at bottom of the page
And select Rows per page count
And verify page count values
| input_fields | Value |
| 10           | 10    | 
| 25           | 25    |
| 50           | 50    |
| 100          | 100   |
And select the next page page button
And select the previuos page page button
And verify the video count
And enter any valid video id "54d3f85961646d0b19040000" in search box
And select search  button 
And verify the results video
And select clear  button 

  Scenario: 11 Global Localization in admin portals
Given CNE admin portal page loaded succesfully 
When select Global Localization
Then select the copy button
#And Choose destination in "Allure" drop down
#And Select the select button
And select exit popup
And verify More button exist 
And Select the more button 
And select view detials
And select Download
And select DOWNLOAD ENCODED VIDEO FILES in dropdown
| input_fields        | Value            |
| sourceLink          | Source File           |
| highLink            | MP4 (High Quality)             |
| lowLink             | MP4 (Low Quality)              |
| Thumbnail          | Thumbnail           |
| hlsLink             | HLS              |
And select youtube in Global view detials  
And select exit detials popup
And enter any valid video id "54d3f85961646d0b19040000" in Global search box
And verify the results

Scenario Outline: 12 verify Video detials, hidden and delete button in admin portal 
Given CNE admin portal page loaded succesfully 
When Select select brand drop down button
Then select "Acme Test Brand" in the list and verify brand logo
And verify Hidden and delete button is exsist in all videos
And select any video edit drop down button 
And verify "<edit drop down list>" 
And verify navigation video editing page 
Examples:
|edit drop down list| 
|Metadata|
|Video Media|
|External IDs|
|O&O Geofencing|
|Mid-roll Cue Points|
