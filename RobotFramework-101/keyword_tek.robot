*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${url_register_from_demo}        https://web-demo.qahive.com/form-demo
${browser}        Chrome

*** Keywords ***
สามารถเปิดเว็บไซด์ web-demo qahive ได้
    Open Browser    ${url_register_from_demo}    ${browser}
    ...    options=add_experimental_option("detach", True)
    # Maximize Browser Window

สามารถกรอก Username ได้
    Input Text    username    thitinan147
    

สามารถกรอก Firstname ได้
    Input Text    firstname    thitinan
    

สามารถกรอก Lastname ได้
    Input Text    //input[@class='form-input lastname']    phikunsri
    

สามารถ click group button Gender โดยเลือก Male ได้
    Select Radio Button    gender    Male
    

สามารถ click droupdown Select County โดยเลือก เลือกประเทศไทยได้
    Scroll Element Into View    xpath=//*[@id="root"]/main/div/div/form/div[6]/button
    Select From List By Value        xpath=//*[@id="root"]/main/div/div/form/div[5]/select      TH
    

สามารถ click button checkbox Accept agreement ได้
    Select Checkbox    //input[@type='checkbox']
    

สามารถกด button submit ได้
    Click Button    //button[contains(@class,'btn btn-block')]
    