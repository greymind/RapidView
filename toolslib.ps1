param(
    [string] $CommitMessage,
    [switch] $OnlyPushLocation
)

Push-Location src/toolslib

if ($OnlyPushLocation -eq $null -or $OnlyPushLocation -eq $false) {
    git commit --all -m $CommitMessage
}