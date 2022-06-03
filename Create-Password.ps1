#this file is for setting the password in AD
Set-ADAccountPassword -Identity examiners -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "Botj1234%" -Force) -whatif