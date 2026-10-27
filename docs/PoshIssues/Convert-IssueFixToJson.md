---
document type: cmdlet
external help file: PoshIssues-Help.xml
HelpUri: ''
Locale: en-US
Module Name: PoshIssues
ms.date: 10/27/2026
PlatyPS schema version: 2024-05-01
title: Convert-IssueFixToJson
---

# Convert-IssueFixToJson

## SYNOPSIS

Converts an IssueFix object to a JSON string.

## SYNTAX

### __AllParameterSets

```
Convert-IssueFixToJson [-Fix] <psobject>
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Converts an IssueFix object to a JSON string.

## EXAMPLES

## PARAMETERS

### -Fix

IssueFix object(s), typically passed via the pipeline, to be converted to a JSON string.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Management.Automation.PSObject

{{ Fill in the Description }}

## OUTPUTS

### String The JSON string representing the IssueFix object

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}

