# RobotFramework101
We will learn installation including the basics and usage. So that the knowledge status of 0% is no longer zero.

* รันคำสั่ง install โดยให้อ่านจากไฟล์ requirements.txt ก็จะเป็นการติดตั้ง Library ทั้งหมดที่เราต้องการอัตโนมัติ
 ``` pip install -r requirements.txt ```

Normal Standard Libraries
Libraries ที่ใช้เป็นมาตรฐานใน Robot Framework ให้ได้นำไปศึกษา

- BuiltIn เป็น Library มาตรฐานที่มี Keyword ให้ใช้สำหรับตรวจสอบและเปรียบเทียบค่าต่างๆ
- Collections เป็น Library มาตรฐานที่มี Keyword ให้ใช้สำหรับตรวจสอบและเปรียบเทียบค่าในลักษณะพจนานุกรมหรือ Dictionary ซึ่งบางทีเราอาจจะต้องรับส่งข้อมูลในรูปแบบของ JSON จึงต้องใช้ Dictionary เข้ามาช่วย
- DateTime เป็น Library มาตรฐานที่มี Keyword ให้ใช้สำหรับรองรับ แปลงค่า และคำนวนวันที่และเวลา
- Dialogs เป็น Library มาตรฐานที่มี Keyword ให้ใช้สำหรับรับข้อมูลจากผู้ใช้กรณีที่มีกล่องโต้ตอบผู้ใช้
- OperatingSystem เป็น Library มาตรฐานที่มี Keyword ให้ใช้สำหรับทำงานต่างๆ ที่เกี่ยวข้องกับระบบปฏิบัติการที่เราใช้ทดสอบอยู่ เช่น สั่งลบ Directory สร้างไฟล์ ตรวจสอบไฟล์ เป็นต้น
- Process เป็น Library มาตรฐานที่มี Keyword ให้ใช้สำหรับการทำงานที่เกี่ยวกับ Process ทั้งหมด
- Screenshot ตามชื่อเลยครับ เป็น Library มาตรฐานที่มี Keyword ให้ใช้สำหรับเก็บภาพหน้าจอ (ต้องใช้ทดสอบกับจอจริงนะ)
- String เป็น Library มาตรฐานที่มี Keyword ให้ใช้สำหรับจัดการข้อมูลประเภท String
- Telnet เป็น Library มาตรฐานที่มี Keyword ให้ใช้สำหรับเชื่อมต่อกับเซิร์ฟเวอร์ Telnet และรันคำสั่งบนการเชื่อมต่อที่เปิดอยู่
- XML เป็น Library มาตรฐานที่มี Keyword ให้ใช้สำหรับตรวจสอบเนื้อหาของไฟล์ XML
ทั้งหมดนี้เป็น Library เบื้องต้นที่เราสามารถ Import มาใช้หลังจากที่เราติดตั้ง Robot Framework ส่วน Library อื่นๆ นอกเหนือจากนี้จะต้องมีการ Install เพิ่มเติมก่อนใช้
- https://googlechromelabs.github.io/chrome-for-testing/ 