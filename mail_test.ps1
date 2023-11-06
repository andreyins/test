$From = "D5XI9info@gmail.com"
$To = "andrey@gerasimoff.info"
$Subject = "Test message subject from $($env:computername)"
$Body = "Email text"
$Password = "kvwd iqmk yxxj hyog" | ConvertTo-SecureString -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $From, $Password
Send-MailMessage -From $From -To $To -Subject $Subject -Body $Body -SmtpServer "smtp.gmail.com" -port 587 -UseSsl -Credential $Credential