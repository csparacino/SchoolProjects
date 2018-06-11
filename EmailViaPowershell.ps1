$MyEmail = "csparacino@live.com"
$SMTP = "smtp.live.com"
$To = "chase.wilson@microsoft.com; csparacino28@gmail.com"
$Subject = "Sending Emails through Powershell"
$Body = "Hey man, I entered a script to push an email out through powershell, so I figured I'd send one to you since you're my mentor and all. Haha."
$Creds = (Get-Credential -Credential "MyEmail")

Start-Sleep 2

Send-MailMessage -To $To -From $MyEmail -Subject $Subject -Body $Body -SmtpServer $SMTP -Credential $Creds -UseSsl -Port 587 -DeliveryNotificationOption never

<# 

$PSEmailServer variable can be used to pre-configure the

SMTP server in your Powershell Profile. Then you don't need

to specify -smtpserver paramter. Send-MailMessage will use the

SMTP sever address assigned to $PSEmailServer





Delivery Notification Options:

-- None: No notification.        

-- OnSuccess: Notify if the delivery is successful.      

-- OnFailure: Notify if the delivery is unsuccessful.     

-- Delay: Notify if the delivery is delayed.       

-- Never: Never notify.

#>