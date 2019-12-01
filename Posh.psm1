gci *.ps1 -path "$PSScriptRoot\Export", "$PSScriptRoot\Private" -Recurse | %{

    . $_.FullName
}

gci *.ps1 -path "$PSScriptRoot\Export" -Recurse | %{

    Export-ModuleMember $_.BaseName
}
