---
document type: cmdlet
external help file: PoshIssues-Help.xml
HelpUri: ''
Locale: en-US
Module Name: PoshIssues
ms.date: 10/27/2026
PlatyPS schema version: 2024-05-01
title: Write-IssueFix
---

# Write-IssueFix

## SYNOPSIS

Writes (saves) an IssueFix object to the file system as a JSON file.

## SYNTAX

### DatabasePath (Default)

```
Write-IssueFix [-Fix] <psobject> [-DatabasePath] <string> [-NoClobber] [-PassThru]
```

### Path

```
Write-IssueFix [-Fix] <psobject> [-Path] <string> [-NoClobber] [-PassThru]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Writes (saves) an IssueFix object to the file system as a JSON file.
 Supports saving to a specific Path or to a Database folder structure.

## EXAMPLES

## PARAMETERS

### -DatabasePath

A string path representing the folder to use as a simple database.
 The IssueFix files will be saved as JSON files using their iD value into a Fixes folder.
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

IssueFix object(s), typically passed via the pipeline, to be written to the file system as a JSON object.

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

### -NoClobber

Switch to prevent an existing file from being overwritten, otherwise by default, the existing file is overwritten.

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

### -PassThru

Use PassThru switch with NoClobber to get all Fixes passed thru, otherwise only Fixes written are passed thru.

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

A string path representing the path and file name to save the JSON content as.
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

