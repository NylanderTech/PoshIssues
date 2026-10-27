---
document type: cmdlet
external help file: PoshIssues-Help.xml
HelpUri: ''
Locale: en-US
Module Name: PoshIssues
ms.date: 10/27/2026
PlatyPS schema version: 2024-05-01
title: Invoke-IssueFix
---

# Invoke-IssueFix

## SYNOPSIS

Takes each fix object passed and invoked the scriptblock adding the results to the object.

## SYNTAX

### __AllParameterSets

```
Invoke-IssueFix [-Fix] <psobject> [-Force] [-DefaultParameterValues <hashtable>] [-WhatIf]
 [-Confirm]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

For each issue fix object passed, if the object status is
Ready, Scheduled AND ScheduledAfter is in the past, or Force is set
invokes the scriptblock.
 Add the results to the object and sets status
to either Complete or Error.
 The scriptblock is invoked in a child scope.

## EXAMPLES

### EXAMPLE 1

Read-IssueFix | Invoke-IssueFix

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

### -DefaultParameterValues

Due to the child scope, DefaultParameterValues are not inherited.
 If needed,
pass existing or new DefaultParameterValues into the child scope using this parameter.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
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

### -Fix

The issue fix object to invoke, typically passed via pipeline.

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

Invokes all passed fix objects no matter of status.

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

## OUTPUTS

### IssueFix The fix object(s) passed through the cmdlet

{{ Fill in the Description }}

## NOTES

The scriptblock in invoked using the InvokeWithContext method.
 DefaultParameterValues, if
provided is passed into the context.


## RELATED LINKS

{{ Fill in the related links here }}

