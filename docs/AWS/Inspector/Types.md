## Module AWS.Inspector.Types

#### `options`

``` purescript
options :: Options
```

#### `AccessDeniedErrorCode`

``` purescript
newtype AccessDeniedErrorCode
  = AccessDeniedErrorCode String
```

##### Instances
``` purescript
Newtype AccessDeniedErrorCode _
Generic AccessDeniedErrorCode _
Show AccessDeniedErrorCode
Decode AccessDeniedErrorCode
Encode AccessDeniedErrorCode
```

#### `AccessDeniedException`

``` purescript
newtype AccessDeniedException
  = AccessDeniedException { message :: ErrorMessage, errorCode :: AccessDeniedErrorCode, canRetry :: Bool }
```

<p>You do not have required permissions to access the requested resource.</p>

##### Instances
``` purescript
Newtype AccessDeniedException _
Generic AccessDeniedException _
Show AccessDeniedException
Decode AccessDeniedException
Encode AccessDeniedException
```

#### `newAccessDeniedException`

``` purescript
newAccessDeniedException :: Bool -> AccessDeniedErrorCode -> ErrorMessage -> AccessDeniedException
```

Constructs AccessDeniedException from required parameters

#### `newAccessDeniedException'`

``` purescript
newAccessDeniedException' :: Bool -> AccessDeniedErrorCode -> ErrorMessage -> ({ message :: ErrorMessage, errorCode :: AccessDeniedErrorCode, canRetry :: Bool } -> { message :: ErrorMessage, errorCode :: AccessDeniedErrorCode, canRetry :: Bool }) -> AccessDeniedException
```

Constructs AccessDeniedException's fields from required parameters

#### `AddAttributesToFindingsRequest`

``` purescript
newtype AddAttributesToFindingsRequest
  = AddAttributesToFindingsRequest { findingArns :: AddRemoveAttributesFindingArnList, attributes :: UserAttributeList }
```

##### Instances
``` purescript
Newtype AddAttributesToFindingsRequest _
Generic AddAttributesToFindingsRequest _
Show AddAttributesToFindingsRequest
Decode AddAttributesToFindingsRequest
Encode AddAttributesToFindingsRequest
```

#### `newAddAttributesToFindingsRequest`

``` purescript
newAddAttributesToFindingsRequest :: UserAttributeList -> AddRemoveAttributesFindingArnList -> AddAttributesToFindingsRequest
```

Constructs AddAttributesToFindingsRequest from required parameters

#### `newAddAttributesToFindingsRequest'`

``` purescript
newAddAttributesToFindingsRequest' :: UserAttributeList -> AddRemoveAttributesFindingArnList -> ({ findingArns :: AddRemoveAttributesFindingArnList, attributes :: UserAttributeList } -> { findingArns :: AddRemoveAttributesFindingArnList, attributes :: UserAttributeList }) -> AddAttributesToFindingsRequest
```

Constructs AddAttributesToFindingsRequest's fields from required parameters

#### `AddAttributesToFindingsResponse`

``` purescript
newtype AddAttributesToFindingsResponse
  = AddAttributesToFindingsResponse { failedItems :: FailedItems }
```

##### Instances
``` purescript
Newtype AddAttributesToFindingsResponse _
Generic AddAttributesToFindingsResponse _
Show AddAttributesToFindingsResponse
Decode AddAttributesToFindingsResponse
Encode AddAttributesToFindingsResponse
```

#### `newAddAttributesToFindingsResponse`

``` purescript
newAddAttributesToFindingsResponse :: FailedItems -> AddAttributesToFindingsResponse
```

Constructs AddAttributesToFindingsResponse from required parameters

#### `newAddAttributesToFindingsResponse'`

``` purescript
newAddAttributesToFindingsResponse' :: FailedItems -> ({ failedItems :: FailedItems } -> { failedItems :: FailedItems }) -> AddAttributesToFindingsResponse
```

Constructs AddAttributesToFindingsResponse's fields from required parameters

#### `AddRemoveAttributesFindingArnList`

``` purescript
newtype AddRemoveAttributesFindingArnList
  = AddRemoveAttributesFindingArnList (Array Arn)
```

##### Instances
``` purescript
Newtype AddRemoveAttributesFindingArnList _
Generic AddRemoveAttributesFindingArnList _
Show AddRemoveAttributesFindingArnList
Decode AddRemoveAttributesFindingArnList
Encode AddRemoveAttributesFindingArnList
```

#### `AgentAlreadyRunningAssessment`

``` purescript
newtype AgentAlreadyRunningAssessment
  = AgentAlreadyRunningAssessment { agentId :: AgentId, assessmentRunArn :: Arn }
```

<p>Used in the exception error that is thrown if you start an assessment run for an assessment target that includes an EC2 instance that is already participating in another started assessment run.</p>

##### Instances
``` purescript
Newtype AgentAlreadyRunningAssessment _
Generic AgentAlreadyRunningAssessment _
Show AgentAlreadyRunningAssessment
Decode AgentAlreadyRunningAssessment
Encode AgentAlreadyRunningAssessment
```

#### `newAgentAlreadyRunningAssessment`

``` purescript
newAgentAlreadyRunningAssessment :: AgentId -> Arn -> AgentAlreadyRunningAssessment
```

Constructs AgentAlreadyRunningAssessment from required parameters

#### `newAgentAlreadyRunningAssessment'`

``` purescript
newAgentAlreadyRunningAssessment' :: AgentId -> Arn -> ({ agentId :: AgentId, assessmentRunArn :: Arn } -> { agentId :: AgentId, assessmentRunArn :: Arn }) -> AgentAlreadyRunningAssessment
```

Constructs AgentAlreadyRunningAssessment's fields from required parameters

#### `AgentAlreadyRunningAssessmentList`

``` purescript
newtype AgentAlreadyRunningAssessmentList
  = AgentAlreadyRunningAssessmentList (Array AgentAlreadyRunningAssessment)
```

##### Instances
``` purescript
Newtype AgentAlreadyRunningAssessmentList _
Generic AgentAlreadyRunningAssessmentList _
Show AgentAlreadyRunningAssessmentList
Decode AgentAlreadyRunningAssessmentList
Encode AgentAlreadyRunningAssessmentList
```

#### `AgentFilter`

``` purescript
newtype AgentFilter
  = AgentFilter { agentHealths :: AgentHealthList, agentHealthCodes :: AgentHealthCodeList }
```

<p>Contains information about an Amazon Inspector agent. This data type is used as a request parameter in the <a>ListAssessmentRunAgents</a> action.</p>

##### Instances
``` purescript
Newtype AgentFilter _
Generic AgentFilter _
Show AgentFilter
Decode AgentFilter
Encode AgentFilter
```

#### `newAgentFilter`

``` purescript
newAgentFilter :: AgentHealthCodeList -> AgentHealthList -> AgentFilter
```

Constructs AgentFilter from required parameters

#### `newAgentFilter'`

``` purescript
newAgentFilter' :: AgentHealthCodeList -> AgentHealthList -> ({ agentHealths :: AgentHealthList, agentHealthCodes :: AgentHealthCodeList } -> { agentHealths :: AgentHealthList, agentHealthCodes :: AgentHealthCodeList }) -> AgentFilter
```

Constructs AgentFilter's fields from required parameters

#### `AgentHealth`

``` purescript
newtype AgentHealth
  = AgentHealth String
```

##### Instances
``` purescript
Newtype AgentHealth _
Generic AgentHealth _
Show AgentHealth
Decode AgentHealth
Encode AgentHealth
```

#### `AgentHealthCode`

``` purescript
newtype AgentHealthCode
  = AgentHealthCode String
```

##### Instances
``` purescript
Newtype AgentHealthCode _
Generic AgentHealthCode _
Show AgentHealthCode
Decode AgentHealthCode
Encode AgentHealthCode
```

#### `AgentHealthCodeList`

``` purescript
newtype AgentHealthCodeList
  = AgentHealthCodeList (Array AgentHealthCode)
```

##### Instances
``` purescript
Newtype AgentHealthCodeList _
Generic AgentHealthCodeList _
Show AgentHealthCodeList
Decode AgentHealthCodeList
Encode AgentHealthCodeList
```

#### `AgentHealthList`

``` purescript
newtype AgentHealthList
  = AgentHealthList (Array AgentHealth)
```

##### Instances
``` purescript
Newtype AgentHealthList _
Generic AgentHealthList _
Show AgentHealthList
Decode AgentHealthList
Encode AgentHealthList
```

#### `AgentId`

``` purescript
newtype AgentId
  = AgentId String
```

##### Instances
``` purescript
Newtype AgentId _
Generic AgentId _
Show AgentId
Decode AgentId
Encode AgentId
```

#### `AgentIdList`

``` purescript
newtype AgentIdList
  = AgentIdList (Array AgentId)
```

##### Instances
``` purescript
Newtype AgentIdList _
Generic AgentIdList _
Show AgentIdList
Decode AgentIdList
Encode AgentIdList
```

#### `AgentPreview`

``` purescript
newtype AgentPreview
  = AgentPreview { hostname :: NullOrUndefined (Hostname), agentId :: AgentId, autoScalingGroup :: NullOrUndefined (AutoScalingGroup), agentHealth :: NullOrUndefined (AgentHealth), agentVersion :: NullOrUndefined (AgentVersion), operatingSystem :: NullOrUndefined (OperatingSystem), kernelVersion :: NullOrUndefined (KernelVersion), ipv4Address :: NullOrUndefined (Ipv4Address) }
```

<p>Used as a response element in the <a>PreviewAgents</a> action.</p>

##### Instances
``` purescript
Newtype AgentPreview _
Generic AgentPreview _
Show AgentPreview
Decode AgentPreview
Encode AgentPreview
```

#### `newAgentPreview`

``` purescript
newAgentPreview :: AgentId -> AgentPreview
```

Constructs AgentPreview from required parameters

#### `newAgentPreview'`

``` purescript
newAgentPreview' :: AgentId -> ({ hostname :: NullOrUndefined (Hostname), agentId :: AgentId, autoScalingGroup :: NullOrUndefined (AutoScalingGroup), agentHealth :: NullOrUndefined (AgentHealth), agentVersion :: NullOrUndefined (AgentVersion), operatingSystem :: NullOrUndefined (OperatingSystem), kernelVersion :: NullOrUndefined (KernelVersion), ipv4Address :: NullOrUndefined (Ipv4Address) } -> { hostname :: NullOrUndefined (Hostname), agentId :: AgentId, autoScalingGroup :: NullOrUndefined (AutoScalingGroup), agentHealth :: NullOrUndefined (AgentHealth), agentVersion :: NullOrUndefined (AgentVersion), operatingSystem :: NullOrUndefined (OperatingSystem), kernelVersion :: NullOrUndefined (KernelVersion), ipv4Address :: NullOrUndefined (Ipv4Address) }) -> AgentPreview
```

Constructs AgentPreview's fields from required parameters

#### `AgentPreviewList`

``` purescript
newtype AgentPreviewList
  = AgentPreviewList (Array AgentPreview)
```

##### Instances
``` purescript
Newtype AgentPreviewList _
Generic AgentPreviewList _
Show AgentPreviewList
Decode AgentPreviewList
Encode AgentPreviewList
```

#### `AgentVersion`

``` purescript
newtype AgentVersion
  = AgentVersion String
```

##### Instances
``` purescript
Newtype AgentVersion _
Generic AgentVersion _
Show AgentVersion
Decode AgentVersion
Encode AgentVersion
```

#### `AgentsAlreadyRunningAssessmentException`

``` purescript
newtype AgentsAlreadyRunningAssessmentException
  = AgentsAlreadyRunningAssessmentException { message :: ErrorMessage, agents :: AgentAlreadyRunningAssessmentList, agentsTruncated :: Bool, canRetry :: Bool }
```

<p>You started an assessment run, but one of the instances is already participating in another assessment run.</p>

##### Instances
``` purescript
Newtype AgentsAlreadyRunningAssessmentException _
Generic AgentsAlreadyRunningAssessmentException _
Show AgentsAlreadyRunningAssessmentException
Decode AgentsAlreadyRunningAssessmentException
Encode AgentsAlreadyRunningAssessmentException
```

#### `newAgentsAlreadyRunningAssessmentException`

``` purescript
newAgentsAlreadyRunningAssessmentException :: AgentAlreadyRunningAssessmentList -> Bool -> Bool -> ErrorMessage -> AgentsAlreadyRunningAssessmentException
```

Constructs AgentsAlreadyRunningAssessmentException from required parameters

#### `newAgentsAlreadyRunningAssessmentException'`

``` purescript
newAgentsAlreadyRunningAssessmentException' :: AgentAlreadyRunningAssessmentList -> Bool -> Bool -> ErrorMessage -> ({ message :: ErrorMessage, agents :: AgentAlreadyRunningAssessmentList, agentsTruncated :: Bool, canRetry :: Bool } -> { message :: ErrorMessage, agents :: AgentAlreadyRunningAssessmentList, agentsTruncated :: Bool, canRetry :: Bool }) -> AgentsAlreadyRunningAssessmentException
```

Constructs AgentsAlreadyRunningAssessmentException's fields from required parameters

#### `AmiId`

``` purescript
newtype AmiId
  = AmiId String
```

##### Instances
``` purescript
Newtype AmiId _
Generic AmiId _
Show AmiId
Decode AmiId
Encode AmiId
```

#### `Arn`

``` purescript
newtype Arn
  = Arn String
```

##### Instances
``` purescript
Newtype Arn _
Generic Arn _
Show Arn
Decode Arn
Encode Arn
```

#### `ArnCount`

``` purescript
newtype ArnCount
  = ArnCount Int
```

##### Instances
``` purescript
Newtype ArnCount _
Generic ArnCount _
Show ArnCount
Decode ArnCount
Encode ArnCount
```

#### `AssessmentRulesPackageArnList`

``` purescript
newtype AssessmentRulesPackageArnList
  = AssessmentRulesPackageArnList (Array Arn)
```

##### Instances
``` purescript
Newtype AssessmentRulesPackageArnList _
Generic AssessmentRulesPackageArnList _
Show AssessmentRulesPackageArnList
Decode AssessmentRulesPackageArnList
Encode AssessmentRulesPackageArnList
```

#### `AssessmentRun`

``` purescript
newtype AssessmentRun
  = AssessmentRun { arn :: Arn, name :: AssessmentRunName, assessmentTemplateArn :: Arn, state :: AssessmentRunState, durationInSeconds :: AssessmentRunDuration, rulesPackageArns :: AssessmentRulesPackageArnList, userAttributesForFindings :: UserAttributeList, createdAt :: Timestamp, startedAt :: NullOrUndefined (Timestamp), completedAt :: NullOrUndefined (Timestamp), stateChangedAt :: Timestamp, dataCollected :: Bool, stateChanges :: AssessmentRunStateChangeList, notifications :: AssessmentRunNotificationList, findingCounts :: AssessmentRunFindingCounts }
```

<p>A snapshot of an Amazon Inspector assessment run that contains the findings of the assessment run .</p> <p>Used as the response element in the <a>DescribeAssessmentRuns</a> action.</p>

##### Instances
``` purescript
Newtype AssessmentRun _
Generic AssessmentRun _
Show AssessmentRun
Decode AssessmentRun
Encode AssessmentRun
```

#### `newAssessmentRun`

``` purescript
newAssessmentRun :: Arn -> Arn -> Timestamp -> Bool -> AssessmentRunDuration -> AssessmentRunFindingCounts -> AssessmentRunName -> AssessmentRunNotificationList -> AssessmentRulesPackageArnList -> AssessmentRunState -> Timestamp -> AssessmentRunStateChangeList -> UserAttributeList -> AssessmentRun
```

Constructs AssessmentRun from required parameters

#### `newAssessmentRun'`

``` purescript
newAssessmentRun' :: Arn -> Arn -> Timestamp -> Bool -> AssessmentRunDuration -> AssessmentRunFindingCounts -> AssessmentRunName -> AssessmentRunNotificationList -> AssessmentRulesPackageArnList -> AssessmentRunState -> Timestamp -> AssessmentRunStateChangeList -> UserAttributeList -> ({ arn :: Arn, name :: AssessmentRunName, assessmentTemplateArn :: Arn, state :: AssessmentRunState, durationInSeconds :: AssessmentRunDuration, rulesPackageArns :: AssessmentRulesPackageArnList, userAttributesForFindings :: UserAttributeList, createdAt :: Timestamp, startedAt :: NullOrUndefined (Timestamp), completedAt :: NullOrUndefined (Timestamp), stateChangedAt :: Timestamp, dataCollected :: Bool, stateChanges :: AssessmentRunStateChangeList, notifications :: AssessmentRunNotificationList, findingCounts :: AssessmentRunFindingCounts } -> { arn :: Arn, name :: AssessmentRunName, assessmentTemplateArn :: Arn, state :: AssessmentRunState, durationInSeconds :: AssessmentRunDuration, rulesPackageArns :: AssessmentRulesPackageArnList, userAttributesForFindings :: UserAttributeList, createdAt :: Timestamp, startedAt :: NullOrUndefined (Timestamp), completedAt :: NullOrUndefined (Timestamp), stateChangedAt :: Timestamp, dataCollected :: Bool, stateChanges :: AssessmentRunStateChangeList, notifications :: AssessmentRunNotificationList, findingCounts :: AssessmentRunFindingCounts }) -> AssessmentRun
```

Constructs AssessmentRun's fields from required parameters

#### `AssessmentRunAgent`

``` purescript
newtype AssessmentRunAgent
  = AssessmentRunAgent { agentId :: AgentId, assessmentRunArn :: Arn, agentHealth :: AgentHealth, agentHealthCode :: AgentHealthCode, agentHealthDetails :: NullOrUndefined (Message), autoScalingGroup :: NullOrUndefined (AutoScalingGroup), telemetryMetadata :: TelemetryMetadataList }
```

<p>Contains information about an Amazon Inspector agent. This data type is used as a response element in the <a>ListAssessmentRunAgents</a> action.</p>

##### Instances
``` purescript
Newtype AssessmentRunAgent _
Generic AssessmentRunAgent _
Show AssessmentRunAgent
Decode AssessmentRunAgent
Encode AssessmentRunAgent
```

#### `newAssessmentRunAgent`

``` purescript
newAssessmentRunAgent :: AgentHealth -> AgentHealthCode -> AgentId -> Arn -> TelemetryMetadataList -> AssessmentRunAgent
```

Constructs AssessmentRunAgent from required parameters

#### `newAssessmentRunAgent'`

``` purescript
newAssessmentRunAgent' :: AgentHealth -> AgentHealthCode -> AgentId -> Arn -> TelemetryMetadataList -> ({ agentId :: AgentId, assessmentRunArn :: Arn, agentHealth :: AgentHealth, agentHealthCode :: AgentHealthCode, agentHealthDetails :: NullOrUndefined (Message), autoScalingGroup :: NullOrUndefined (AutoScalingGroup), telemetryMetadata :: TelemetryMetadataList } -> { agentId :: AgentId, assessmentRunArn :: Arn, agentHealth :: AgentHealth, agentHealthCode :: AgentHealthCode, agentHealthDetails :: NullOrUndefined (Message), autoScalingGroup :: NullOrUndefined (AutoScalingGroup), telemetryMetadata :: TelemetryMetadataList }) -> AssessmentRunAgent
```

Constructs AssessmentRunAgent's fields from required parameters

#### `AssessmentRunAgentList`

``` purescript
newtype AssessmentRunAgentList
  = AssessmentRunAgentList (Array AssessmentRunAgent)
```

##### Instances
``` purescript
Newtype AssessmentRunAgentList _
Generic AssessmentRunAgentList _
Show AssessmentRunAgentList
Decode AssessmentRunAgentList
Encode AssessmentRunAgentList
```

#### `AssessmentRunDuration`

``` purescript
newtype AssessmentRunDuration
  = AssessmentRunDuration Int
```

##### Instances
``` purescript
Newtype AssessmentRunDuration _
Generic AssessmentRunDuration _
Show AssessmentRunDuration
Decode AssessmentRunDuration
Encode AssessmentRunDuration
```

#### `AssessmentRunFilter`

``` purescript
newtype AssessmentRunFilter
  = AssessmentRunFilter { namePattern :: NullOrUndefined (NamePattern), states :: NullOrUndefined (AssessmentRunStateList), durationRange :: NullOrUndefined (DurationRange), rulesPackageArns :: NullOrUndefined (FilterRulesPackageArnList), startTimeRange :: NullOrUndefined (TimestampRange), completionTimeRange :: NullOrUndefined (TimestampRange), stateChangeTimeRange :: NullOrUndefined (TimestampRange) }
```

<p>Used as the request parameter in the <a>ListAssessmentRuns</a> action.</p>

##### Instances
``` purescript
Newtype AssessmentRunFilter _
Generic AssessmentRunFilter _
Show AssessmentRunFilter
Decode AssessmentRunFilter
Encode AssessmentRunFilter
```

#### `newAssessmentRunFilter`

``` purescript
newAssessmentRunFilter :: AssessmentRunFilter
```

Constructs AssessmentRunFilter from required parameters

#### `newAssessmentRunFilter'`

``` purescript
newAssessmentRunFilter' :: ({ namePattern :: NullOrUndefined (NamePattern), states :: NullOrUndefined (AssessmentRunStateList), durationRange :: NullOrUndefined (DurationRange), rulesPackageArns :: NullOrUndefined (FilterRulesPackageArnList), startTimeRange :: NullOrUndefined (TimestampRange), completionTimeRange :: NullOrUndefined (TimestampRange), stateChangeTimeRange :: NullOrUndefined (TimestampRange) } -> { namePattern :: NullOrUndefined (NamePattern), states :: NullOrUndefined (AssessmentRunStateList), durationRange :: NullOrUndefined (DurationRange), rulesPackageArns :: NullOrUndefined (FilterRulesPackageArnList), startTimeRange :: NullOrUndefined (TimestampRange), completionTimeRange :: NullOrUndefined (TimestampRange), stateChangeTimeRange :: NullOrUndefined (TimestampRange) }) -> AssessmentRunFilter
```

Constructs AssessmentRunFilter's fields from required parameters

#### `AssessmentRunFindingCounts`

``` purescript
newtype AssessmentRunFindingCounts
  = AssessmentRunFindingCounts (StrMap FindingCount)
```

##### Instances
``` purescript
Newtype AssessmentRunFindingCounts _
Generic AssessmentRunFindingCounts _
Show AssessmentRunFindingCounts
Decode AssessmentRunFindingCounts
Encode AssessmentRunFindingCounts
```

#### `AssessmentRunInProgressArnList`

``` purescript
newtype AssessmentRunInProgressArnList
  = AssessmentRunInProgressArnList (Array Arn)
```

##### Instances
``` purescript
Newtype AssessmentRunInProgressArnList _
Generic AssessmentRunInProgressArnList _
Show AssessmentRunInProgressArnList
Decode AssessmentRunInProgressArnList
Encode AssessmentRunInProgressArnList
```

#### `AssessmentRunInProgressException`

``` purescript
newtype AssessmentRunInProgressException
  = AssessmentRunInProgressException { message :: ErrorMessage, assessmentRunArns :: AssessmentRunInProgressArnList, assessmentRunArnsTruncated :: Bool, canRetry :: Bool }
```

<p>You cannot perform a specified action if an assessment run is currently in progress.</p>

##### Instances
``` purescript
Newtype AssessmentRunInProgressException _
Generic AssessmentRunInProgressException _
Show AssessmentRunInProgressException
Decode AssessmentRunInProgressException
Encode AssessmentRunInProgressException
```

#### `newAssessmentRunInProgressException`

``` purescript
newAssessmentRunInProgressException :: AssessmentRunInProgressArnList -> Bool -> Bool -> ErrorMessage -> AssessmentRunInProgressException
```

Constructs AssessmentRunInProgressException from required parameters

#### `newAssessmentRunInProgressException'`

``` purescript
newAssessmentRunInProgressException' :: AssessmentRunInProgressArnList -> Bool -> Bool -> ErrorMessage -> ({ message :: ErrorMessage, assessmentRunArns :: AssessmentRunInProgressArnList, assessmentRunArnsTruncated :: Bool, canRetry :: Bool } -> { message :: ErrorMessage, assessmentRunArns :: AssessmentRunInProgressArnList, assessmentRunArnsTruncated :: Bool, canRetry :: Bool }) -> AssessmentRunInProgressException
```

Constructs AssessmentRunInProgressException's fields from required parameters

#### `AssessmentRunList`

``` purescript
newtype AssessmentRunList
  = AssessmentRunList (Array AssessmentRun)
```

##### Instances
``` purescript
Newtype AssessmentRunList _
Generic AssessmentRunList _
Show AssessmentRunList
Decode AssessmentRunList
Encode AssessmentRunList
```

#### `AssessmentRunName`

``` purescript
newtype AssessmentRunName
  = AssessmentRunName String
```

##### Instances
``` purescript
Newtype AssessmentRunName _
Generic AssessmentRunName _
Show AssessmentRunName
Decode AssessmentRunName
Encode AssessmentRunName
```

#### `AssessmentRunNotification`

``` purescript
newtype AssessmentRunNotification
  = AssessmentRunNotification { date :: Timestamp, event :: InspectorEvent, message :: NullOrUndefined (Message), error :: Bool, snsTopicArn :: NullOrUndefined (Arn), snsPublishStatusCode :: NullOrUndefined (AssessmentRunNotificationSnsStatusCode) }
```

<p>Used as one of the elements of the <a>AssessmentRun</a> data type.</p>

##### Instances
``` purescript
Newtype AssessmentRunNotification _
Generic AssessmentRunNotification _
Show AssessmentRunNotification
Decode AssessmentRunNotification
Encode AssessmentRunNotification
```

#### `newAssessmentRunNotification`

``` purescript
newAssessmentRunNotification :: Timestamp -> Bool -> InspectorEvent -> AssessmentRunNotification
```

Constructs AssessmentRunNotification from required parameters

#### `newAssessmentRunNotification'`

``` purescript
newAssessmentRunNotification' :: Timestamp -> Bool -> InspectorEvent -> ({ date :: Timestamp, event :: InspectorEvent, message :: NullOrUndefined (Message), error :: Bool, snsTopicArn :: NullOrUndefined (Arn), snsPublishStatusCode :: NullOrUndefined (AssessmentRunNotificationSnsStatusCode) } -> { date :: Timestamp, event :: InspectorEvent, message :: NullOrUndefined (Message), error :: Bool, snsTopicArn :: NullOrUndefined (Arn), snsPublishStatusCode :: NullOrUndefined (AssessmentRunNotificationSnsStatusCode) }) -> AssessmentRunNotification
```

Constructs AssessmentRunNotification's fields from required parameters

#### `AssessmentRunNotificationList`

``` purescript
newtype AssessmentRunNotificationList
  = AssessmentRunNotificationList (Array AssessmentRunNotification)
```

##### Instances
``` purescript
Newtype AssessmentRunNotificationList _
Generic AssessmentRunNotificationList _
Show AssessmentRunNotificationList
Decode AssessmentRunNotificationList
Encode AssessmentRunNotificationList
```

#### `AssessmentRunNotificationSnsStatusCode`

``` purescript
newtype AssessmentRunNotificationSnsStatusCode
  = AssessmentRunNotificationSnsStatusCode String
```

##### Instances
``` purescript
Newtype AssessmentRunNotificationSnsStatusCode _
Generic AssessmentRunNotificationSnsStatusCode _
Show AssessmentRunNotificationSnsStatusCode
Decode AssessmentRunNotificationSnsStatusCode
Encode AssessmentRunNotificationSnsStatusCode
```

#### `AssessmentRunState`

``` purescript
newtype AssessmentRunState
  = AssessmentRunState String
```

##### Instances
``` purescript
Newtype AssessmentRunState _
Generic AssessmentRunState _
Show AssessmentRunState
Decode AssessmentRunState
Encode AssessmentRunState
```

#### `AssessmentRunStateChange`

``` purescript
newtype AssessmentRunStateChange
  = AssessmentRunStateChange { stateChangedAt :: Timestamp, state :: AssessmentRunState }
```

<p>Used as one of the elements of the <a>AssessmentRun</a> data type.</p>

##### Instances
``` purescript
Newtype AssessmentRunStateChange _
Generic AssessmentRunStateChange _
Show AssessmentRunStateChange
Decode AssessmentRunStateChange
Encode AssessmentRunStateChange
```

#### `newAssessmentRunStateChange`

``` purescript
newAssessmentRunStateChange :: AssessmentRunState -> Timestamp -> AssessmentRunStateChange
```

Constructs AssessmentRunStateChange from required parameters

#### `newAssessmentRunStateChange'`

``` purescript
newAssessmentRunStateChange' :: AssessmentRunState -> Timestamp -> ({ stateChangedAt :: Timestamp, state :: AssessmentRunState } -> { stateChangedAt :: Timestamp, state :: AssessmentRunState }) -> AssessmentRunStateChange
```

Constructs AssessmentRunStateChange's fields from required parameters

#### `AssessmentRunStateChangeList`

``` purescript
newtype AssessmentRunStateChangeList
  = AssessmentRunStateChangeList (Array AssessmentRunStateChange)
```

##### Instances
``` purescript
Newtype AssessmentRunStateChangeList _
Generic AssessmentRunStateChangeList _
Show AssessmentRunStateChangeList
Decode AssessmentRunStateChangeList
Encode AssessmentRunStateChangeList
```

#### `AssessmentRunStateList`

``` purescript
newtype AssessmentRunStateList
  = AssessmentRunStateList (Array AssessmentRunState)
```

##### Instances
``` purescript
Newtype AssessmentRunStateList _
Generic AssessmentRunStateList _
Show AssessmentRunStateList
Decode AssessmentRunStateList
Encode AssessmentRunStateList
```

#### `AssessmentTarget`

``` purescript
newtype AssessmentTarget
  = AssessmentTarget { arn :: Arn, name :: AssessmentTargetName, resourceGroupArn :: Arn, createdAt :: Timestamp, updatedAt :: Timestamp }
```

<p>Contains information about an Amazon Inspector application. This data type is used as the response element in the <a>DescribeAssessmentTargets</a> action.</p>

##### Instances
``` purescript
Newtype AssessmentTarget _
Generic AssessmentTarget _
Show AssessmentTarget
Decode AssessmentTarget
Encode AssessmentTarget
```

#### `newAssessmentTarget`

``` purescript
newAssessmentTarget :: Arn -> Timestamp -> AssessmentTargetName -> Arn -> Timestamp -> AssessmentTarget
```

Constructs AssessmentTarget from required parameters

#### `newAssessmentTarget'`

``` purescript
newAssessmentTarget' :: Arn -> Timestamp -> AssessmentTargetName -> Arn -> Timestamp -> ({ arn :: Arn, name :: AssessmentTargetName, resourceGroupArn :: Arn, createdAt :: Timestamp, updatedAt :: Timestamp } -> { arn :: Arn, name :: AssessmentTargetName, resourceGroupArn :: Arn, createdAt :: Timestamp, updatedAt :: Timestamp }) -> AssessmentTarget
```

Constructs AssessmentTarget's fields from required parameters

#### `AssessmentTargetFilter`

``` purescript
newtype AssessmentTargetFilter
  = AssessmentTargetFilter { assessmentTargetNamePattern :: NullOrUndefined (NamePattern) }
```

<p>Used as the request parameter in the <a>ListAssessmentTargets</a> action.</p>

##### Instances
``` purescript
Newtype AssessmentTargetFilter _
Generic AssessmentTargetFilter _
Show AssessmentTargetFilter
Decode AssessmentTargetFilter
Encode AssessmentTargetFilter
```

#### `newAssessmentTargetFilter`

``` purescript
newAssessmentTargetFilter :: AssessmentTargetFilter
```

Constructs AssessmentTargetFilter from required parameters

#### `newAssessmentTargetFilter'`

``` purescript
newAssessmentTargetFilter' :: ({ assessmentTargetNamePattern :: NullOrUndefined (NamePattern) } -> { assessmentTargetNamePattern :: NullOrUndefined (NamePattern) }) -> AssessmentTargetFilter
```

Constructs AssessmentTargetFilter's fields from required parameters

#### `AssessmentTargetList`

``` purescript
newtype AssessmentTargetList
  = AssessmentTargetList (Array AssessmentTarget)
```

##### Instances
``` purescript
Newtype AssessmentTargetList _
Generic AssessmentTargetList _
Show AssessmentTargetList
Decode AssessmentTargetList
Encode AssessmentTargetList
```

#### `AssessmentTargetName`

``` purescript
newtype AssessmentTargetName
  = AssessmentTargetName String
```

##### Instances
``` purescript
Newtype AssessmentTargetName _
Generic AssessmentTargetName _
Show AssessmentTargetName
Decode AssessmentTargetName
Encode AssessmentTargetName
```

#### `AssessmentTemplate`

``` purescript
newtype AssessmentTemplate
  = AssessmentTemplate { arn :: Arn, name :: AssessmentTemplateName, assessmentTargetArn :: Arn, durationInSeconds :: AssessmentRunDuration, rulesPackageArns :: AssessmentTemplateRulesPackageArnList, userAttributesForFindings :: UserAttributeList, lastAssessmentRunArn :: NullOrUndefined (Arn), assessmentRunCount :: ArnCount, createdAt :: Timestamp }
```

<p>Contains information about an Amazon Inspector assessment template. This data type is used as the response element in the <a>DescribeAssessmentTemplates</a> action.</p>

##### Instances
``` purescript
Newtype AssessmentTemplate _
Generic AssessmentTemplate _
Show AssessmentTemplate
Decode AssessmentTemplate
Encode AssessmentTemplate
```

#### `newAssessmentTemplate`

``` purescript
newAssessmentTemplate :: Arn -> ArnCount -> Arn -> Timestamp -> AssessmentRunDuration -> AssessmentTemplateName -> AssessmentTemplateRulesPackageArnList -> UserAttributeList -> AssessmentTemplate
```

Constructs AssessmentTemplate from required parameters

#### `newAssessmentTemplate'`

``` purescript
newAssessmentTemplate' :: Arn -> ArnCount -> Arn -> Timestamp -> AssessmentRunDuration -> AssessmentTemplateName -> AssessmentTemplateRulesPackageArnList -> UserAttributeList -> ({ arn :: Arn, name :: AssessmentTemplateName, assessmentTargetArn :: Arn, durationInSeconds :: AssessmentRunDuration, rulesPackageArns :: AssessmentTemplateRulesPackageArnList, userAttributesForFindings :: UserAttributeList, lastAssessmentRunArn :: NullOrUndefined (Arn), assessmentRunCount :: ArnCount, createdAt :: Timestamp } -> { arn :: Arn, name :: AssessmentTemplateName, assessmentTargetArn :: Arn, durationInSeconds :: AssessmentRunDuration, rulesPackageArns :: AssessmentTemplateRulesPackageArnList, userAttributesForFindings :: UserAttributeList, lastAssessmentRunArn :: NullOrUndefined (Arn), assessmentRunCount :: ArnCount, createdAt :: Timestamp }) -> AssessmentTemplate
```

Constructs AssessmentTemplate's fields from required parameters

#### `AssessmentTemplateFilter`

``` purescript
newtype AssessmentTemplateFilter
  = AssessmentTemplateFilter { namePattern :: NullOrUndefined (NamePattern), durationRange :: NullOrUndefined (DurationRange), rulesPackageArns :: NullOrUndefined (FilterRulesPackageArnList) }
```

<p>Used as the request parameter in the <a>ListAssessmentTemplates</a> action.</p>

##### Instances
``` purescript
Newtype AssessmentTemplateFilter _
Generic AssessmentTemplateFilter _
Show AssessmentTemplateFilter
Decode AssessmentTemplateFilter
Encode AssessmentTemplateFilter
```

#### `newAssessmentTemplateFilter`

``` purescript
newAssessmentTemplateFilter :: AssessmentTemplateFilter
```

Constructs AssessmentTemplateFilter from required parameters

#### `newAssessmentTemplateFilter'`

``` purescript
newAssessmentTemplateFilter' :: ({ namePattern :: NullOrUndefined (NamePattern), durationRange :: NullOrUndefined (DurationRange), rulesPackageArns :: NullOrUndefined (FilterRulesPackageArnList) } -> { namePattern :: NullOrUndefined (NamePattern), durationRange :: NullOrUndefined (DurationRange), rulesPackageArns :: NullOrUndefined (FilterRulesPackageArnList) }) -> AssessmentTemplateFilter
```

Constructs AssessmentTemplateFilter's fields from required parameters

#### `AssessmentTemplateList`

``` purescript
newtype AssessmentTemplateList
  = AssessmentTemplateList (Array AssessmentTemplate)
```

##### Instances
``` purescript
Newtype AssessmentTemplateList _
Generic AssessmentTemplateList _
Show AssessmentTemplateList
Decode AssessmentTemplateList
Encode AssessmentTemplateList
```

#### `AssessmentTemplateName`

``` purescript
newtype AssessmentTemplateName
  = AssessmentTemplateName String
```

##### Instances
``` purescript
Newtype AssessmentTemplateName _
Generic AssessmentTemplateName _
Show AssessmentTemplateName
Decode AssessmentTemplateName
Encode AssessmentTemplateName
```

#### `AssessmentTemplateRulesPackageArnList`

``` purescript
newtype AssessmentTemplateRulesPackageArnList
  = AssessmentTemplateRulesPackageArnList (Array Arn)
```

##### Instances
``` purescript
Newtype AssessmentTemplateRulesPackageArnList _
Generic AssessmentTemplateRulesPackageArnList _
Show AssessmentTemplateRulesPackageArnList
Decode AssessmentTemplateRulesPackageArnList
Encode AssessmentTemplateRulesPackageArnList
```

#### `AssetAttributes`

``` purescript
newtype AssetAttributes
  = AssetAttributes { schemaVersion :: NumericVersion, agentId :: NullOrUndefined (AgentId), autoScalingGroup :: NullOrUndefined (AutoScalingGroup), amiId :: NullOrUndefined (AmiId), hostname :: NullOrUndefined (Hostname), ipv4Addresses :: NullOrUndefined (Ipv4AddressList) }
```

<p>A collection of attributes of the host from which the finding is generated.</p>

##### Instances
``` purescript
Newtype AssetAttributes _
Generic AssetAttributes _
Show AssetAttributes
Decode AssetAttributes
Encode AssetAttributes
```

#### `newAssetAttributes`

``` purescript
newAssetAttributes :: NumericVersion -> AssetAttributes
```

Constructs AssetAttributes from required parameters

#### `newAssetAttributes'`

``` purescript
newAssetAttributes' :: NumericVersion -> ({ schemaVersion :: NumericVersion, agentId :: NullOrUndefined (AgentId), autoScalingGroup :: NullOrUndefined (AutoScalingGroup), amiId :: NullOrUndefined (AmiId), hostname :: NullOrUndefined (Hostname), ipv4Addresses :: NullOrUndefined (Ipv4AddressList) } -> { schemaVersion :: NumericVersion, agentId :: NullOrUndefined (AgentId), autoScalingGroup :: NullOrUndefined (AutoScalingGroup), amiId :: NullOrUndefined (AmiId), hostname :: NullOrUndefined (Hostname), ipv4Addresses :: NullOrUndefined (Ipv4AddressList) }) -> AssetAttributes
```

Constructs AssetAttributes's fields from required parameters

#### `AssetType`

``` purescript
newtype AssetType
  = AssetType String
```

##### Instances
``` purescript
Newtype AssetType _
Generic AssetType _
Show AssetType
Decode AssetType
Encode AssetType
```

#### `Attribute`

``` purescript
newtype Attribute
  = Attribute { key :: AttributeKey, value :: NullOrUndefined (AttributeValue) }
```

<p>This data type is used as a request parameter in the <a>AddAttributesToFindings</a> and <a>CreateAssessmentTemplate</a> actions.</p>

##### Instances
``` purescript
Newtype Attribute _
Generic Attribute _
Show Attribute
Decode Attribute
Encode Attribute
```

#### `newAttribute`

``` purescript
newAttribute :: AttributeKey -> Attribute
```

Constructs Attribute from required parameters

#### `newAttribute'`

``` purescript
newAttribute' :: AttributeKey -> ({ key :: AttributeKey, value :: NullOrUndefined (AttributeValue) } -> { key :: AttributeKey, value :: NullOrUndefined (AttributeValue) }) -> Attribute
```

Constructs Attribute's fields from required parameters

#### `AttributeKey`

``` purescript
newtype AttributeKey
  = AttributeKey String
```

##### Instances
``` purescript
Newtype AttributeKey _
Generic AttributeKey _
Show AttributeKey
Decode AttributeKey
Encode AttributeKey
```

#### `AttributeList`

``` purescript
newtype AttributeList
  = AttributeList (Array Attribute)
```

##### Instances
``` purescript
Newtype AttributeList _
Generic AttributeList _
Show AttributeList
Decode AttributeList
Encode AttributeList
```

#### `AttributeValue`

``` purescript
newtype AttributeValue
  = AttributeValue String
```

##### Instances
``` purescript
Newtype AttributeValue _
Generic AttributeValue _
Show AttributeValue
Decode AttributeValue
Encode AttributeValue
```

#### `AutoScalingGroup`

``` purescript
newtype AutoScalingGroup
  = AutoScalingGroup String
```

##### Instances
``` purescript
Newtype AutoScalingGroup _
Generic AutoScalingGroup _
Show AutoScalingGroup
Decode AutoScalingGroup
Encode AutoScalingGroup
```

#### `AutoScalingGroupList`

``` purescript
newtype AutoScalingGroupList
  = AutoScalingGroupList (Array AutoScalingGroup)
```

##### Instances
``` purescript
Newtype AutoScalingGroupList _
Generic AutoScalingGroupList _
Show AutoScalingGroupList
Decode AutoScalingGroupList
Encode AutoScalingGroupList
```

#### `BatchDescribeArnList`

``` purescript
newtype BatchDescribeArnList
  = BatchDescribeArnList (Array Arn)
```

##### Instances
``` purescript
Newtype BatchDescribeArnList _
Generic BatchDescribeArnList _
Show BatchDescribeArnList
Decode BatchDescribeArnList
Encode BatchDescribeArnList
```

#### `Bool`

``` purescript
newtype Bool
  = Bool Boolean
```

##### Instances
``` purescript
Newtype Bool _
Generic Bool _
Show Bool
Decode Bool
Encode Bool
```

#### `CreateAssessmentTargetRequest`

``` purescript
newtype CreateAssessmentTargetRequest
  = CreateAssessmentTargetRequest { assessmentTargetName :: AssessmentTargetName, resourceGroupArn :: Arn }
```

##### Instances
``` purescript
Newtype CreateAssessmentTargetRequest _
Generic CreateAssessmentTargetRequest _
Show CreateAssessmentTargetRequest
Decode CreateAssessmentTargetRequest
Encode CreateAssessmentTargetRequest
```

#### `newCreateAssessmentTargetRequest`

``` purescript
newCreateAssessmentTargetRequest :: AssessmentTargetName -> Arn -> CreateAssessmentTargetRequest
```

Constructs CreateAssessmentTargetRequest from required parameters

#### `newCreateAssessmentTargetRequest'`

``` purescript
newCreateAssessmentTargetRequest' :: AssessmentTargetName -> Arn -> ({ assessmentTargetName :: AssessmentTargetName, resourceGroupArn :: Arn } -> { assessmentTargetName :: AssessmentTargetName, resourceGroupArn :: Arn }) -> CreateAssessmentTargetRequest
```

Constructs CreateAssessmentTargetRequest's fields from required parameters

#### `CreateAssessmentTargetResponse`

``` purescript
newtype CreateAssessmentTargetResponse
  = CreateAssessmentTargetResponse { assessmentTargetArn :: Arn }
```

##### Instances
``` purescript
Newtype CreateAssessmentTargetResponse _
Generic CreateAssessmentTargetResponse _
Show CreateAssessmentTargetResponse
Decode CreateAssessmentTargetResponse
Encode CreateAssessmentTargetResponse
```

#### `newCreateAssessmentTargetResponse`

``` purescript
newCreateAssessmentTargetResponse :: Arn -> CreateAssessmentTargetResponse
```

Constructs CreateAssessmentTargetResponse from required parameters

#### `newCreateAssessmentTargetResponse'`

``` purescript
newCreateAssessmentTargetResponse' :: Arn -> ({ assessmentTargetArn :: Arn } -> { assessmentTargetArn :: Arn }) -> CreateAssessmentTargetResponse
```

Constructs CreateAssessmentTargetResponse's fields from required parameters

#### `CreateAssessmentTemplateRequest`

``` purescript
newtype CreateAssessmentTemplateRequest
  = CreateAssessmentTemplateRequest { assessmentTargetArn :: Arn, assessmentTemplateName :: AssessmentTemplateName, durationInSeconds :: AssessmentRunDuration, rulesPackageArns :: AssessmentTemplateRulesPackageArnList, userAttributesForFindings :: NullOrUndefined (UserAttributeList) }
```

##### Instances
``` purescript
Newtype CreateAssessmentTemplateRequest _
Generic CreateAssessmentTemplateRequest _
Show CreateAssessmentTemplateRequest
Decode CreateAssessmentTemplateRequest
Encode CreateAssessmentTemplateRequest
```

#### `newCreateAssessmentTemplateRequest`

``` purescript
newCreateAssessmentTemplateRequest :: Arn -> AssessmentTemplateName -> AssessmentRunDuration -> AssessmentTemplateRulesPackageArnList -> CreateAssessmentTemplateRequest
```

Constructs CreateAssessmentTemplateRequest from required parameters

#### `newCreateAssessmentTemplateRequest'`

``` purescript
newCreateAssessmentTemplateRequest' :: Arn -> AssessmentTemplateName -> AssessmentRunDuration -> AssessmentTemplateRulesPackageArnList -> ({ assessmentTargetArn :: Arn, assessmentTemplateName :: AssessmentTemplateName, durationInSeconds :: AssessmentRunDuration, rulesPackageArns :: AssessmentTemplateRulesPackageArnList, userAttributesForFindings :: NullOrUndefined (UserAttributeList) } -> { assessmentTargetArn :: Arn, assessmentTemplateName :: AssessmentTemplateName, durationInSeconds :: AssessmentRunDuration, rulesPackageArns :: AssessmentTemplateRulesPackageArnList, userAttributesForFindings :: NullOrUndefined (UserAttributeList) }) -> CreateAssessmentTemplateRequest
```

Constructs CreateAssessmentTemplateRequest's fields from required parameters

#### `CreateAssessmentTemplateResponse`

``` purescript
newtype CreateAssessmentTemplateResponse
  = CreateAssessmentTemplateResponse { assessmentTemplateArn :: Arn }
```

##### Instances
``` purescript
Newtype CreateAssessmentTemplateResponse _
Generic CreateAssessmentTemplateResponse _
Show CreateAssessmentTemplateResponse
Decode CreateAssessmentTemplateResponse
Encode CreateAssessmentTemplateResponse
```

#### `newCreateAssessmentTemplateResponse`

``` purescript
newCreateAssessmentTemplateResponse :: Arn -> CreateAssessmentTemplateResponse
```

Constructs CreateAssessmentTemplateResponse from required parameters

#### `newCreateAssessmentTemplateResponse'`

``` purescript
newCreateAssessmentTemplateResponse' :: Arn -> ({ assessmentTemplateArn :: Arn } -> { assessmentTemplateArn :: Arn }) -> CreateAssessmentTemplateResponse
```

Constructs CreateAssessmentTemplateResponse's fields from required parameters

#### `CreateResourceGroupRequest`

``` purescript
newtype CreateResourceGroupRequest
  = CreateResourceGroupRequest { resourceGroupTags :: ResourceGroupTags }
```

##### Instances
``` purescript
Newtype CreateResourceGroupRequest _
Generic CreateResourceGroupRequest _
Show CreateResourceGroupRequest
Decode CreateResourceGroupRequest
Encode CreateResourceGroupRequest
```

#### `newCreateResourceGroupRequest`

``` purescript
newCreateResourceGroupRequest :: ResourceGroupTags -> CreateResourceGroupRequest
```

Constructs CreateResourceGroupRequest from required parameters

#### `newCreateResourceGroupRequest'`

``` purescript
newCreateResourceGroupRequest' :: ResourceGroupTags -> ({ resourceGroupTags :: ResourceGroupTags } -> { resourceGroupTags :: ResourceGroupTags }) -> CreateResourceGroupRequest
```

Constructs CreateResourceGroupRequest's fields from required parameters

#### `CreateResourceGroupResponse`

``` purescript
newtype CreateResourceGroupResponse
  = CreateResourceGroupResponse { resourceGroupArn :: Arn }
```

##### Instances
``` purescript
Newtype CreateResourceGroupResponse _
Generic CreateResourceGroupResponse _
Show CreateResourceGroupResponse
Decode CreateResourceGroupResponse
Encode CreateResourceGroupResponse
```

#### `newCreateResourceGroupResponse`

``` purescript
newCreateResourceGroupResponse :: Arn -> CreateResourceGroupResponse
```

Constructs CreateResourceGroupResponse from required parameters

#### `newCreateResourceGroupResponse'`

``` purescript
newCreateResourceGroupResponse' :: Arn -> ({ resourceGroupArn :: Arn } -> { resourceGroupArn :: Arn }) -> CreateResourceGroupResponse
```

Constructs CreateResourceGroupResponse's fields from required parameters

#### `DeleteAssessmentRunRequest`

``` purescript
newtype DeleteAssessmentRunRequest
  = DeleteAssessmentRunRequest { assessmentRunArn :: Arn }
```

##### Instances
``` purescript
Newtype DeleteAssessmentRunRequest _
Generic DeleteAssessmentRunRequest _
Show DeleteAssessmentRunRequest
Decode DeleteAssessmentRunRequest
Encode DeleteAssessmentRunRequest
```

#### `newDeleteAssessmentRunRequest`

``` purescript
newDeleteAssessmentRunRequest :: Arn -> DeleteAssessmentRunRequest
```

Constructs DeleteAssessmentRunRequest from required parameters

#### `newDeleteAssessmentRunRequest'`

``` purescript
newDeleteAssessmentRunRequest' :: Arn -> ({ assessmentRunArn :: Arn } -> { assessmentRunArn :: Arn }) -> DeleteAssessmentRunRequest
```

Constructs DeleteAssessmentRunRequest's fields from required parameters

#### `DeleteAssessmentTargetRequest`

``` purescript
newtype DeleteAssessmentTargetRequest
  = DeleteAssessmentTargetRequest { assessmentTargetArn :: Arn }
```

##### Instances
``` purescript
Newtype DeleteAssessmentTargetRequest _
Generic DeleteAssessmentTargetRequest _
Show DeleteAssessmentTargetRequest
Decode DeleteAssessmentTargetRequest
Encode DeleteAssessmentTargetRequest
```

#### `newDeleteAssessmentTargetRequest`

``` purescript
newDeleteAssessmentTargetRequest :: Arn -> DeleteAssessmentTargetRequest
```

Constructs DeleteAssessmentTargetRequest from required parameters

#### `newDeleteAssessmentTargetRequest'`

``` purescript
newDeleteAssessmentTargetRequest' :: Arn -> ({ assessmentTargetArn :: Arn } -> { assessmentTargetArn :: Arn }) -> DeleteAssessmentTargetRequest
```

Constructs DeleteAssessmentTargetRequest's fields from required parameters

#### `DeleteAssessmentTemplateRequest`

``` purescript
newtype DeleteAssessmentTemplateRequest
  = DeleteAssessmentTemplateRequest { assessmentTemplateArn :: Arn }
```

##### Instances
``` purescript
Newtype DeleteAssessmentTemplateRequest _
Generic DeleteAssessmentTemplateRequest _
Show DeleteAssessmentTemplateRequest
Decode DeleteAssessmentTemplateRequest
Encode DeleteAssessmentTemplateRequest
```

#### `newDeleteAssessmentTemplateRequest`

``` purescript
newDeleteAssessmentTemplateRequest :: Arn -> DeleteAssessmentTemplateRequest
```

Constructs DeleteAssessmentTemplateRequest from required parameters

#### `newDeleteAssessmentTemplateRequest'`

``` purescript
newDeleteAssessmentTemplateRequest' :: Arn -> ({ assessmentTemplateArn :: Arn } -> { assessmentTemplateArn :: Arn }) -> DeleteAssessmentTemplateRequest
```

Constructs DeleteAssessmentTemplateRequest's fields from required parameters

#### `DescribeAssessmentRunsRequest`

``` purescript
newtype DescribeAssessmentRunsRequest
  = DescribeAssessmentRunsRequest { assessmentRunArns :: BatchDescribeArnList }
```

##### Instances
``` purescript
Newtype DescribeAssessmentRunsRequest _
Generic DescribeAssessmentRunsRequest _
Show DescribeAssessmentRunsRequest
Decode DescribeAssessmentRunsRequest
Encode DescribeAssessmentRunsRequest
```

#### `newDescribeAssessmentRunsRequest`

``` purescript
newDescribeAssessmentRunsRequest :: BatchDescribeArnList -> DescribeAssessmentRunsRequest
```

Constructs DescribeAssessmentRunsRequest from required parameters

#### `newDescribeAssessmentRunsRequest'`

``` purescript
newDescribeAssessmentRunsRequest' :: BatchDescribeArnList -> ({ assessmentRunArns :: BatchDescribeArnList } -> { assessmentRunArns :: BatchDescribeArnList }) -> DescribeAssessmentRunsRequest
```

Constructs DescribeAssessmentRunsRequest's fields from required parameters

#### `DescribeAssessmentRunsResponse`

``` purescript
newtype DescribeAssessmentRunsResponse
  = DescribeAssessmentRunsResponse { assessmentRuns :: AssessmentRunList, failedItems :: FailedItems }
```

##### Instances
``` purescript
Newtype DescribeAssessmentRunsResponse _
Generic DescribeAssessmentRunsResponse _
Show DescribeAssessmentRunsResponse
Decode DescribeAssessmentRunsResponse
Encode DescribeAssessmentRunsResponse
```

#### `newDescribeAssessmentRunsResponse`

``` purescript
newDescribeAssessmentRunsResponse :: AssessmentRunList -> FailedItems -> DescribeAssessmentRunsResponse
```

Constructs DescribeAssessmentRunsResponse from required parameters

#### `newDescribeAssessmentRunsResponse'`

``` purescript
newDescribeAssessmentRunsResponse' :: AssessmentRunList -> FailedItems -> ({ assessmentRuns :: AssessmentRunList, failedItems :: FailedItems } -> { assessmentRuns :: AssessmentRunList, failedItems :: FailedItems }) -> DescribeAssessmentRunsResponse
```

Constructs DescribeAssessmentRunsResponse's fields from required parameters

#### `DescribeAssessmentTargetsRequest`

``` purescript
newtype DescribeAssessmentTargetsRequest
  = DescribeAssessmentTargetsRequest { assessmentTargetArns :: BatchDescribeArnList }
```

##### Instances
``` purescript
Newtype DescribeAssessmentTargetsRequest _
Generic DescribeAssessmentTargetsRequest _
Show DescribeAssessmentTargetsRequest
Decode DescribeAssessmentTargetsRequest
Encode DescribeAssessmentTargetsRequest
```

#### `newDescribeAssessmentTargetsRequest`

``` purescript
newDescribeAssessmentTargetsRequest :: BatchDescribeArnList -> DescribeAssessmentTargetsRequest
```

Constructs DescribeAssessmentTargetsRequest from required parameters

#### `newDescribeAssessmentTargetsRequest'`

``` purescript
newDescribeAssessmentTargetsRequest' :: BatchDescribeArnList -> ({ assessmentTargetArns :: BatchDescribeArnList } -> { assessmentTargetArns :: BatchDescribeArnList }) -> DescribeAssessmentTargetsRequest
```

Constructs DescribeAssessmentTargetsRequest's fields from required parameters

#### `DescribeAssessmentTargetsResponse`

``` purescript
newtype DescribeAssessmentTargetsResponse
  = DescribeAssessmentTargetsResponse { assessmentTargets :: AssessmentTargetList, failedItems :: FailedItems }
```

##### Instances
``` purescript
Newtype DescribeAssessmentTargetsResponse _
Generic DescribeAssessmentTargetsResponse _
Show DescribeAssessmentTargetsResponse
Decode DescribeAssessmentTargetsResponse
Encode DescribeAssessmentTargetsResponse
```

#### `newDescribeAssessmentTargetsResponse`

``` purescript
newDescribeAssessmentTargetsResponse :: AssessmentTargetList -> FailedItems -> DescribeAssessmentTargetsResponse
```

Constructs DescribeAssessmentTargetsResponse from required parameters

#### `newDescribeAssessmentTargetsResponse'`

``` purescript
newDescribeAssessmentTargetsResponse' :: AssessmentTargetList -> FailedItems -> ({ assessmentTargets :: AssessmentTargetList, failedItems :: FailedItems } -> { assessmentTargets :: AssessmentTargetList, failedItems :: FailedItems }) -> DescribeAssessmentTargetsResponse
```

Constructs DescribeAssessmentTargetsResponse's fields from required parameters

#### `DescribeAssessmentTemplatesRequest`

``` purescript
newtype DescribeAssessmentTemplatesRequest
  = DescribeAssessmentTemplatesRequest { assessmentTemplateArns :: BatchDescribeArnList }
```

##### Instances
``` purescript
Newtype DescribeAssessmentTemplatesRequest _
Generic DescribeAssessmentTemplatesRequest _
Show DescribeAssessmentTemplatesRequest
Decode DescribeAssessmentTemplatesRequest
Encode DescribeAssessmentTemplatesRequest
```

#### `newDescribeAssessmentTemplatesRequest`

``` purescript
newDescribeAssessmentTemplatesRequest :: BatchDescribeArnList -> DescribeAssessmentTemplatesRequest
```

Constructs DescribeAssessmentTemplatesRequest from required parameters

#### `newDescribeAssessmentTemplatesRequest'`

``` purescript
newDescribeAssessmentTemplatesRequest' :: BatchDescribeArnList -> ({ assessmentTemplateArns :: BatchDescribeArnList } -> { assessmentTemplateArns :: BatchDescribeArnList }) -> DescribeAssessmentTemplatesRequest
```

Constructs DescribeAssessmentTemplatesRequest's fields from required parameters

#### `DescribeAssessmentTemplatesResponse`

``` purescript
newtype DescribeAssessmentTemplatesResponse
  = DescribeAssessmentTemplatesResponse { assessmentTemplates :: AssessmentTemplateList, failedItems :: FailedItems }
```

##### Instances
``` purescript
Newtype DescribeAssessmentTemplatesResponse _
Generic DescribeAssessmentTemplatesResponse _
Show DescribeAssessmentTemplatesResponse
Decode DescribeAssessmentTemplatesResponse
Encode DescribeAssessmentTemplatesResponse
```

#### `newDescribeAssessmentTemplatesResponse`

``` purescript
newDescribeAssessmentTemplatesResponse :: AssessmentTemplateList -> FailedItems -> DescribeAssessmentTemplatesResponse
```

Constructs DescribeAssessmentTemplatesResponse from required parameters

#### `newDescribeAssessmentTemplatesResponse'`

``` purescript
newDescribeAssessmentTemplatesResponse' :: AssessmentTemplateList -> FailedItems -> ({ assessmentTemplates :: AssessmentTemplateList, failedItems :: FailedItems } -> { assessmentTemplates :: AssessmentTemplateList, failedItems :: FailedItems }) -> DescribeAssessmentTemplatesResponse
```

Constructs DescribeAssessmentTemplatesResponse's fields from required parameters

#### `DescribeCrossAccountAccessRoleResponse`

``` purescript
newtype DescribeCrossAccountAccessRoleResponse
  = DescribeCrossAccountAccessRoleResponse { roleArn :: Arn, valid :: Bool, registeredAt :: Timestamp }
```

##### Instances
``` purescript
Newtype DescribeCrossAccountAccessRoleResponse _
Generic DescribeCrossAccountAccessRoleResponse _
Show DescribeCrossAccountAccessRoleResponse
Decode DescribeCrossAccountAccessRoleResponse
Encode DescribeCrossAccountAccessRoleResponse
```

#### `newDescribeCrossAccountAccessRoleResponse`

``` purescript
newDescribeCrossAccountAccessRoleResponse :: Timestamp -> Arn -> Bool -> DescribeCrossAccountAccessRoleResponse
```

Constructs DescribeCrossAccountAccessRoleResponse from required parameters

#### `newDescribeCrossAccountAccessRoleResponse'`

``` purescript
newDescribeCrossAccountAccessRoleResponse' :: Timestamp -> Arn -> Bool -> ({ roleArn :: Arn, valid :: Bool, registeredAt :: Timestamp } -> { roleArn :: Arn, valid :: Bool, registeredAt :: Timestamp }) -> DescribeCrossAccountAccessRoleResponse
```

Constructs DescribeCrossAccountAccessRoleResponse's fields from required parameters

#### `DescribeFindingsRequest`

``` purescript
newtype DescribeFindingsRequest
  = DescribeFindingsRequest { findingArns :: BatchDescribeArnList, locale :: NullOrUndefined (Locale) }
```

##### Instances
``` purescript
Newtype DescribeFindingsRequest _
Generic DescribeFindingsRequest _
Show DescribeFindingsRequest
Decode DescribeFindingsRequest
Encode DescribeFindingsRequest
```

#### `newDescribeFindingsRequest`

``` purescript
newDescribeFindingsRequest :: BatchDescribeArnList -> DescribeFindingsRequest
```

Constructs DescribeFindingsRequest from required parameters

#### `newDescribeFindingsRequest'`

``` purescript
newDescribeFindingsRequest' :: BatchDescribeArnList -> ({ findingArns :: BatchDescribeArnList, locale :: NullOrUndefined (Locale) } -> { findingArns :: BatchDescribeArnList, locale :: NullOrUndefined (Locale) }) -> DescribeFindingsRequest
```

Constructs DescribeFindingsRequest's fields from required parameters

#### `DescribeFindingsResponse`

``` purescript
newtype DescribeFindingsResponse
  = DescribeFindingsResponse { findings :: FindingList, failedItems :: FailedItems }
```

##### Instances
``` purescript
Newtype DescribeFindingsResponse _
Generic DescribeFindingsResponse _
Show DescribeFindingsResponse
Decode DescribeFindingsResponse
Encode DescribeFindingsResponse
```

#### `newDescribeFindingsResponse`

``` purescript
newDescribeFindingsResponse :: FailedItems -> FindingList -> DescribeFindingsResponse
```

Constructs DescribeFindingsResponse from required parameters

#### `newDescribeFindingsResponse'`

``` purescript
newDescribeFindingsResponse' :: FailedItems -> FindingList -> ({ findings :: FindingList, failedItems :: FailedItems } -> { findings :: FindingList, failedItems :: FailedItems }) -> DescribeFindingsResponse
```

Constructs DescribeFindingsResponse's fields from required parameters

#### `DescribeResourceGroupsRequest`

``` purescript
newtype DescribeResourceGroupsRequest
  = DescribeResourceGroupsRequest { resourceGroupArns :: BatchDescribeArnList }
```

##### Instances
``` purescript
Newtype DescribeResourceGroupsRequest _
Generic DescribeResourceGroupsRequest _
Show DescribeResourceGroupsRequest
Decode DescribeResourceGroupsRequest
Encode DescribeResourceGroupsRequest
```

#### `newDescribeResourceGroupsRequest`

``` purescript
newDescribeResourceGroupsRequest :: BatchDescribeArnList -> DescribeResourceGroupsRequest
```

Constructs DescribeResourceGroupsRequest from required parameters

#### `newDescribeResourceGroupsRequest'`

``` purescript
newDescribeResourceGroupsRequest' :: BatchDescribeArnList -> ({ resourceGroupArns :: BatchDescribeArnList } -> { resourceGroupArns :: BatchDescribeArnList }) -> DescribeResourceGroupsRequest
```

Constructs DescribeResourceGroupsRequest's fields from required parameters

#### `DescribeResourceGroupsResponse`

``` purescript
newtype DescribeResourceGroupsResponse
  = DescribeResourceGroupsResponse { resourceGroups :: ResourceGroupList, failedItems :: FailedItems }
```

##### Instances
``` purescript
Newtype DescribeResourceGroupsResponse _
Generic DescribeResourceGroupsResponse _
Show DescribeResourceGroupsResponse
Decode DescribeResourceGroupsResponse
Encode DescribeResourceGroupsResponse
```

#### `newDescribeResourceGroupsResponse`

``` purescript
newDescribeResourceGroupsResponse :: FailedItems -> ResourceGroupList -> DescribeResourceGroupsResponse
```

Constructs DescribeResourceGroupsResponse from required parameters

#### `newDescribeResourceGroupsResponse'`

``` purescript
newDescribeResourceGroupsResponse' :: FailedItems -> ResourceGroupList -> ({ resourceGroups :: ResourceGroupList, failedItems :: FailedItems } -> { resourceGroups :: ResourceGroupList, failedItems :: FailedItems }) -> DescribeResourceGroupsResponse
```

Constructs DescribeResourceGroupsResponse's fields from required parameters

#### `DescribeRulesPackagesRequest`

``` purescript
newtype DescribeRulesPackagesRequest
  = DescribeRulesPackagesRequest { rulesPackageArns :: BatchDescribeArnList, locale :: NullOrUndefined (Locale) }
```

##### Instances
``` purescript
Newtype DescribeRulesPackagesRequest _
Generic DescribeRulesPackagesRequest _
Show DescribeRulesPackagesRequest
Decode DescribeRulesPackagesRequest
Encode DescribeRulesPackagesRequest
```

#### `newDescribeRulesPackagesRequest`

``` purescript
newDescribeRulesPackagesRequest :: BatchDescribeArnList -> DescribeRulesPackagesRequest
```

Constructs DescribeRulesPackagesRequest from required parameters

#### `newDescribeRulesPackagesRequest'`

``` purescript
newDescribeRulesPackagesRequest' :: BatchDescribeArnList -> ({ rulesPackageArns :: BatchDescribeArnList, locale :: NullOrUndefined (Locale) } -> { rulesPackageArns :: BatchDescribeArnList, locale :: NullOrUndefined (Locale) }) -> DescribeRulesPackagesRequest
```

Constructs DescribeRulesPackagesRequest's fields from required parameters

#### `DescribeRulesPackagesResponse`

``` purescript
newtype DescribeRulesPackagesResponse
  = DescribeRulesPackagesResponse { rulesPackages :: RulesPackageList, failedItems :: FailedItems }
```

##### Instances
``` purescript
Newtype DescribeRulesPackagesResponse _
Generic DescribeRulesPackagesResponse _
Show DescribeRulesPackagesResponse
Decode DescribeRulesPackagesResponse
Encode DescribeRulesPackagesResponse
```

#### `newDescribeRulesPackagesResponse`

``` purescript
newDescribeRulesPackagesResponse :: FailedItems -> RulesPackageList -> DescribeRulesPackagesResponse
```

Constructs DescribeRulesPackagesResponse from required parameters

#### `newDescribeRulesPackagesResponse'`

``` purescript
newDescribeRulesPackagesResponse' :: FailedItems -> RulesPackageList -> ({ rulesPackages :: RulesPackageList, failedItems :: FailedItems } -> { rulesPackages :: RulesPackageList, failedItems :: FailedItems }) -> DescribeRulesPackagesResponse
```

Constructs DescribeRulesPackagesResponse's fields from required parameters

#### `DurationRange`

``` purescript
newtype DurationRange
  = DurationRange { minSeconds :: NullOrUndefined (AssessmentRunDuration), maxSeconds :: NullOrUndefined (AssessmentRunDuration) }
```

<p>This data type is used in the <a>AssessmentTemplateFilter</a> data type.</p>

##### Instances
``` purescript
Newtype DurationRange _
Generic DurationRange _
Show DurationRange
Decode DurationRange
Encode DurationRange
```

#### `newDurationRange`

``` purescript
newDurationRange :: DurationRange
```

Constructs DurationRange from required parameters

#### `newDurationRange'`

``` purescript
newDurationRange' :: ({ minSeconds :: NullOrUndefined (AssessmentRunDuration), maxSeconds :: NullOrUndefined (AssessmentRunDuration) } -> { minSeconds :: NullOrUndefined (AssessmentRunDuration), maxSeconds :: NullOrUndefined (AssessmentRunDuration) }) -> DurationRange
```

Constructs DurationRange's fields from required parameters

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `EventSubscription`

``` purescript
newtype EventSubscription
  = EventSubscription { event :: InspectorEvent, subscribedAt :: Timestamp }
```

<p>This data type is used in the <a>Subscription</a> data type.</p>

##### Instances
``` purescript
Newtype EventSubscription _
Generic EventSubscription _
Show EventSubscription
Decode EventSubscription
Encode EventSubscription
```

#### `newEventSubscription`

``` purescript
newEventSubscription :: InspectorEvent -> Timestamp -> EventSubscription
```

Constructs EventSubscription from required parameters

#### `newEventSubscription'`

``` purescript
newEventSubscription' :: InspectorEvent -> Timestamp -> ({ event :: InspectorEvent, subscribedAt :: Timestamp } -> { event :: InspectorEvent, subscribedAt :: Timestamp }) -> EventSubscription
```

Constructs EventSubscription's fields from required parameters

#### `EventSubscriptionList`

``` purescript
newtype EventSubscriptionList
  = EventSubscriptionList (Array EventSubscription)
```

##### Instances
``` purescript
Newtype EventSubscriptionList _
Generic EventSubscriptionList _
Show EventSubscriptionList
Decode EventSubscriptionList
Encode EventSubscriptionList
```

#### `FailedItemDetails`

``` purescript
newtype FailedItemDetails
  = FailedItemDetails { failureCode :: FailedItemErrorCode, retryable :: Bool }
```

<p>Includes details about the failed items.</p>

##### Instances
``` purescript
Newtype FailedItemDetails _
Generic FailedItemDetails _
Show FailedItemDetails
Decode FailedItemDetails
Encode FailedItemDetails
```

#### `newFailedItemDetails`

``` purescript
newFailedItemDetails :: FailedItemErrorCode -> Bool -> FailedItemDetails
```

Constructs FailedItemDetails from required parameters

#### `newFailedItemDetails'`

``` purescript
newFailedItemDetails' :: FailedItemErrorCode -> Bool -> ({ failureCode :: FailedItemErrorCode, retryable :: Bool } -> { failureCode :: FailedItemErrorCode, retryable :: Bool }) -> FailedItemDetails
```

Constructs FailedItemDetails's fields from required parameters

#### `FailedItemErrorCode`

``` purescript
newtype FailedItemErrorCode
  = FailedItemErrorCode String
```

##### Instances
``` purescript
Newtype FailedItemErrorCode _
Generic FailedItemErrorCode _
Show FailedItemErrorCode
Decode FailedItemErrorCode
Encode FailedItemErrorCode
```

#### `FailedItems`

``` purescript
newtype FailedItems
  = FailedItems (StrMap FailedItemDetails)
```

##### Instances
``` purescript
Newtype FailedItems _
Generic FailedItems _
Show FailedItems
Decode FailedItems
Encode FailedItems
```

#### `FilterRulesPackageArnList`

``` purescript
newtype FilterRulesPackageArnList
  = FilterRulesPackageArnList (Array Arn)
```

##### Instances
``` purescript
Newtype FilterRulesPackageArnList _
Generic FilterRulesPackageArnList _
Show FilterRulesPackageArnList
Decode FilterRulesPackageArnList
Encode FilterRulesPackageArnList
```

#### `Finding`

``` purescript
newtype Finding
  = Finding { arn :: Arn, schemaVersion :: NullOrUndefined (NumericVersion), service :: NullOrUndefined (ServiceName), serviceAttributes :: NullOrUndefined (InspectorServiceAttributes), assetType :: NullOrUndefined (AssetType), assetAttributes :: NullOrUndefined (AssetAttributes), id :: NullOrUndefined (FindingId), title :: NullOrUndefined (Text), description :: NullOrUndefined (Text), recommendation :: NullOrUndefined (Text), severity :: NullOrUndefined (Severity), numericSeverity :: NullOrUndefined (NumericSeverity), confidence :: NullOrUndefined (IocConfidence), indicatorOfCompromise :: NullOrUndefined (Bool), attributes :: AttributeList, userAttributes :: UserAttributeList, createdAt :: Timestamp, updatedAt :: Timestamp }
```

<p>Contains information about an Amazon Inspector finding. This data type is used as the response element in the <a>DescribeFindings</a> action.</p>

##### Instances
``` purescript
Newtype Finding _
Generic Finding _
Show Finding
Decode Finding
Encode Finding
```

#### `newFinding`

``` purescript
newFinding :: Arn -> AttributeList -> Timestamp -> Timestamp -> UserAttributeList -> Finding
```

Constructs Finding from required parameters

#### `newFinding'`

``` purescript
newFinding' :: Arn -> AttributeList -> Timestamp -> Timestamp -> UserAttributeList -> ({ arn :: Arn, schemaVersion :: NullOrUndefined (NumericVersion), service :: NullOrUndefined (ServiceName), serviceAttributes :: NullOrUndefined (InspectorServiceAttributes), assetType :: NullOrUndefined (AssetType), assetAttributes :: NullOrUndefined (AssetAttributes), id :: NullOrUndefined (FindingId), title :: NullOrUndefined (Text), description :: NullOrUndefined (Text), recommendation :: NullOrUndefined (Text), severity :: NullOrUndefined (Severity), numericSeverity :: NullOrUndefined (NumericSeverity), confidence :: NullOrUndefined (IocConfidence), indicatorOfCompromise :: NullOrUndefined (Bool), attributes :: AttributeList, userAttributes :: UserAttributeList, createdAt :: Timestamp, updatedAt :: Timestamp } -> { arn :: Arn, schemaVersion :: NullOrUndefined (NumericVersion), service :: NullOrUndefined (ServiceName), serviceAttributes :: NullOrUndefined (InspectorServiceAttributes), assetType :: NullOrUndefined (AssetType), assetAttributes :: NullOrUndefined (AssetAttributes), id :: NullOrUndefined (FindingId), title :: NullOrUndefined (Text), description :: NullOrUndefined (Text), recommendation :: NullOrUndefined (Text), severity :: NullOrUndefined (Severity), numericSeverity :: NullOrUndefined (NumericSeverity), confidence :: NullOrUndefined (IocConfidence), indicatorOfCompromise :: NullOrUndefined (Bool), attributes :: AttributeList, userAttributes :: UserAttributeList, createdAt :: Timestamp, updatedAt :: Timestamp }) -> Finding
```

Constructs Finding's fields from required parameters

#### `FindingCount`

``` purescript
newtype FindingCount
  = FindingCount Int
```

##### Instances
``` purescript
Newtype FindingCount _
Generic FindingCount _
Show FindingCount
Decode FindingCount
Encode FindingCount
```

#### `FindingFilter`

``` purescript
newtype FindingFilter
  = FindingFilter { agentIds :: NullOrUndefined (AgentIdList), autoScalingGroups :: NullOrUndefined (AutoScalingGroupList), ruleNames :: NullOrUndefined (RuleNameList), severities :: NullOrUndefined (SeverityList), rulesPackageArns :: NullOrUndefined (FilterRulesPackageArnList), attributes :: NullOrUndefined (AttributeList), userAttributes :: NullOrUndefined (AttributeList), creationTimeRange :: NullOrUndefined (TimestampRange) }
```

<p>This data type is used as a request parameter in the <a>ListFindings</a> action.</p>

##### Instances
``` purescript
Newtype FindingFilter _
Generic FindingFilter _
Show FindingFilter
Decode FindingFilter
Encode FindingFilter
```

#### `newFindingFilter`

``` purescript
newFindingFilter :: FindingFilter
```

Constructs FindingFilter from required parameters

#### `newFindingFilter'`

``` purescript
newFindingFilter' :: ({ agentIds :: NullOrUndefined (AgentIdList), autoScalingGroups :: NullOrUndefined (AutoScalingGroupList), ruleNames :: NullOrUndefined (RuleNameList), severities :: NullOrUndefined (SeverityList), rulesPackageArns :: NullOrUndefined (FilterRulesPackageArnList), attributes :: NullOrUndefined (AttributeList), userAttributes :: NullOrUndefined (AttributeList), creationTimeRange :: NullOrUndefined (TimestampRange) } -> { agentIds :: NullOrUndefined (AgentIdList), autoScalingGroups :: NullOrUndefined (AutoScalingGroupList), ruleNames :: NullOrUndefined (RuleNameList), severities :: NullOrUndefined (SeverityList), rulesPackageArns :: NullOrUndefined (FilterRulesPackageArnList), attributes :: NullOrUndefined (AttributeList), userAttributes :: NullOrUndefined (AttributeList), creationTimeRange :: NullOrUndefined (TimestampRange) }) -> FindingFilter
```

Constructs FindingFilter's fields from required parameters

#### `FindingId`

``` purescript
newtype FindingId
  = FindingId String
```

##### Instances
``` purescript
Newtype FindingId _
Generic FindingId _
Show FindingId
Decode FindingId
Encode FindingId
```

#### `FindingList`

``` purescript
newtype FindingList
  = FindingList (Array Finding)
```

##### Instances
``` purescript
Newtype FindingList _
Generic FindingList _
Show FindingList
Decode FindingList
Encode FindingList
```

#### `GetAssessmentReportRequest`

``` purescript
newtype GetAssessmentReportRequest
  = GetAssessmentReportRequest { assessmentRunArn :: Arn, reportFileFormat :: ReportFileFormat, reportType :: ReportType }
```

##### Instances
``` purescript
Newtype GetAssessmentReportRequest _
Generic GetAssessmentReportRequest _
Show GetAssessmentReportRequest
Decode GetAssessmentReportRequest
Encode GetAssessmentReportRequest
```

#### `newGetAssessmentReportRequest`

``` purescript
newGetAssessmentReportRequest :: Arn -> ReportFileFormat -> ReportType -> GetAssessmentReportRequest
```

Constructs GetAssessmentReportRequest from required parameters

#### `newGetAssessmentReportRequest'`

``` purescript
newGetAssessmentReportRequest' :: Arn -> ReportFileFormat -> ReportType -> ({ assessmentRunArn :: Arn, reportFileFormat :: ReportFileFormat, reportType :: ReportType } -> { assessmentRunArn :: Arn, reportFileFormat :: ReportFileFormat, reportType :: ReportType }) -> GetAssessmentReportRequest
```

Constructs GetAssessmentReportRequest's fields from required parameters

#### `GetAssessmentReportResponse`

``` purescript
newtype GetAssessmentReportResponse
  = GetAssessmentReportResponse { status :: ReportStatus, url :: NullOrUndefined (Url) }
```

##### Instances
``` purescript
Newtype GetAssessmentReportResponse _
Generic GetAssessmentReportResponse _
Show GetAssessmentReportResponse
Decode GetAssessmentReportResponse
Encode GetAssessmentReportResponse
```

#### `newGetAssessmentReportResponse`

``` purescript
newGetAssessmentReportResponse :: ReportStatus -> GetAssessmentReportResponse
```

Constructs GetAssessmentReportResponse from required parameters

#### `newGetAssessmentReportResponse'`

``` purescript
newGetAssessmentReportResponse' :: ReportStatus -> ({ status :: ReportStatus, url :: NullOrUndefined (Url) } -> { status :: ReportStatus, url :: NullOrUndefined (Url) }) -> GetAssessmentReportResponse
```

Constructs GetAssessmentReportResponse's fields from required parameters

#### `GetTelemetryMetadataRequest`

``` purescript
newtype GetTelemetryMetadataRequest
  = GetTelemetryMetadataRequest { assessmentRunArn :: Arn }
```

##### Instances
``` purescript
Newtype GetTelemetryMetadataRequest _
Generic GetTelemetryMetadataRequest _
Show GetTelemetryMetadataRequest
Decode GetTelemetryMetadataRequest
Encode GetTelemetryMetadataRequest
```

#### `newGetTelemetryMetadataRequest`

``` purescript
newGetTelemetryMetadataRequest :: Arn -> GetTelemetryMetadataRequest
```

Constructs GetTelemetryMetadataRequest from required parameters

#### `newGetTelemetryMetadataRequest'`

``` purescript
newGetTelemetryMetadataRequest' :: Arn -> ({ assessmentRunArn :: Arn } -> { assessmentRunArn :: Arn }) -> GetTelemetryMetadataRequest
```

Constructs GetTelemetryMetadataRequest's fields from required parameters

#### `GetTelemetryMetadataResponse`

``` purescript
newtype GetTelemetryMetadataResponse
  = GetTelemetryMetadataResponse { telemetryMetadata :: TelemetryMetadataList }
```

##### Instances
``` purescript
Newtype GetTelemetryMetadataResponse _
Generic GetTelemetryMetadataResponse _
Show GetTelemetryMetadataResponse
Decode GetTelemetryMetadataResponse
Encode GetTelemetryMetadataResponse
```

#### `newGetTelemetryMetadataResponse`

``` purescript
newGetTelemetryMetadataResponse :: TelemetryMetadataList -> GetTelemetryMetadataResponse
```

Constructs GetTelemetryMetadataResponse from required parameters

#### `newGetTelemetryMetadataResponse'`

``` purescript
newGetTelemetryMetadataResponse' :: TelemetryMetadataList -> ({ telemetryMetadata :: TelemetryMetadataList } -> { telemetryMetadata :: TelemetryMetadataList }) -> GetTelemetryMetadataResponse
```

Constructs GetTelemetryMetadataResponse's fields from required parameters

#### `Hostname`

``` purescript
newtype Hostname
  = Hostname String
```

##### Instances
``` purescript
Newtype Hostname _
Generic Hostname _
Show Hostname
Decode Hostname
Encode Hostname
```

#### `InspectorEvent`

``` purescript
newtype InspectorEvent
  = InspectorEvent String
```

##### Instances
``` purescript
Newtype InspectorEvent _
Generic InspectorEvent _
Show InspectorEvent
Decode InspectorEvent
Encode InspectorEvent
```

#### `InspectorServiceAttributes`

``` purescript
newtype InspectorServiceAttributes
  = InspectorServiceAttributes { schemaVersion :: NumericVersion, assessmentRunArn :: NullOrUndefined (Arn), rulesPackageArn :: NullOrUndefined (Arn) }
```

<p>This data type is used in the <a>Finding</a> data type.</p>

##### Instances
``` purescript
Newtype InspectorServiceAttributes _
Generic InspectorServiceAttributes _
Show InspectorServiceAttributes
Decode InspectorServiceAttributes
Encode InspectorServiceAttributes
```

#### `newInspectorServiceAttributes`

``` purescript
newInspectorServiceAttributes :: NumericVersion -> InspectorServiceAttributes
```

Constructs InspectorServiceAttributes from required parameters

#### `newInspectorServiceAttributes'`

``` purescript
newInspectorServiceAttributes' :: NumericVersion -> ({ schemaVersion :: NumericVersion, assessmentRunArn :: NullOrUndefined (Arn), rulesPackageArn :: NullOrUndefined (Arn) } -> { schemaVersion :: NumericVersion, assessmentRunArn :: NullOrUndefined (Arn), rulesPackageArn :: NullOrUndefined (Arn) }) -> InspectorServiceAttributes
```

Constructs InspectorServiceAttributes's fields from required parameters

#### `InternalException`

``` purescript
newtype InternalException
  = InternalException { message :: ErrorMessage, canRetry :: Bool }
```

<p>Internal server error.</p>

##### Instances
``` purescript
Newtype InternalException _
Generic InternalException _
Show InternalException
Decode InternalException
Encode InternalException
```

#### `newInternalException`

``` purescript
newInternalException :: Bool -> ErrorMessage -> InternalException
```

Constructs InternalException from required parameters

#### `newInternalException'`

``` purescript
newInternalException' :: Bool -> ErrorMessage -> ({ message :: ErrorMessage, canRetry :: Bool } -> { message :: ErrorMessage, canRetry :: Bool }) -> InternalException
```

Constructs InternalException's fields from required parameters

#### `InvalidCrossAccountRoleErrorCode`

``` purescript
newtype InvalidCrossAccountRoleErrorCode
  = InvalidCrossAccountRoleErrorCode String
```

##### Instances
``` purescript
Newtype InvalidCrossAccountRoleErrorCode _
Generic InvalidCrossAccountRoleErrorCode _
Show InvalidCrossAccountRoleErrorCode
Decode InvalidCrossAccountRoleErrorCode
Encode InvalidCrossAccountRoleErrorCode
```

#### `InvalidCrossAccountRoleException`

``` purescript
newtype InvalidCrossAccountRoleException
  = InvalidCrossAccountRoleException { message :: ErrorMessage, errorCode :: InvalidCrossAccountRoleErrorCode, canRetry :: Bool }
```

<p>Amazon Inspector cannot assume the cross-account role that it needs to list your EC2 instances during the assessment run.</p>

##### Instances
``` purescript
Newtype InvalidCrossAccountRoleException _
Generic InvalidCrossAccountRoleException _
Show InvalidCrossAccountRoleException
Decode InvalidCrossAccountRoleException
Encode InvalidCrossAccountRoleException
```

#### `newInvalidCrossAccountRoleException`

``` purescript
newInvalidCrossAccountRoleException :: Bool -> InvalidCrossAccountRoleErrorCode -> ErrorMessage -> InvalidCrossAccountRoleException
```

Constructs InvalidCrossAccountRoleException from required parameters

#### `newInvalidCrossAccountRoleException'`

``` purescript
newInvalidCrossAccountRoleException' :: Bool -> InvalidCrossAccountRoleErrorCode -> ErrorMessage -> ({ message :: ErrorMessage, errorCode :: InvalidCrossAccountRoleErrorCode, canRetry :: Bool } -> { message :: ErrorMessage, errorCode :: InvalidCrossAccountRoleErrorCode, canRetry :: Bool }) -> InvalidCrossAccountRoleException
```

Constructs InvalidCrossAccountRoleException's fields from required parameters

#### `InvalidInputErrorCode`

``` purescript
newtype InvalidInputErrorCode
  = InvalidInputErrorCode String
```

##### Instances
``` purescript
Newtype InvalidInputErrorCode _
Generic InvalidInputErrorCode _
Show InvalidInputErrorCode
Decode InvalidInputErrorCode
Encode InvalidInputErrorCode
```

#### `InvalidInputException`

``` purescript
newtype InvalidInputException
  = InvalidInputException { message :: ErrorMessage, errorCode :: InvalidInputErrorCode, canRetry :: Bool }
```

<p>The request was rejected because an invalid or out-of-range value was supplied for an input parameter.</p>

##### Instances
``` purescript
Newtype InvalidInputException _
Generic InvalidInputException _
Show InvalidInputException
Decode InvalidInputException
Encode InvalidInputException
```

#### `newInvalidInputException`

``` purescript
newInvalidInputException :: Bool -> InvalidInputErrorCode -> ErrorMessage -> InvalidInputException
```

Constructs InvalidInputException from required parameters

#### `newInvalidInputException'`

``` purescript
newInvalidInputException' :: Bool -> InvalidInputErrorCode -> ErrorMessage -> ({ message :: ErrorMessage, errorCode :: InvalidInputErrorCode, canRetry :: Bool } -> { message :: ErrorMessage, errorCode :: InvalidInputErrorCode, canRetry :: Bool }) -> InvalidInputException
```

Constructs InvalidInputException's fields from required parameters

#### `IocConfidence`

``` purescript
newtype IocConfidence
  = IocConfidence Int
```

##### Instances
``` purescript
Newtype IocConfidence _
Generic IocConfidence _
Show IocConfidence
Decode IocConfidence
Encode IocConfidence
```

#### `Ipv4Address`

``` purescript
newtype Ipv4Address
  = Ipv4Address String
```

##### Instances
``` purescript
Newtype Ipv4Address _
Generic Ipv4Address _
Show Ipv4Address
Decode Ipv4Address
Encode Ipv4Address
```

#### `Ipv4AddressList`

``` purescript
newtype Ipv4AddressList
  = Ipv4AddressList (Array Ipv4Address)
```

##### Instances
``` purescript
Newtype Ipv4AddressList _
Generic Ipv4AddressList _
Show Ipv4AddressList
Decode Ipv4AddressList
Encode Ipv4AddressList
```

#### `KernelVersion`

``` purescript
newtype KernelVersion
  = KernelVersion String
```

##### Instances
``` purescript
Newtype KernelVersion _
Generic KernelVersion _
Show KernelVersion
Decode KernelVersion
Encode KernelVersion
```

#### `LimitExceededErrorCode`

``` purescript
newtype LimitExceededErrorCode
  = LimitExceededErrorCode String
```

##### Instances
``` purescript
Newtype LimitExceededErrorCode _
Generic LimitExceededErrorCode _
Show LimitExceededErrorCode
Decode LimitExceededErrorCode
Encode LimitExceededErrorCode
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: ErrorMessage, errorCode :: LimitExceededErrorCode, canRetry :: Bool }
```

<p>The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: Bool -> LimitExceededErrorCode -> ErrorMessage -> LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: Bool -> LimitExceededErrorCode -> ErrorMessage -> ({ message :: ErrorMessage, errorCode :: LimitExceededErrorCode, canRetry :: Bool } -> { message :: ErrorMessage, errorCode :: LimitExceededErrorCode, canRetry :: Bool }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListAssessmentRunAgentsRequest`

``` purescript
newtype ListAssessmentRunAgentsRequest
  = ListAssessmentRunAgentsRequest { assessmentRunArn :: Arn, filter :: NullOrUndefined (AgentFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) }
```

##### Instances
``` purescript
Newtype ListAssessmentRunAgentsRequest _
Generic ListAssessmentRunAgentsRequest _
Show ListAssessmentRunAgentsRequest
Decode ListAssessmentRunAgentsRequest
Encode ListAssessmentRunAgentsRequest
```

#### `newListAssessmentRunAgentsRequest`

``` purescript
newListAssessmentRunAgentsRequest :: Arn -> ListAssessmentRunAgentsRequest
```

Constructs ListAssessmentRunAgentsRequest from required parameters

#### `newListAssessmentRunAgentsRequest'`

``` purescript
newListAssessmentRunAgentsRequest' :: Arn -> ({ assessmentRunArn :: Arn, filter :: NullOrUndefined (AgentFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) } -> { assessmentRunArn :: Arn, filter :: NullOrUndefined (AgentFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) }) -> ListAssessmentRunAgentsRequest
```

Constructs ListAssessmentRunAgentsRequest's fields from required parameters

#### `ListAssessmentRunAgentsResponse`

``` purescript
newtype ListAssessmentRunAgentsResponse
  = ListAssessmentRunAgentsResponse { assessmentRunAgents :: AssessmentRunAgentList, nextToken :: NullOrUndefined (PaginationToken) }
```

##### Instances
``` purescript
Newtype ListAssessmentRunAgentsResponse _
Generic ListAssessmentRunAgentsResponse _
Show ListAssessmentRunAgentsResponse
Decode ListAssessmentRunAgentsResponse
Encode ListAssessmentRunAgentsResponse
```

#### `newListAssessmentRunAgentsResponse`

``` purescript
newListAssessmentRunAgentsResponse :: AssessmentRunAgentList -> ListAssessmentRunAgentsResponse
```

Constructs ListAssessmentRunAgentsResponse from required parameters

#### `newListAssessmentRunAgentsResponse'`

``` purescript
newListAssessmentRunAgentsResponse' :: AssessmentRunAgentList -> ({ assessmentRunAgents :: AssessmentRunAgentList, nextToken :: NullOrUndefined (PaginationToken) } -> { assessmentRunAgents :: AssessmentRunAgentList, nextToken :: NullOrUndefined (PaginationToken) }) -> ListAssessmentRunAgentsResponse
```

Constructs ListAssessmentRunAgentsResponse's fields from required parameters

#### `ListAssessmentRunsRequest`

``` purescript
newtype ListAssessmentRunsRequest
  = ListAssessmentRunsRequest { assessmentTemplateArns :: NullOrUndefined (ListParentArnList), filter :: NullOrUndefined (AssessmentRunFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) }
```

##### Instances
``` purescript
Newtype ListAssessmentRunsRequest _
Generic ListAssessmentRunsRequest _
Show ListAssessmentRunsRequest
Decode ListAssessmentRunsRequest
Encode ListAssessmentRunsRequest
```

#### `newListAssessmentRunsRequest`

``` purescript
newListAssessmentRunsRequest :: ListAssessmentRunsRequest
```

Constructs ListAssessmentRunsRequest from required parameters

#### `newListAssessmentRunsRequest'`

``` purescript
newListAssessmentRunsRequest' :: ({ assessmentTemplateArns :: NullOrUndefined (ListParentArnList), filter :: NullOrUndefined (AssessmentRunFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) } -> { assessmentTemplateArns :: NullOrUndefined (ListParentArnList), filter :: NullOrUndefined (AssessmentRunFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) }) -> ListAssessmentRunsRequest
```

Constructs ListAssessmentRunsRequest's fields from required parameters

#### `ListAssessmentRunsResponse`

``` purescript
newtype ListAssessmentRunsResponse
  = ListAssessmentRunsResponse { assessmentRunArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) }
```

##### Instances
``` purescript
Newtype ListAssessmentRunsResponse _
Generic ListAssessmentRunsResponse _
Show ListAssessmentRunsResponse
Decode ListAssessmentRunsResponse
Encode ListAssessmentRunsResponse
```

#### `newListAssessmentRunsResponse`

``` purescript
newListAssessmentRunsResponse :: ListReturnedArnList -> ListAssessmentRunsResponse
```

Constructs ListAssessmentRunsResponse from required parameters

#### `newListAssessmentRunsResponse'`

``` purescript
newListAssessmentRunsResponse' :: ListReturnedArnList -> ({ assessmentRunArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) } -> { assessmentRunArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) }) -> ListAssessmentRunsResponse
```

Constructs ListAssessmentRunsResponse's fields from required parameters

#### `ListAssessmentTargetsRequest`

``` purescript
newtype ListAssessmentTargetsRequest
  = ListAssessmentTargetsRequest { filter :: NullOrUndefined (AssessmentTargetFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) }
```

##### Instances
``` purescript
Newtype ListAssessmentTargetsRequest _
Generic ListAssessmentTargetsRequest _
Show ListAssessmentTargetsRequest
Decode ListAssessmentTargetsRequest
Encode ListAssessmentTargetsRequest
```

#### `newListAssessmentTargetsRequest`

``` purescript
newListAssessmentTargetsRequest :: ListAssessmentTargetsRequest
```

Constructs ListAssessmentTargetsRequest from required parameters

#### `newListAssessmentTargetsRequest'`

``` purescript
newListAssessmentTargetsRequest' :: ({ filter :: NullOrUndefined (AssessmentTargetFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) } -> { filter :: NullOrUndefined (AssessmentTargetFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) }) -> ListAssessmentTargetsRequest
```

Constructs ListAssessmentTargetsRequest's fields from required parameters

#### `ListAssessmentTargetsResponse`

``` purescript
newtype ListAssessmentTargetsResponse
  = ListAssessmentTargetsResponse { assessmentTargetArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) }
```

##### Instances
``` purescript
Newtype ListAssessmentTargetsResponse _
Generic ListAssessmentTargetsResponse _
Show ListAssessmentTargetsResponse
Decode ListAssessmentTargetsResponse
Encode ListAssessmentTargetsResponse
```

#### `newListAssessmentTargetsResponse`

``` purescript
newListAssessmentTargetsResponse :: ListReturnedArnList -> ListAssessmentTargetsResponse
```

Constructs ListAssessmentTargetsResponse from required parameters

#### `newListAssessmentTargetsResponse'`

``` purescript
newListAssessmentTargetsResponse' :: ListReturnedArnList -> ({ assessmentTargetArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) } -> { assessmentTargetArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) }) -> ListAssessmentTargetsResponse
```

Constructs ListAssessmentTargetsResponse's fields from required parameters

#### `ListAssessmentTemplatesRequest`

``` purescript
newtype ListAssessmentTemplatesRequest
  = ListAssessmentTemplatesRequest { assessmentTargetArns :: NullOrUndefined (ListParentArnList), filter :: NullOrUndefined (AssessmentTemplateFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) }
```

##### Instances
``` purescript
Newtype ListAssessmentTemplatesRequest _
Generic ListAssessmentTemplatesRequest _
Show ListAssessmentTemplatesRequest
Decode ListAssessmentTemplatesRequest
Encode ListAssessmentTemplatesRequest
```

#### `newListAssessmentTemplatesRequest`

``` purescript
newListAssessmentTemplatesRequest :: ListAssessmentTemplatesRequest
```

Constructs ListAssessmentTemplatesRequest from required parameters

#### `newListAssessmentTemplatesRequest'`

``` purescript
newListAssessmentTemplatesRequest' :: ({ assessmentTargetArns :: NullOrUndefined (ListParentArnList), filter :: NullOrUndefined (AssessmentTemplateFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) } -> { assessmentTargetArns :: NullOrUndefined (ListParentArnList), filter :: NullOrUndefined (AssessmentTemplateFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) }) -> ListAssessmentTemplatesRequest
```

Constructs ListAssessmentTemplatesRequest's fields from required parameters

#### `ListAssessmentTemplatesResponse`

``` purescript
newtype ListAssessmentTemplatesResponse
  = ListAssessmentTemplatesResponse { assessmentTemplateArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) }
```

##### Instances
``` purescript
Newtype ListAssessmentTemplatesResponse _
Generic ListAssessmentTemplatesResponse _
Show ListAssessmentTemplatesResponse
Decode ListAssessmentTemplatesResponse
Encode ListAssessmentTemplatesResponse
```

#### `newListAssessmentTemplatesResponse`

``` purescript
newListAssessmentTemplatesResponse :: ListReturnedArnList -> ListAssessmentTemplatesResponse
```

Constructs ListAssessmentTemplatesResponse from required parameters

#### `newListAssessmentTemplatesResponse'`

``` purescript
newListAssessmentTemplatesResponse' :: ListReturnedArnList -> ({ assessmentTemplateArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) } -> { assessmentTemplateArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) }) -> ListAssessmentTemplatesResponse
```

Constructs ListAssessmentTemplatesResponse's fields from required parameters

#### `ListEventSubscriptionsMaxResults`

``` purescript
newtype ListEventSubscriptionsMaxResults
  = ListEventSubscriptionsMaxResults Int
```

##### Instances
``` purescript
Newtype ListEventSubscriptionsMaxResults _
Generic ListEventSubscriptionsMaxResults _
Show ListEventSubscriptionsMaxResults
Decode ListEventSubscriptionsMaxResults
Encode ListEventSubscriptionsMaxResults
```

#### `ListEventSubscriptionsRequest`

``` purescript
newtype ListEventSubscriptionsRequest
  = ListEventSubscriptionsRequest { resourceArn :: NullOrUndefined (Arn), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListEventSubscriptionsMaxResults) }
```

##### Instances
``` purescript
Newtype ListEventSubscriptionsRequest _
Generic ListEventSubscriptionsRequest _
Show ListEventSubscriptionsRequest
Decode ListEventSubscriptionsRequest
Encode ListEventSubscriptionsRequest
```

#### `newListEventSubscriptionsRequest`

``` purescript
newListEventSubscriptionsRequest :: ListEventSubscriptionsRequest
```

Constructs ListEventSubscriptionsRequest from required parameters

#### `newListEventSubscriptionsRequest'`

``` purescript
newListEventSubscriptionsRequest' :: ({ resourceArn :: NullOrUndefined (Arn), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListEventSubscriptionsMaxResults) } -> { resourceArn :: NullOrUndefined (Arn), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListEventSubscriptionsMaxResults) }) -> ListEventSubscriptionsRequest
```

Constructs ListEventSubscriptionsRequest's fields from required parameters

#### `ListEventSubscriptionsResponse`

``` purescript
newtype ListEventSubscriptionsResponse
  = ListEventSubscriptionsResponse { subscriptions :: SubscriptionList, nextToken :: NullOrUndefined (PaginationToken) }
```

##### Instances
``` purescript
Newtype ListEventSubscriptionsResponse _
Generic ListEventSubscriptionsResponse _
Show ListEventSubscriptionsResponse
Decode ListEventSubscriptionsResponse
Encode ListEventSubscriptionsResponse
```

#### `newListEventSubscriptionsResponse`

``` purescript
newListEventSubscriptionsResponse :: SubscriptionList -> ListEventSubscriptionsResponse
```

Constructs ListEventSubscriptionsResponse from required parameters

#### `newListEventSubscriptionsResponse'`

``` purescript
newListEventSubscriptionsResponse' :: SubscriptionList -> ({ subscriptions :: SubscriptionList, nextToken :: NullOrUndefined (PaginationToken) } -> { subscriptions :: SubscriptionList, nextToken :: NullOrUndefined (PaginationToken) }) -> ListEventSubscriptionsResponse
```

Constructs ListEventSubscriptionsResponse's fields from required parameters

#### `ListFindingsRequest`

``` purescript
newtype ListFindingsRequest
  = ListFindingsRequest { assessmentRunArns :: NullOrUndefined (ListParentArnList), filter :: NullOrUndefined (FindingFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) }
```

##### Instances
``` purescript
Newtype ListFindingsRequest _
Generic ListFindingsRequest _
Show ListFindingsRequest
Decode ListFindingsRequest
Encode ListFindingsRequest
```

#### `newListFindingsRequest`

``` purescript
newListFindingsRequest :: ListFindingsRequest
```

Constructs ListFindingsRequest from required parameters

#### `newListFindingsRequest'`

``` purescript
newListFindingsRequest' :: ({ assessmentRunArns :: NullOrUndefined (ListParentArnList), filter :: NullOrUndefined (FindingFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) } -> { assessmentRunArns :: NullOrUndefined (ListParentArnList), filter :: NullOrUndefined (FindingFilter), nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) }) -> ListFindingsRequest
```

Constructs ListFindingsRequest's fields from required parameters

#### `ListFindingsResponse`

``` purescript
newtype ListFindingsResponse
  = ListFindingsResponse { findingArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) }
```

##### Instances
``` purescript
Newtype ListFindingsResponse _
Generic ListFindingsResponse _
Show ListFindingsResponse
Decode ListFindingsResponse
Encode ListFindingsResponse
```

#### `newListFindingsResponse`

``` purescript
newListFindingsResponse :: ListReturnedArnList -> ListFindingsResponse
```

Constructs ListFindingsResponse from required parameters

#### `newListFindingsResponse'`

``` purescript
newListFindingsResponse' :: ListReturnedArnList -> ({ findingArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) } -> { findingArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) }) -> ListFindingsResponse
```

Constructs ListFindingsResponse's fields from required parameters

#### `ListMaxResults`

``` purescript
newtype ListMaxResults
  = ListMaxResults Int
```

##### Instances
``` purescript
Newtype ListMaxResults _
Generic ListMaxResults _
Show ListMaxResults
Decode ListMaxResults
Encode ListMaxResults
```

#### `ListParentArnList`

``` purescript
newtype ListParentArnList
  = ListParentArnList (Array Arn)
```

##### Instances
``` purescript
Newtype ListParentArnList _
Generic ListParentArnList _
Show ListParentArnList
Decode ListParentArnList
Encode ListParentArnList
```

#### `ListReturnedArnList`

``` purescript
newtype ListReturnedArnList
  = ListReturnedArnList (Array Arn)
```

##### Instances
``` purescript
Newtype ListReturnedArnList _
Generic ListReturnedArnList _
Show ListReturnedArnList
Decode ListReturnedArnList
Encode ListReturnedArnList
```

#### `ListRulesPackagesRequest`

``` purescript
newtype ListRulesPackagesRequest
  = ListRulesPackagesRequest { nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) }
```

##### Instances
``` purescript
Newtype ListRulesPackagesRequest _
Generic ListRulesPackagesRequest _
Show ListRulesPackagesRequest
Decode ListRulesPackagesRequest
Encode ListRulesPackagesRequest
```

#### `newListRulesPackagesRequest`

``` purescript
newListRulesPackagesRequest :: ListRulesPackagesRequest
```

Constructs ListRulesPackagesRequest from required parameters

#### `newListRulesPackagesRequest'`

``` purescript
newListRulesPackagesRequest' :: ({ nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) } -> { nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (ListMaxResults) }) -> ListRulesPackagesRequest
```

Constructs ListRulesPackagesRequest's fields from required parameters

#### `ListRulesPackagesResponse`

``` purescript
newtype ListRulesPackagesResponse
  = ListRulesPackagesResponse { rulesPackageArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) }
```

##### Instances
``` purescript
Newtype ListRulesPackagesResponse _
Generic ListRulesPackagesResponse _
Show ListRulesPackagesResponse
Decode ListRulesPackagesResponse
Encode ListRulesPackagesResponse
```

#### `newListRulesPackagesResponse`

``` purescript
newListRulesPackagesResponse :: ListReturnedArnList -> ListRulesPackagesResponse
```

Constructs ListRulesPackagesResponse from required parameters

#### `newListRulesPackagesResponse'`

``` purescript
newListRulesPackagesResponse' :: ListReturnedArnList -> ({ rulesPackageArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) } -> { rulesPackageArns :: ListReturnedArnList, nextToken :: NullOrUndefined (PaginationToken) }) -> ListRulesPackagesResponse
```

Constructs ListRulesPackagesResponse's fields from required parameters

#### `ListTagsForResourceRequest`

``` purescript
newtype ListTagsForResourceRequest
  = ListTagsForResourceRequest { resourceArn :: Arn }
```

##### Instances
``` purescript
Newtype ListTagsForResourceRequest _
Generic ListTagsForResourceRequest _
Show ListTagsForResourceRequest
Decode ListTagsForResourceRequest
Encode ListTagsForResourceRequest
```

#### `newListTagsForResourceRequest`

``` purescript
newListTagsForResourceRequest :: Arn -> ListTagsForResourceRequest
```

Constructs ListTagsForResourceRequest from required parameters

#### `newListTagsForResourceRequest'`

``` purescript
newListTagsForResourceRequest' :: Arn -> ({ resourceArn :: Arn } -> { resourceArn :: Arn }) -> ListTagsForResourceRequest
```

Constructs ListTagsForResourceRequest's fields from required parameters

#### `ListTagsForResourceResponse`

``` purescript
newtype ListTagsForResourceResponse
  = ListTagsForResourceResponse { tags :: TagList }
```

##### Instances
``` purescript
Newtype ListTagsForResourceResponse _
Generic ListTagsForResourceResponse _
Show ListTagsForResourceResponse
Decode ListTagsForResourceResponse
Encode ListTagsForResourceResponse
```

#### `newListTagsForResourceResponse`

``` purescript
newListTagsForResourceResponse :: TagList -> ListTagsForResourceResponse
```

Constructs ListTagsForResourceResponse from required parameters

#### `newListTagsForResourceResponse'`

``` purescript
newListTagsForResourceResponse' :: TagList -> ({ tags :: TagList } -> { tags :: TagList }) -> ListTagsForResourceResponse
```

Constructs ListTagsForResourceResponse's fields from required parameters

#### `Locale`

``` purescript
newtype Locale
  = Locale String
```

##### Instances
``` purescript
Newtype Locale _
Generic Locale _
Show Locale
Decode Locale
Encode Locale
```

#### `Message`

``` purescript
newtype Message
  = Message String
```

##### Instances
``` purescript
Newtype Message _
Generic Message _
Show Message
Decode Message
Encode Message
```

#### `MessageType`

``` purescript
newtype MessageType
  = MessageType String
```

##### Instances
``` purescript
Newtype MessageType _
Generic MessageType _
Show MessageType
Decode MessageType
Encode MessageType
```

#### `NamePattern`

``` purescript
newtype NamePattern
  = NamePattern String
```

##### Instances
``` purescript
Newtype NamePattern _
Generic NamePattern _
Show NamePattern
Decode NamePattern
Encode NamePattern
```

#### `NoSuchEntityErrorCode`

``` purescript
newtype NoSuchEntityErrorCode
  = NoSuchEntityErrorCode String
```

##### Instances
``` purescript
Newtype NoSuchEntityErrorCode _
Generic NoSuchEntityErrorCode _
Show NoSuchEntityErrorCode
Decode NoSuchEntityErrorCode
Encode NoSuchEntityErrorCode
```

#### `NoSuchEntityException`

``` purescript
newtype NoSuchEntityException
  = NoSuchEntityException { message :: ErrorMessage, errorCode :: NoSuchEntityErrorCode, canRetry :: Bool }
```

<p>The request was rejected because it referenced an entity that does not exist. The error code describes the entity.</p>

##### Instances
``` purescript
Newtype NoSuchEntityException _
Generic NoSuchEntityException _
Show NoSuchEntityException
Decode NoSuchEntityException
Encode NoSuchEntityException
```

#### `newNoSuchEntityException`

``` purescript
newNoSuchEntityException :: Bool -> NoSuchEntityErrorCode -> ErrorMessage -> NoSuchEntityException
```

Constructs NoSuchEntityException from required parameters

#### `newNoSuchEntityException'`

``` purescript
newNoSuchEntityException' :: Bool -> NoSuchEntityErrorCode -> ErrorMessage -> ({ message :: ErrorMessage, errorCode :: NoSuchEntityErrorCode, canRetry :: Bool } -> { message :: ErrorMessage, errorCode :: NoSuchEntityErrorCode, canRetry :: Bool }) -> NoSuchEntityException
```

Constructs NoSuchEntityException's fields from required parameters

#### `NumericSeverity`

``` purescript
newtype NumericSeverity
  = NumericSeverity Number
```

##### Instances
``` purescript
Newtype NumericSeverity _
Generic NumericSeverity _
Show NumericSeverity
Decode NumericSeverity
Encode NumericSeverity
```

#### `NumericVersion`

``` purescript
newtype NumericVersion
  = NumericVersion Int
```

##### Instances
``` purescript
Newtype NumericVersion _
Generic NumericVersion _
Show NumericVersion
Decode NumericVersion
Encode NumericVersion
```

#### `OperatingSystem`

``` purescript
newtype OperatingSystem
  = OperatingSystem String
```

##### Instances
``` purescript
Newtype OperatingSystem _
Generic OperatingSystem _
Show OperatingSystem
Decode OperatingSystem
Encode OperatingSystem
```

#### `PaginationToken`

``` purescript
newtype PaginationToken
  = PaginationToken String
```

##### Instances
``` purescript
Newtype PaginationToken _
Generic PaginationToken _
Show PaginationToken
Decode PaginationToken
Encode PaginationToken
```

#### `PreviewAgentsMaxResults`

``` purescript
newtype PreviewAgentsMaxResults
  = PreviewAgentsMaxResults Int
```

##### Instances
``` purescript
Newtype PreviewAgentsMaxResults _
Generic PreviewAgentsMaxResults _
Show PreviewAgentsMaxResults
Decode PreviewAgentsMaxResults
Encode PreviewAgentsMaxResults
```

#### `PreviewAgentsRequest`

``` purescript
newtype PreviewAgentsRequest
  = PreviewAgentsRequest { previewAgentsArn :: Arn, nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (PreviewAgentsMaxResults) }
```

##### Instances
``` purescript
Newtype PreviewAgentsRequest _
Generic PreviewAgentsRequest _
Show PreviewAgentsRequest
Decode PreviewAgentsRequest
Encode PreviewAgentsRequest
```

#### `newPreviewAgentsRequest`

``` purescript
newPreviewAgentsRequest :: Arn -> PreviewAgentsRequest
```

Constructs PreviewAgentsRequest from required parameters

#### `newPreviewAgentsRequest'`

``` purescript
newPreviewAgentsRequest' :: Arn -> ({ previewAgentsArn :: Arn, nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (PreviewAgentsMaxResults) } -> { previewAgentsArn :: Arn, nextToken :: NullOrUndefined (PaginationToken), maxResults :: NullOrUndefined (PreviewAgentsMaxResults) }) -> PreviewAgentsRequest
```

Constructs PreviewAgentsRequest's fields from required parameters

#### `PreviewAgentsResponse`

``` purescript
newtype PreviewAgentsResponse
  = PreviewAgentsResponse { agentPreviews :: AgentPreviewList, nextToken :: NullOrUndefined (PaginationToken) }
```

##### Instances
``` purescript
Newtype PreviewAgentsResponse _
Generic PreviewAgentsResponse _
Show PreviewAgentsResponse
Decode PreviewAgentsResponse
Encode PreviewAgentsResponse
```

#### `newPreviewAgentsResponse`

``` purescript
newPreviewAgentsResponse :: AgentPreviewList -> PreviewAgentsResponse
```

Constructs PreviewAgentsResponse from required parameters

#### `newPreviewAgentsResponse'`

``` purescript
newPreviewAgentsResponse' :: AgentPreviewList -> ({ agentPreviews :: AgentPreviewList, nextToken :: NullOrUndefined (PaginationToken) } -> { agentPreviews :: AgentPreviewList, nextToken :: NullOrUndefined (PaginationToken) }) -> PreviewAgentsResponse
```

Constructs PreviewAgentsResponse's fields from required parameters

#### `ProviderName`

``` purescript
newtype ProviderName
  = ProviderName String
```

##### Instances
``` purescript
Newtype ProviderName _
Generic ProviderName _
Show ProviderName
Decode ProviderName
Encode ProviderName
```

#### `RegisterCrossAccountAccessRoleRequest`

``` purescript
newtype RegisterCrossAccountAccessRoleRequest
  = RegisterCrossAccountAccessRoleRequest { roleArn :: Arn }
```

##### Instances
``` purescript
Newtype RegisterCrossAccountAccessRoleRequest _
Generic RegisterCrossAccountAccessRoleRequest _
Show RegisterCrossAccountAccessRoleRequest
Decode RegisterCrossAccountAccessRoleRequest
Encode RegisterCrossAccountAccessRoleRequest
```

#### `newRegisterCrossAccountAccessRoleRequest`

``` purescript
newRegisterCrossAccountAccessRoleRequest :: Arn -> RegisterCrossAccountAccessRoleRequest
```

Constructs RegisterCrossAccountAccessRoleRequest from required parameters

#### `newRegisterCrossAccountAccessRoleRequest'`

``` purescript
newRegisterCrossAccountAccessRoleRequest' :: Arn -> ({ roleArn :: Arn } -> { roleArn :: Arn }) -> RegisterCrossAccountAccessRoleRequest
```

Constructs RegisterCrossAccountAccessRoleRequest's fields from required parameters

#### `RemoveAttributesFromFindingsRequest`

``` purescript
newtype RemoveAttributesFromFindingsRequest
  = RemoveAttributesFromFindingsRequest { findingArns :: AddRemoveAttributesFindingArnList, attributeKeys :: UserAttributeKeyList }
```

##### Instances
``` purescript
Newtype RemoveAttributesFromFindingsRequest _
Generic RemoveAttributesFromFindingsRequest _
Show RemoveAttributesFromFindingsRequest
Decode RemoveAttributesFromFindingsRequest
Encode RemoveAttributesFromFindingsRequest
```

#### `newRemoveAttributesFromFindingsRequest`

``` purescript
newRemoveAttributesFromFindingsRequest :: UserAttributeKeyList -> AddRemoveAttributesFindingArnList -> RemoveAttributesFromFindingsRequest
```

Constructs RemoveAttributesFromFindingsRequest from required parameters

#### `newRemoveAttributesFromFindingsRequest'`

``` purescript
newRemoveAttributesFromFindingsRequest' :: UserAttributeKeyList -> AddRemoveAttributesFindingArnList -> ({ findingArns :: AddRemoveAttributesFindingArnList, attributeKeys :: UserAttributeKeyList } -> { findingArns :: AddRemoveAttributesFindingArnList, attributeKeys :: UserAttributeKeyList }) -> RemoveAttributesFromFindingsRequest
```

Constructs RemoveAttributesFromFindingsRequest's fields from required parameters

#### `RemoveAttributesFromFindingsResponse`

``` purescript
newtype RemoveAttributesFromFindingsResponse
  = RemoveAttributesFromFindingsResponse { failedItems :: FailedItems }
```

##### Instances
``` purescript
Newtype RemoveAttributesFromFindingsResponse _
Generic RemoveAttributesFromFindingsResponse _
Show RemoveAttributesFromFindingsResponse
Decode RemoveAttributesFromFindingsResponse
Encode RemoveAttributesFromFindingsResponse
```

#### `newRemoveAttributesFromFindingsResponse`

``` purescript
newRemoveAttributesFromFindingsResponse :: FailedItems -> RemoveAttributesFromFindingsResponse
```

Constructs RemoveAttributesFromFindingsResponse from required parameters

#### `newRemoveAttributesFromFindingsResponse'`

``` purescript
newRemoveAttributesFromFindingsResponse' :: FailedItems -> ({ failedItems :: FailedItems } -> { failedItems :: FailedItems }) -> RemoveAttributesFromFindingsResponse
```

Constructs RemoveAttributesFromFindingsResponse's fields from required parameters

#### `ReportFileFormat`

``` purescript
newtype ReportFileFormat
  = ReportFileFormat String
```

##### Instances
``` purescript
Newtype ReportFileFormat _
Generic ReportFileFormat _
Show ReportFileFormat
Decode ReportFileFormat
Encode ReportFileFormat
```

#### `ReportStatus`

``` purescript
newtype ReportStatus
  = ReportStatus String
```

##### Instances
``` purescript
Newtype ReportStatus _
Generic ReportStatus _
Show ReportStatus
Decode ReportStatus
Encode ReportStatus
```

#### `ReportType`

``` purescript
newtype ReportType
  = ReportType String
```

##### Instances
``` purescript
Newtype ReportType _
Generic ReportType _
Show ReportType
Decode ReportType
Encode ReportType
```

#### `ResourceGroup`

``` purescript
newtype ResourceGroup
  = ResourceGroup { arn :: Arn, tags :: ResourceGroupTags, createdAt :: Timestamp }
```

<p>Contains information about a resource group. The resource group defines a set of tags that, when queried, identify the AWS resources that make up the assessment target. This data type is used as the response element in the <a>DescribeResourceGroups</a> action.</p>

##### Instances
``` purescript
Newtype ResourceGroup _
Generic ResourceGroup _
Show ResourceGroup
Decode ResourceGroup
Encode ResourceGroup
```

#### `newResourceGroup`

``` purescript
newResourceGroup :: Arn -> Timestamp -> ResourceGroupTags -> ResourceGroup
```

Constructs ResourceGroup from required parameters

#### `newResourceGroup'`

``` purescript
newResourceGroup' :: Arn -> Timestamp -> ResourceGroupTags -> ({ arn :: Arn, tags :: ResourceGroupTags, createdAt :: Timestamp } -> { arn :: Arn, tags :: ResourceGroupTags, createdAt :: Timestamp }) -> ResourceGroup
```

Constructs ResourceGroup's fields from required parameters

#### `ResourceGroupList`

``` purescript
newtype ResourceGroupList
  = ResourceGroupList (Array ResourceGroup)
```

##### Instances
``` purescript
Newtype ResourceGroupList _
Generic ResourceGroupList _
Show ResourceGroupList
Decode ResourceGroupList
Encode ResourceGroupList
```

#### `ResourceGroupTag`

``` purescript
newtype ResourceGroupTag
  = ResourceGroupTag { key :: TagKey, value :: NullOrUndefined (TagValue) }
```

<p>This data type is used as one of the elements of the <a>ResourceGroup</a> data type.</p>

##### Instances
``` purescript
Newtype ResourceGroupTag _
Generic ResourceGroupTag _
Show ResourceGroupTag
Decode ResourceGroupTag
Encode ResourceGroupTag
```

#### `newResourceGroupTag`

``` purescript
newResourceGroupTag :: TagKey -> ResourceGroupTag
```

Constructs ResourceGroupTag from required parameters

#### `newResourceGroupTag'`

``` purescript
newResourceGroupTag' :: TagKey -> ({ key :: TagKey, value :: NullOrUndefined (TagValue) } -> { key :: TagKey, value :: NullOrUndefined (TagValue) }) -> ResourceGroupTag
```

Constructs ResourceGroupTag's fields from required parameters

#### `ResourceGroupTags`

``` purescript
newtype ResourceGroupTags
  = ResourceGroupTags (Array ResourceGroupTag)
```

##### Instances
``` purescript
Newtype ResourceGroupTags _
Generic ResourceGroupTags _
Show ResourceGroupTags
Decode ResourceGroupTags
Encode ResourceGroupTags
```

#### `RuleName`

``` purescript
newtype RuleName
  = RuleName String
```

##### Instances
``` purescript
Newtype RuleName _
Generic RuleName _
Show RuleName
Decode RuleName
Encode RuleName
```

#### `RuleNameList`

``` purescript
newtype RuleNameList
  = RuleNameList (Array RuleName)
```

##### Instances
``` purescript
Newtype RuleNameList _
Generic RuleNameList _
Show RuleNameList
Decode RuleNameList
Encode RuleNameList
```

#### `RulesPackage`

``` purescript
newtype RulesPackage
  = RulesPackage { arn :: Arn, name :: RulesPackageName, version :: Version, provider :: ProviderName, description :: NullOrUndefined (Text) }
```

<p>Contains information about an Amazon Inspector rules package. This data type is used as the response element in the <a>DescribeRulesPackages</a> action.</p>

##### Instances
``` purescript
Newtype RulesPackage _
Generic RulesPackage _
Show RulesPackage
Decode RulesPackage
Encode RulesPackage
```

#### `newRulesPackage`

``` purescript
newRulesPackage :: Arn -> RulesPackageName -> ProviderName -> Version -> RulesPackage
```

Constructs RulesPackage from required parameters

#### `newRulesPackage'`

``` purescript
newRulesPackage' :: Arn -> RulesPackageName -> ProviderName -> Version -> ({ arn :: Arn, name :: RulesPackageName, version :: Version, provider :: ProviderName, description :: NullOrUndefined (Text) } -> { arn :: Arn, name :: RulesPackageName, version :: Version, provider :: ProviderName, description :: NullOrUndefined (Text) }) -> RulesPackage
```

Constructs RulesPackage's fields from required parameters

#### `RulesPackageList`

``` purescript
newtype RulesPackageList
  = RulesPackageList (Array RulesPackage)
```

##### Instances
``` purescript
Newtype RulesPackageList _
Generic RulesPackageList _
Show RulesPackageList
Decode RulesPackageList
Encode RulesPackageList
```

#### `RulesPackageName`

``` purescript
newtype RulesPackageName
  = RulesPackageName String
```

##### Instances
``` purescript
Newtype RulesPackageName _
Generic RulesPackageName _
Show RulesPackageName
Decode RulesPackageName
Encode RulesPackageName
```

#### `ServiceName`

``` purescript
newtype ServiceName
  = ServiceName String
```

##### Instances
``` purescript
Newtype ServiceName _
Generic ServiceName _
Show ServiceName
Decode ServiceName
Encode ServiceName
```

#### `SetTagsForResourceRequest`

``` purescript
newtype SetTagsForResourceRequest
  = SetTagsForResourceRequest { resourceArn :: Arn, tags :: NullOrUndefined (TagList) }
```

##### Instances
``` purescript
Newtype SetTagsForResourceRequest _
Generic SetTagsForResourceRequest _
Show SetTagsForResourceRequest
Decode SetTagsForResourceRequest
Encode SetTagsForResourceRequest
```

#### `newSetTagsForResourceRequest`

``` purescript
newSetTagsForResourceRequest :: Arn -> SetTagsForResourceRequest
```

Constructs SetTagsForResourceRequest from required parameters

#### `newSetTagsForResourceRequest'`

``` purescript
newSetTagsForResourceRequest' :: Arn -> ({ resourceArn :: Arn, tags :: NullOrUndefined (TagList) } -> { resourceArn :: Arn, tags :: NullOrUndefined (TagList) }) -> SetTagsForResourceRequest
```

Constructs SetTagsForResourceRequest's fields from required parameters

#### `Severity`

``` purescript
newtype Severity
  = Severity String
```

##### Instances
``` purescript
Newtype Severity _
Generic Severity _
Show Severity
Decode Severity
Encode Severity
```

#### `SeverityList`

``` purescript
newtype SeverityList
  = SeverityList (Array Severity)
```

##### Instances
``` purescript
Newtype SeverityList _
Generic SeverityList _
Show SeverityList
Decode SeverityList
Encode SeverityList
```

#### `StartAssessmentRunRequest`

``` purescript
newtype StartAssessmentRunRequest
  = StartAssessmentRunRequest { assessmentTemplateArn :: Arn, assessmentRunName :: NullOrUndefined (AssessmentRunName) }
```

##### Instances
``` purescript
Newtype StartAssessmentRunRequest _
Generic StartAssessmentRunRequest _
Show StartAssessmentRunRequest
Decode StartAssessmentRunRequest
Encode StartAssessmentRunRequest
```

#### `newStartAssessmentRunRequest`

``` purescript
newStartAssessmentRunRequest :: Arn -> StartAssessmentRunRequest
```

Constructs StartAssessmentRunRequest from required parameters

#### `newStartAssessmentRunRequest'`

``` purescript
newStartAssessmentRunRequest' :: Arn -> ({ assessmentTemplateArn :: Arn, assessmentRunName :: NullOrUndefined (AssessmentRunName) } -> { assessmentTemplateArn :: Arn, assessmentRunName :: NullOrUndefined (AssessmentRunName) }) -> StartAssessmentRunRequest
```

Constructs StartAssessmentRunRequest's fields from required parameters

#### `StartAssessmentRunResponse`

``` purescript
newtype StartAssessmentRunResponse
  = StartAssessmentRunResponse { assessmentRunArn :: Arn }
```

##### Instances
``` purescript
Newtype StartAssessmentRunResponse _
Generic StartAssessmentRunResponse _
Show StartAssessmentRunResponse
Decode StartAssessmentRunResponse
Encode StartAssessmentRunResponse
```

#### `newStartAssessmentRunResponse`

``` purescript
newStartAssessmentRunResponse :: Arn -> StartAssessmentRunResponse
```

Constructs StartAssessmentRunResponse from required parameters

#### `newStartAssessmentRunResponse'`

``` purescript
newStartAssessmentRunResponse' :: Arn -> ({ assessmentRunArn :: Arn } -> { assessmentRunArn :: Arn }) -> StartAssessmentRunResponse
```

Constructs StartAssessmentRunResponse's fields from required parameters

#### `StopAction`

``` purescript
newtype StopAction
  = StopAction String
```

##### Instances
``` purescript
Newtype StopAction _
Generic StopAction _
Show StopAction
Decode StopAction
Encode StopAction
```

#### `StopAssessmentRunRequest`

``` purescript
newtype StopAssessmentRunRequest
  = StopAssessmentRunRequest { assessmentRunArn :: Arn, stopAction :: NullOrUndefined (StopAction) }
```

##### Instances
``` purescript
Newtype StopAssessmentRunRequest _
Generic StopAssessmentRunRequest _
Show StopAssessmentRunRequest
Decode StopAssessmentRunRequest
Encode StopAssessmentRunRequest
```

#### `newStopAssessmentRunRequest`

``` purescript
newStopAssessmentRunRequest :: Arn -> StopAssessmentRunRequest
```

Constructs StopAssessmentRunRequest from required parameters

#### `newStopAssessmentRunRequest'`

``` purescript
newStopAssessmentRunRequest' :: Arn -> ({ assessmentRunArn :: Arn, stopAction :: NullOrUndefined (StopAction) } -> { assessmentRunArn :: Arn, stopAction :: NullOrUndefined (StopAction) }) -> StopAssessmentRunRequest
```

Constructs StopAssessmentRunRequest's fields from required parameters

#### `SubscribeToEventRequest`

``` purescript
newtype SubscribeToEventRequest
  = SubscribeToEventRequest { resourceArn :: Arn, event :: InspectorEvent, topicArn :: Arn }
```

##### Instances
``` purescript
Newtype SubscribeToEventRequest _
Generic SubscribeToEventRequest _
Show SubscribeToEventRequest
Decode SubscribeToEventRequest
Encode SubscribeToEventRequest
```

#### `newSubscribeToEventRequest`

``` purescript
newSubscribeToEventRequest :: InspectorEvent -> Arn -> Arn -> SubscribeToEventRequest
```

Constructs SubscribeToEventRequest from required parameters

#### `newSubscribeToEventRequest'`

``` purescript
newSubscribeToEventRequest' :: InspectorEvent -> Arn -> Arn -> ({ resourceArn :: Arn, event :: InspectorEvent, topicArn :: Arn } -> { resourceArn :: Arn, event :: InspectorEvent, topicArn :: Arn }) -> SubscribeToEventRequest
```

Constructs SubscribeToEventRequest's fields from required parameters

#### `Subscription`

``` purescript
newtype Subscription
  = Subscription { resourceArn :: Arn, topicArn :: Arn, eventSubscriptions :: EventSubscriptionList }
```

<p>This data type is used as a response element in the <a>ListEventSubscriptions</a> action.</p>

##### Instances
``` purescript
Newtype Subscription _
Generic Subscription _
Show Subscription
Decode Subscription
Encode Subscription
```

#### `newSubscription`

``` purescript
newSubscription :: EventSubscriptionList -> Arn -> Arn -> Subscription
```

Constructs Subscription from required parameters

#### `newSubscription'`

``` purescript
newSubscription' :: EventSubscriptionList -> Arn -> Arn -> ({ resourceArn :: Arn, topicArn :: Arn, eventSubscriptions :: EventSubscriptionList } -> { resourceArn :: Arn, topicArn :: Arn, eventSubscriptions :: EventSubscriptionList }) -> Subscription
```

Constructs Subscription's fields from required parameters

#### `SubscriptionList`

``` purescript
newtype SubscriptionList
  = SubscriptionList (Array Subscription)
```

##### Instances
``` purescript
Newtype SubscriptionList _
Generic SubscriptionList _
Show SubscriptionList
Decode SubscriptionList
Encode SubscriptionList
```

#### `Tag`

``` purescript
newtype Tag
  = Tag { key :: TagKey, value :: NullOrUndefined (TagValue) }
```

<p>A key and value pair. This data type is used as a request parameter in the <a>SetTagsForResource</a> action and a response element in the <a>ListTagsForResource</a> action.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: TagKey -> Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: TagKey -> ({ key :: TagKey, value :: NullOrUndefined (TagValue) } -> { key :: TagKey, value :: NullOrUndefined (TagValue) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `TelemetryMetadata`

``` purescript
newtype TelemetryMetadata
  = TelemetryMetadata { messageType :: MessageType, count :: Number, dataSize :: NullOrUndefined (Number) }
```

<p>The metadata about the Amazon Inspector application data metrics collected by the agent. This data type is used as the response element in the <a>GetTelemetryMetadata</a> action.</p>

##### Instances
``` purescript
Newtype TelemetryMetadata _
Generic TelemetryMetadata _
Show TelemetryMetadata
Decode TelemetryMetadata
Encode TelemetryMetadata
```

#### `newTelemetryMetadata`

``` purescript
newTelemetryMetadata :: Number -> MessageType -> TelemetryMetadata
```

Constructs TelemetryMetadata from required parameters

#### `newTelemetryMetadata'`

``` purescript
newTelemetryMetadata' :: Number -> MessageType -> ({ messageType :: MessageType, count :: Number, dataSize :: NullOrUndefined (Number) } -> { messageType :: MessageType, count :: Number, dataSize :: NullOrUndefined (Number) }) -> TelemetryMetadata
```

Constructs TelemetryMetadata's fields from required parameters

#### `TelemetryMetadataList`

``` purescript
newtype TelemetryMetadataList
  = TelemetryMetadataList (Array TelemetryMetadata)
```

##### Instances
``` purescript
Newtype TelemetryMetadataList _
Generic TelemetryMetadataList _
Show TelemetryMetadataList
Decode TelemetryMetadataList
Encode TelemetryMetadataList
```

#### `Text`

``` purescript
newtype Text
  = Text String
```

##### Instances
``` purescript
Newtype Text _
Generic Text _
Show Text
Decode Text
Encode Text
```

#### `TimestampRange`

``` purescript
newtype TimestampRange
  = TimestampRange { beginDate :: NullOrUndefined (Timestamp), endDate :: NullOrUndefined (Timestamp) }
```

<p>This data type is used in the <a>AssessmentRunFilter</a> data type.</p>

##### Instances
``` purescript
Newtype TimestampRange _
Generic TimestampRange _
Show TimestampRange
Decode TimestampRange
Encode TimestampRange
```

#### `newTimestampRange`

``` purescript
newTimestampRange :: TimestampRange
```

Constructs TimestampRange from required parameters

#### `newTimestampRange'`

``` purescript
newTimestampRange' :: ({ beginDate :: NullOrUndefined (Timestamp), endDate :: NullOrUndefined (Timestamp) } -> { beginDate :: NullOrUndefined (Timestamp), endDate :: NullOrUndefined (Timestamp) }) -> TimestampRange
```

Constructs TimestampRange's fields from required parameters

#### `UnsubscribeFromEventRequest`

``` purescript
newtype UnsubscribeFromEventRequest
  = UnsubscribeFromEventRequest { resourceArn :: Arn, event :: InspectorEvent, topicArn :: Arn }
```

##### Instances
``` purescript
Newtype UnsubscribeFromEventRequest _
Generic UnsubscribeFromEventRequest _
Show UnsubscribeFromEventRequest
Decode UnsubscribeFromEventRequest
Encode UnsubscribeFromEventRequest
```

#### `newUnsubscribeFromEventRequest`

``` purescript
newUnsubscribeFromEventRequest :: InspectorEvent -> Arn -> Arn -> UnsubscribeFromEventRequest
```

Constructs UnsubscribeFromEventRequest from required parameters

#### `newUnsubscribeFromEventRequest'`

``` purescript
newUnsubscribeFromEventRequest' :: InspectorEvent -> Arn -> Arn -> ({ resourceArn :: Arn, event :: InspectorEvent, topicArn :: Arn } -> { resourceArn :: Arn, event :: InspectorEvent, topicArn :: Arn }) -> UnsubscribeFromEventRequest
```

Constructs UnsubscribeFromEventRequest's fields from required parameters

#### `UnsupportedFeatureException`

``` purescript
newtype UnsupportedFeatureException
  = UnsupportedFeatureException { message :: ErrorMessage, canRetry :: Bool }
```

<p>Used by the <a>GetAssessmentReport</a> API. The request was rejected because you tried to generate a report for an assessment run that existed before reporting was supported in Amazon Inspector. You can only generate reports for assessment runs that took place or will take place after generating reports in Amazon Inspector became available.</p>

##### Instances
``` purescript
Newtype UnsupportedFeatureException _
Generic UnsupportedFeatureException _
Show UnsupportedFeatureException
Decode UnsupportedFeatureException
Encode UnsupportedFeatureException
```

#### `newUnsupportedFeatureException`

``` purescript
newUnsupportedFeatureException :: Bool -> ErrorMessage -> UnsupportedFeatureException
```

Constructs UnsupportedFeatureException from required parameters

#### `newUnsupportedFeatureException'`

``` purescript
newUnsupportedFeatureException' :: Bool -> ErrorMessage -> ({ message :: ErrorMessage, canRetry :: Bool } -> { message :: ErrorMessage, canRetry :: Bool }) -> UnsupportedFeatureException
```

Constructs UnsupportedFeatureException's fields from required parameters

#### `UpdateAssessmentTargetRequest`

``` purescript
newtype UpdateAssessmentTargetRequest
  = UpdateAssessmentTargetRequest { assessmentTargetArn :: Arn, assessmentTargetName :: AssessmentTargetName, resourceGroupArn :: Arn }
```

##### Instances
``` purescript
Newtype UpdateAssessmentTargetRequest _
Generic UpdateAssessmentTargetRequest _
Show UpdateAssessmentTargetRequest
Decode UpdateAssessmentTargetRequest
Encode UpdateAssessmentTargetRequest
```

#### `newUpdateAssessmentTargetRequest`

``` purescript
newUpdateAssessmentTargetRequest :: Arn -> AssessmentTargetName -> Arn -> UpdateAssessmentTargetRequest
```

Constructs UpdateAssessmentTargetRequest from required parameters

#### `newUpdateAssessmentTargetRequest'`

``` purescript
newUpdateAssessmentTargetRequest' :: Arn -> AssessmentTargetName -> Arn -> ({ assessmentTargetArn :: Arn, assessmentTargetName :: AssessmentTargetName, resourceGroupArn :: Arn } -> { assessmentTargetArn :: Arn, assessmentTargetName :: AssessmentTargetName, resourceGroupArn :: Arn }) -> UpdateAssessmentTargetRequest
```

Constructs UpdateAssessmentTargetRequest's fields from required parameters

#### `Url`

``` purescript
newtype Url
  = Url String
```

##### Instances
``` purescript
Newtype Url _
Generic Url _
Show Url
Decode Url
Encode Url
```

#### `UserAttributeKeyList`

``` purescript
newtype UserAttributeKeyList
  = UserAttributeKeyList (Array AttributeKey)
```

##### Instances
``` purescript
Newtype UserAttributeKeyList _
Generic UserAttributeKeyList _
Show UserAttributeKeyList
Decode UserAttributeKeyList
Encode UserAttributeKeyList
```

#### `UserAttributeList`

``` purescript
newtype UserAttributeList
  = UserAttributeList (Array Attribute)
```

##### Instances
``` purescript
Newtype UserAttributeList _
Generic UserAttributeList _
Show UserAttributeList
Decode UserAttributeList
Encode UserAttributeList
```

#### `Version`

``` purescript
newtype Version
  = Version String
```

##### Instances
``` purescript
Newtype Version _
Generic Version _
Show Version
Decode Version
Encode Version
```


