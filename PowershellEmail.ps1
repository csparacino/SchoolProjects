$MyEmail = "<Your email here>"
$SMTP = "<SMTP Server of email provider here>"
$To = "<Receiving email here.>"
$Subject = "Sending Emails through Powershell"
$Body = "Hey man, I ddn't get your email so I'm trying to send it to my own and your Live one. Let me know if you get this"
$pass = ConvertTo-SecureString -String "<Your Passoword Here>" -AsPlainText -Force

$Creds = New-Object System.Management.Automation.PSCredential ($MyEmail, $pass)
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