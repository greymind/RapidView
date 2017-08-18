param(
    [string] $Commit,
    [switch] $Update
)

Push-Location src/toolslib

if (![string]::IsNullOrEmpty($Commit)) {
    git commit --all -m $Commit
    git push origin HEAD:master
}
elseif ($Update -eq $true) {
    Pop-Location
    git submodule update --recursive --remote
}