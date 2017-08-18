param(
    [string] $CommitAndPush,
    [switch] $Update
)

Push-Location src/toolslib

if (![string]::IsNullOrEmpty($CommitAndPush)) {
    git commit --all -m $CommitAndPush
    git push origin HEAD:master
    
    Pop-Location

    git add src/toolslib
    git commit -m "Update toolslib submodule"
}
elseif ($Update -eq $true) {
    Pop-Location
    git submodule update --recursive --remote
}