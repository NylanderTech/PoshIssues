---
document type: cmdlet
external help file: PoshIssues-Help.xml
HelpUri: ''
Locale: en-US
Module Name: PoshIssues
ms.date: 10/27/2026
PlatyPS schema version: 2024-05-01
title: Archive-IssueFix
---

# Archive-IssueFix

## SYNOPSIS

Archives (moves) an IssueFix object in the file system.

## SYNTAX

### DatabasePath (Default)

```
Archive-IssueFix [-Fix] <psobject> [-DatabasePath] <string> [-Force] [-WhatIf] [-Confirm]
```

### Path

```
Archive-IssueFix [-Fix] <psobject> [-Path] <string> [-ArchivePath] <string> [-Force] [-WhatIf]
 [-Confirm]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Archives (moves) an IssueFix object in the file system.
 File must have previousely been written to file system.
 Can use the path information from the fix if present and passed through pipeline.
 Just performas a move-item.

## EXAMPLES

## PARAMETERS

### -ArchivePath

{{ Fill ArchivePath Description }}

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Path
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Confirm

Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- cf
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DatabasePath

A string path representing the folder to use as a simple database.
 The IssueFix files will be moved to an Archive folder under the Fixes folder and the filename will be appended with the current datatime.
 Folders will be created as needed.
 If the IssueFix has already been saved once, the cmdlet can get the value from the pipeline object.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: DatabasePath
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Fix

IssueFix object(s), typically passed via the pipeline, to be moved to archive location.

```yaml
Type: System.Management.Automation.PSObject
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Force

Switch to force overwritting any existing file.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Path

A string path representing the path and file name to current JSON file.
 If the IssueFix has already been saved once, the cmdlet can get the value from the pipeline object.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Path
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WhatIf

Runs the command in a mode that only reports what would happen without performing the actions.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- wi
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### IssueFix

{{ Fill in the Description }}

### System.Management.Automation.PSObject

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## OUTPUTS

### IssueFix The fix object(s) passed through the cmdlet

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}

