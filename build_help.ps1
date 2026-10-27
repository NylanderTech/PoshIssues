param (
    [String] $ModuleName = "PoshIssues", #Name of the module
    [String] $Path = ".\PoshIssues", #Path to the module folder
    [String] $DocsPath = ".\docs", #Path to the platyPS docs
    [String] $HelpVersion = '1.0.0.0',
    [String] $mamlOutputFolder = ".\maml" #Path to the MAML output folder
)
# Build help files for the module using PlatyPS

# https://learn.microsoft.com/en-us/powershell/utility-modules/platyps/overview?view=ps-modules

Import-Module -Name $Path\$ModuleName.psd1 -Force
Import-Module Microsoft.PowerShell.PlatyPS -Force -MinimumVersion 1.0.3

if (Test-Path -Path $DocsPath\$ModuleName) {
    # Update instead of overwriting existing help files
    Measure-PlatyPSMarkdown -Path $DocsPath\$ModuleName\*.md
    Where-Object Filetype -match 'CommandHelp' |
    Update-MarkdownCommandHelp -Path {$_.FilePath}
} else {
    # Initial new build of help files for the module
    $newMarkdownCommandHelpSplat = @{
        CommandInfo = Get-Command -Module $ModuleName
        OutputFolder = $DocsPath
        HelpVersion = $HelpVersion
        WithModulePage = $true
    }
    New-MarkdownCommandHelp @newMarkdownCommandHelpSplat
}

# Convert the markdown help files to MAML format for use with Update-Help
Measure-PlatyPSMarkdown -Path $DocsPath\$ModuleName\*.md |
    Where-Object Filetype -match 'CommandHelp' |
    Import-MarkdownCommandHelp -Path {$_.FilePath} |
    Export-MamlCommandHelp -OutputFolder $mamlOutputFolder

# Copy maml files to the module folder for use with Update-Help
if (Test-Path -Path $Path\en-US) {
    Remove-Item -Path $Path\en-US\* -Force
} else {
    New-Item -Path $Path\en-US -ItemType Directory
}
Copy-Item -Path $mamlOutputFolder\$ModuleName\*.xml -Destination $Path\en-US\ -Force
