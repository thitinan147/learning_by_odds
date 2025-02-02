*** Settings ***
Resource         keyword_tek.robot
*** Test Cases ***
register Form Demo ได้
    สามารถเปิดเว็บไซด์ web-demo qahive ได้
    สามารถกรอก Username ได้
    สามารถกรอก Firstname ได้
    สามารถกรอก Lastname ได้
    สามารถ click group button Gender โดยเลือก Male ได้
    สามารถ click droupdown Select County โดยเลือก เลือกประเทศไทยได้
    สามารถ click button checkbox Accept agreement ได้
    สามารถกด button submit ได้

