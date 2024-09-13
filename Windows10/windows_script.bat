net accounts /minpwlen:7
net accounts /maxpwage:30
net accounts /minpwage:5
net accounts /uniquepw:10
net accounts /lockoutthreshold:5
net accounts /lockoutwindow:10
net accounts /lockoutduration:5
auditpol /set /subcategory:"Audit account logon events" /success:enable /failure:enable
auditpol /set /subcategory:"Audit account management" /success:enable /failure:enable
PAUSE