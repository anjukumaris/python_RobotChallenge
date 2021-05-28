*** Settings ***
Library  SeleniumLibrary
Resource  ../resource/LoginKeywords.robot

*** Variables ***
 ${browser}  chrome
 ${siteUrl}  http://demo.guru99.com/test/newtours/
 ${username}     tutorial
 ${password}     tutorial

*** Test Cases ***

LoginTest
    Open my Browser ${siteUrl}  ${browser}
    Enter Username  ${username}
    Enter Password  ${password}
    Click SignIn
    Verify the title of the Login Page











