---
document type: cmdlet
external help file: PoshIssues-Help.xml
HelpUri: ''
Locale: en-US
Module Name: PoshIssues
ms.date: 10/27/2026
PlatyPS schema version: 2024-05-01
title: New-IssueFix
---

# New-IssueFix

## SYNOPSIS

Creates a new IssueFix object with the passed parameters

## SYNTAX

### Block (Default)

```
New-IssueFix [-FixCommand] <scriptblock> [[-FixDescription] <string>] [[-CheckName] <string>]
 [[-Status] <IssueFixStatus>] [[-NotificationCount] <long>] [[-SequenceNumber] <long>]
 [[-ScheduledAfter] <datetime>] [[-Priority] <IssueFixPriority>] [-useCommandAsDescription]
```

### String

```
New-IssueFix [-FixCommandString] <string> [[-FixDescription] <string>] [[-CheckName] <string>]
 [[-Status] <IssueFixStatus>] [[-NotificationCount] <long>] [[-SequenceNumber] <long>]
 [[-ScheduledAfter] <datetime>] [[-Priority] <IssueFixPriority>] [-useCommandAsDescription]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Creates a new IssueFix object with the passed parameters, using defaults as needed.

## EXAMPLES

## PARAMETERS

### -CheckName

Name of the issue check that generated this fix.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -FixCommand

A ScriptBlock to be added to that fix that will be executed to fix the issue.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Block
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -FixCommandString

A String that can be converted to a ScriptBlock to be added to that fix that will be executed to fix the issue.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: String
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -FixDescription

A user friendly description of what the fix does, prefereble specific to this instance.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -NotificationCount

Set the number of times notices is sent about this fix.
 Usefull for scheduled notifications of pending fixes.
 Each time a notificaton is sent for a fix the notificationCount is decremented by one.
By default, only fixes with a notification count greater then 0 are sent.
This allows for control over how often a fix is notified about.
 Default is 10000.

```yaml
Type: System.Int64
DefaultValue: 10000
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Priority

Priority High, Meduim or Low.
 Defaults to Low.

```yaml
Type: IssueFixPriority
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ScheduledAfter

DateTime (defaults to current) in which the fix is able to be invoked when status is also Scheduled

```yaml
Type: System.DateTime
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SequenceNumber

Fix sort order.
 Default is 1.

```yaml
Type: System.Int64
DefaultValue: 1
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Status

The status of this fix.
 See IssueFixStatus enum.
 Default is Ready.

```yaml
Type: IssueFixStatus
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -useCommandAsDescription

Switch to ignore the passed description, if any, and instead use the command as a string value for description.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
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

### ScriptBlock representing the script that will be invoked by the fix
String representing the script that will be invoked by the fix

{{ Fill in the Description }}

### System.Management.Automation.ScriptBlock

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

### IssueFixStatus

{{ Fill in the Description }}

### System.Int64

{{ Fill in the Description }}

### System.DateTime

{{ Fill in the Description }}

### IssueFixPriority

{{ Fill in the Description }}

## OUTPUTS

### IssueFix The fix object(s) created by the cmdlet

{{ Fill in the Description }}

### PoshIssues.Fix

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}

