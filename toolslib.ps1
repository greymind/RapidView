param(
    [string] $CommitMessage,
    [switch] $Update
)

Push-Location src/toolslib

if (![string]::IsNullOrEmpty($CommitMessage)) {
    git commit --all -m $CommitMessage
}
elseif ($Update -eq $true) {
    Pop-Location
    git submodule update --recursive --remote
}