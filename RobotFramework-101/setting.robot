
# เป็นส่วนของการตั้งค่าให้กับไฟล์ Robot ของเรา ไม่ว่าจะเป็นการ Import Library, 
# .. Resource หรือแม้กระทั่ง Setup คำสั่งต่างๆ ก่อนเริ่มทดสอบ

*** Setting ***
Library         SeleniumLibrary
Library         BuiltIn
Resource        common_keyword.resource
Test Setup      Open URL and Login
Test Teardown   Close All Browser