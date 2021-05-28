*** Settings ***
Library  SeleniumLibrary
Variables   ../pageobjects/Locators.py

*** Keywords ***

Open my Browser
    [Arguments] ${siteUrl}  ${browser}
    open browser    ${siteUrl}  ${browser}
    Maximize Browser Window
Enter Username
    [arguments]  ${username}
    Input Text ${txt_LoginUsername} ${username}

Enter Password
    [arguments]  ${password}
    Input Text ${txt_LoginPassword} ${password}

Click SignIn
    click button ${btn_SignIn}

Verify the title of the Login Page
    title should be Login Successfully