Remove-Item .\output -Force -Recurse -ErrorAction Ignore
New-Item .\output -ItemType Directory | Out-Null

Copy-Item UpliftTest.psd1 output
Copy-Item UpliftTest.psm1 output
