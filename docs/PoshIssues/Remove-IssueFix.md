---
document type: cmdlet
external help file: PoshIssues-Help.xml
HelpUri: ''
Locale: en-US
Module Name: PoshIssues
ms.date: 10/27/2026
PlatyPS schema version: 2024-05-01
title: Remove-IssueFix
---

# Remove-IssueFix

## SYNOPSIS

Removes (deletes) an IssueFix object from the file system.

## SYNTAX

### DatabasePath (Default)

```
Remove-IssueFix [-Fix] <psobject> [-DatabasePath] <string> [-WhatIf] [-Confirm]
```

### Path

```
Remove-IssueFix [-Fix] <psobject> [-Path] <string> [-WhatIf] [-Confirm]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Removes (deletes) an IssueFix object from the file system.
 Can use the path information from the fix if present and passed through pipeline.
 Just performs a remove-item.

## EXAMPLES

## PARAMETERS

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
 The IssueFix files will be remvoed using their iD value from a Fixes folder.
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

IssueFix object(s), typically passed via the pipeline, to be removed from the file system.

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

### -Path

A string path representing the path and file name to remove.
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

