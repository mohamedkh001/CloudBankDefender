 Tasks for Cloud Security Engineer:

**Task (account and IAM users)**
1.enable Multi-Factor Authentication (MFA) on Root account
2.تعطيل  الوصول by Access Key
3.Monitoring root account 
4.استخدم مدير كلمات مشفر    (  1Password).
5.إنشاء لتنظيم الصلاحيات  IAM Groups 
6.إنشاء IAM Policies مخصصة
7.إنشاء واستخدامها للخدمات  IAM Roles ( least practices)
8. تفعيل Access Analyzer  
9.Create credental report (report for users ad keyes)



**Tasks( for s3 bucket )**
10.Block All Public Access and Use Conditions to Limit Access
11.Enable Encryption
12.SSE-KMS: تشفير بمفاتيح تُديرها بنفسك عبر AWS KMS.
13.Enable Logging


**Task for (Network security)**
14. VPC – Virtual Private Cloud
15. Subnets (private subnet and public subnet )– التقسيم الداخلي
16. Security Groups – حارس البيت
17. NACLs – بوابة الحي
18.  Internet Gateway / NAT Gateway / VPC Endpoints
19. Monitoring & Logs – الكاميرات والمراقبة



**Task for (Logging and Monitoring)**
20.Enable AWS CloudTrail  (data events )
21.Enable AWS Config  (resources such iam role and security groups)
22.Set Up Amazon CloudWatch Alarms
23.Use GuardDuty for Threat Detection
24.Centralize Logs with CloudWatch Logs (all eves record it I logs In spichal bucket)


**Tasks for CI/CD**
25.تأمين مصدر الكود (Source Code Security)
26.استخدم KMS لتشفير Logs و Artifacts.
27.IAM Roles بحد أدنى من الصلاحيات (Least Privilege)
28. تحليل الكود واختباره قبل النشر (Static & Security Checks)
29.Hide   secrets باستخدام Secrets Manager أو SSM Parameter Store
30. إدارة الوصول والمراجعة (Approvals & Monitoring)
31.شفر كل أسرار البيئة (Secrets) بـ Secrets Manager.


**Tasks for DataBase**
32.استخدم قواعد بيانات مدارة (مثل RDS أو Aurora)
33.التشفير (Encryption): At-rest: باستخدام AWS KMS (مفتاح التشفير) and In-transit: تمكين SSL للاتصالات بين التطبيقات والداتا بيز
34. حط الـ RDS في private subnet عشان ما يكونش فيه وصول مباشر من الإنترنت.
35. Security Groups للسماح فقط بالاتصال من السيرفرات المسموح بيها (مثلاً EC2).
36.التحكم في الوصول (IAM & DB Users):
37.دمج RDS مع CloudWatch Logs و CloudTrail لتتبع الأحداث.
38.فعل Automatic Backups.
39.استخدم RDS Auto Minor Version Upgrade عشان النظام يحدث نفسه آلياً.


**Task Set Up an Incident Response Plan on AWS**
( اعداد خطه استجابه للحواد ث )
40.إنشاء Runbook واضح
41.إعداد تنبيهات للحوادث الأمنية (Security Alerts)
42.استخدام AWS Config و AWS Security Hub
43.تفعيل AWS GuardDuty
44.حفظ الـ Backups خارج الحساب
