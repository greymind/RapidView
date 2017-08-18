param(
    [string] $Commit,
    [switch] $Update
)

Push-Location src/toolslib

if (![string]::IsNullOrEmpty($Commit)) {
    git commit --all -m $Commit
}
elseif ($Update -eq $true) {
    Pop-Location
    git submodule update --recursive --remote
    git push origin HEAD:master
}