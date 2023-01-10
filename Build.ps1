[CmdletBinding()]
param(
    [AllowEmptyString]
    [Parameter(Mandatory)]
    [string]$Version
)

Remove-Item .\output -Force -Recurse -ErrorAction Ignore
New-Item .\output -ItemType Directory | Out-Null

if ($Version -ne '') {
    Update-ModuleManifest UpliftTest.psd1 -ModuleVersion $Version
}

Copy-Item UpliftTest.psd1 output
Copy-Item UpliftTest.psm1 output
