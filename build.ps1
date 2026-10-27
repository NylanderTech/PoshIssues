param (
    [String] $Path = ".\PoshIssues", #Path to the module folder
    [String] $TestsPath = ".\Tests\", #Path to the Pester tests files
    [String] $DocsPath = ".\docs", #Path to the platyPS docs
    [String] $PublishRepo = "PSGallery"
)

Import-Module -Name $Path -Force
. .\Tests\localTestValues.ps1

# Run tests
Invoke-Pester -Script "$TestsPath*"

#Verify tests past and then proceed, if not, stop here
Pause

# Build help files for the module using PlatyPS
.\build_help.ps1 -Path $Path -DocsPath $DocsPath -ModuleName "PoshIssues" -mamlOutputFolder ".\maml"

# TODO: Publish to PSGallery
# Import-Module PowerShellGet
# Publish-Module -Path $Path -Repository $PublishRepo -Verbose

#>