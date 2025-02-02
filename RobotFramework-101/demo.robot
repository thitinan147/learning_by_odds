*** Settings ***
Library    SeleniumLibrary






*** Variable ***
${url_google}        https://www.google.com






*** Keywords ***
สามารถเปิดเว็บไซต์ google ได้
    Open Browser  ${url_google}      gc
    ...    options=add_experimental_option("detach", True)

สามารถกรอกคำว่า odds ได้
    Input Text    APjFqb    odds

สามารถ enter คำว่า odds ได้
    Press Keys    APjFqb    ENTER

สามารถรู้ว่ามีคำว่า odds อยู่ในหน้าจอ
    Page Should Contain   odds
    



*** Test Cases ***
เปิดเว็บไซต์ google
    สามารถเปิดเว็บไซต์ google ได้

กรอกคำว่า odds ได้
    สามารถกรอกคำว่า odds ได้

enter คำว่า odds
    สามารถ enter คำว่า odds ได้
มีคำว่า odds
    สามารถรู้ว่ามีคำว่า odds อยู่ในหน้าจอ



      

    