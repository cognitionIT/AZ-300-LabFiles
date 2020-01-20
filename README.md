#note: This is a clone of the original git repo but customized for my courses.

Contains all the excercises for the AZ-300 course.

Tools needed for the labs and excercises:

#Azure PowerShell Module
Install-Module -Name Az -AllowClobber -Scope CurrentUser

#Azure AD PowerShell Module
Install-Module AzureAD -AllowClobber -Scope CurrentUser

#Azure CLI 
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'

#Azure Storage Explorer

#


