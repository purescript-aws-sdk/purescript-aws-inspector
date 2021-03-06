
module AWS.Inspector.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AccessDeniedErrorCode = AccessDeniedErrorCode String
derive instance newtypeAccessDeniedErrorCode :: Newtype AccessDeniedErrorCode _
derive instance repGenericAccessDeniedErrorCode :: Generic AccessDeniedErrorCode _
instance showAccessDeniedErrorCode :: Show AccessDeniedErrorCode where show = genericShow
instance decodeAccessDeniedErrorCode :: Decode AccessDeniedErrorCode where decode = genericDecode options
instance encodeAccessDeniedErrorCode :: Encode AccessDeniedErrorCode where encode = genericEncode options



-- | <p>You do not have required permissions to access the requested resource.</p>
newtype AccessDeniedException = AccessDeniedException 
  { "message" :: (ErrorMessage)
  , "errorCode" :: (AccessDeniedErrorCode)
  , "canRetry" :: (Bool)
  }
derive instance newtypeAccessDeniedException :: Newtype AccessDeniedException _
derive instance repGenericAccessDeniedException :: Generic AccessDeniedException _
instance showAccessDeniedException :: Show AccessDeniedException where show = genericShow
instance decodeAccessDeniedException :: Decode AccessDeniedException where decode = genericDecode options
instance encodeAccessDeniedException :: Encode AccessDeniedException where encode = genericEncode options

-- | Constructs AccessDeniedException from required parameters
newAccessDeniedException :: Bool -> AccessDeniedErrorCode -> ErrorMessage -> AccessDeniedException
newAccessDeniedException _canRetry _errorCode _message = AccessDeniedException { "canRetry": _canRetry, "errorCode": _errorCode, "message": _message }

-- | Constructs AccessDeniedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessDeniedException' :: Bool -> AccessDeniedErrorCode -> ErrorMessage -> ( { "message" :: (ErrorMessage) , "errorCode" :: (AccessDeniedErrorCode) , "canRetry" :: (Bool) } -> {"message" :: (ErrorMessage) , "errorCode" :: (AccessDeniedErrorCode) , "canRetry" :: (Bool) } ) -> AccessDeniedException
newAccessDeniedException' _canRetry _errorCode _message customize = (AccessDeniedException <<< customize) { "canRetry": _canRetry, "errorCode": _errorCode, "message": _message }



newtype AddAttributesToFindingsRequest = AddAttributesToFindingsRequest 
  { "findingArns" :: (AddRemoveAttributesFindingArnList)
  , "attributes" :: (UserAttributeList)
  }
derive instance newtypeAddAttributesToFindingsRequest :: Newtype AddAttributesToFindingsRequest _
derive instance repGenericAddAttributesToFindingsRequest :: Generic AddAttributesToFindingsRequest _
instance showAddAttributesToFindingsRequest :: Show AddAttributesToFindingsRequest where show = genericShow
instance decodeAddAttributesToFindingsRequest :: Decode AddAttributesToFindingsRequest where decode = genericDecode options
instance encodeAddAttributesToFindingsRequest :: Encode AddAttributesToFindingsRequest where encode = genericEncode options

-- | Constructs AddAttributesToFindingsRequest from required parameters
newAddAttributesToFindingsRequest :: UserAttributeList -> AddRemoveAttributesFindingArnList -> AddAttributesToFindingsRequest
newAddAttributesToFindingsRequest _attributes _findingArns = AddAttributesToFindingsRequest { "attributes": _attributes, "findingArns": _findingArns }

-- | Constructs AddAttributesToFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddAttributesToFindingsRequest' :: UserAttributeList -> AddRemoveAttributesFindingArnList -> ( { "findingArns" :: (AddRemoveAttributesFindingArnList) , "attributes" :: (UserAttributeList) } -> {"findingArns" :: (AddRemoveAttributesFindingArnList) , "attributes" :: (UserAttributeList) } ) -> AddAttributesToFindingsRequest
newAddAttributesToFindingsRequest' _attributes _findingArns customize = (AddAttributesToFindingsRequest <<< customize) { "attributes": _attributes, "findingArns": _findingArns }



newtype AddAttributesToFindingsResponse = AddAttributesToFindingsResponse 
  { "failedItems" :: (FailedItems)
  }
derive instance newtypeAddAttributesToFindingsResponse :: Newtype AddAttributesToFindingsResponse _
derive instance repGenericAddAttributesToFindingsResponse :: Generic AddAttributesToFindingsResponse _
instance showAddAttributesToFindingsResponse :: Show AddAttributesToFindingsResponse where show = genericShow
instance decodeAddAttributesToFindingsResponse :: Decode AddAttributesToFindingsResponse where decode = genericDecode options
instance encodeAddAttributesToFindingsResponse :: Encode AddAttributesToFindingsResponse where encode = genericEncode options

-- | Constructs AddAttributesToFindingsResponse from required parameters
newAddAttributesToFindingsResponse :: FailedItems -> AddAttributesToFindingsResponse
newAddAttributesToFindingsResponse _failedItems = AddAttributesToFindingsResponse { "failedItems": _failedItems }

-- | Constructs AddAttributesToFindingsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddAttributesToFindingsResponse' :: FailedItems -> ( { "failedItems" :: (FailedItems) } -> {"failedItems" :: (FailedItems) } ) -> AddAttributesToFindingsResponse
newAddAttributesToFindingsResponse' _failedItems customize = (AddAttributesToFindingsResponse <<< customize) { "failedItems": _failedItems }



newtype AddRemoveAttributesFindingArnList = AddRemoveAttributesFindingArnList (Array Arn)
derive instance newtypeAddRemoveAttributesFindingArnList :: Newtype AddRemoveAttributesFindingArnList _
derive instance repGenericAddRemoveAttributesFindingArnList :: Generic AddRemoveAttributesFindingArnList _
instance showAddRemoveAttributesFindingArnList :: Show AddRemoveAttributesFindingArnList where show = genericShow
instance decodeAddRemoveAttributesFindingArnList :: Decode AddRemoveAttributesFindingArnList where decode = genericDecode options
instance encodeAddRemoveAttributesFindingArnList :: Encode AddRemoveAttributesFindingArnList where encode = genericEncode options



-- | <p>Used in the exception error that is thrown if you start an assessment run for an assessment target that includes an EC2 instance that is already participating in another started assessment run.</p>
newtype AgentAlreadyRunningAssessment = AgentAlreadyRunningAssessment 
  { "agentId" :: (AgentId)
  , "assessmentRunArn" :: (Arn)
  }
derive instance newtypeAgentAlreadyRunningAssessment :: Newtype AgentAlreadyRunningAssessment _
derive instance repGenericAgentAlreadyRunningAssessment :: Generic AgentAlreadyRunningAssessment _
instance showAgentAlreadyRunningAssessment :: Show AgentAlreadyRunningAssessment where show = genericShow
instance decodeAgentAlreadyRunningAssessment :: Decode AgentAlreadyRunningAssessment where decode = genericDecode options
instance encodeAgentAlreadyRunningAssessment :: Encode AgentAlreadyRunningAssessment where encode = genericEncode options

-- | Constructs AgentAlreadyRunningAssessment from required parameters
newAgentAlreadyRunningAssessment :: AgentId -> Arn -> AgentAlreadyRunningAssessment
newAgentAlreadyRunningAssessment _agentId _assessmentRunArn = AgentAlreadyRunningAssessment { "agentId": _agentId, "assessmentRunArn": _assessmentRunArn }

-- | Constructs AgentAlreadyRunningAssessment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAgentAlreadyRunningAssessment' :: AgentId -> Arn -> ( { "agentId" :: (AgentId) , "assessmentRunArn" :: (Arn) } -> {"agentId" :: (AgentId) , "assessmentRunArn" :: (Arn) } ) -> AgentAlreadyRunningAssessment
newAgentAlreadyRunningAssessment' _agentId _assessmentRunArn customize = (AgentAlreadyRunningAssessment <<< customize) { "agentId": _agentId, "assessmentRunArn": _assessmentRunArn }



newtype AgentAlreadyRunningAssessmentList = AgentAlreadyRunningAssessmentList (Array AgentAlreadyRunningAssessment)
derive instance newtypeAgentAlreadyRunningAssessmentList :: Newtype AgentAlreadyRunningAssessmentList _
derive instance repGenericAgentAlreadyRunningAssessmentList :: Generic AgentAlreadyRunningAssessmentList _
instance showAgentAlreadyRunningAssessmentList :: Show AgentAlreadyRunningAssessmentList where show = genericShow
instance decodeAgentAlreadyRunningAssessmentList :: Decode AgentAlreadyRunningAssessmentList where decode = genericDecode options
instance encodeAgentAlreadyRunningAssessmentList :: Encode AgentAlreadyRunningAssessmentList where encode = genericEncode options



-- | <p>Contains information about an Amazon Inspector agent. This data type is used as a request parameter in the <a>ListAssessmentRunAgents</a> action.</p>
newtype AgentFilter = AgentFilter 
  { "agentHealths" :: (AgentHealthList)
  , "agentHealthCodes" :: (AgentHealthCodeList)
  }
derive instance newtypeAgentFilter :: Newtype AgentFilter _
derive instance repGenericAgentFilter :: Generic AgentFilter _
instance showAgentFilter :: Show AgentFilter where show = genericShow
instance decodeAgentFilter :: Decode AgentFilter where decode = genericDecode options
instance encodeAgentFilter :: Encode AgentFilter where encode = genericEncode options

-- | Constructs AgentFilter from required parameters
newAgentFilter :: AgentHealthCodeList -> AgentHealthList -> AgentFilter
newAgentFilter _agentHealthCodes _agentHealths = AgentFilter { "agentHealthCodes": _agentHealthCodes, "agentHealths": _agentHealths }

-- | Constructs AgentFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAgentFilter' :: AgentHealthCodeList -> AgentHealthList -> ( { "agentHealths" :: (AgentHealthList) , "agentHealthCodes" :: (AgentHealthCodeList) } -> {"agentHealths" :: (AgentHealthList) , "agentHealthCodes" :: (AgentHealthCodeList) } ) -> AgentFilter
newAgentFilter' _agentHealthCodes _agentHealths customize = (AgentFilter <<< customize) { "agentHealthCodes": _agentHealthCodes, "agentHealths": _agentHealths }



newtype AgentHealth = AgentHealth String
derive instance newtypeAgentHealth :: Newtype AgentHealth _
derive instance repGenericAgentHealth :: Generic AgentHealth _
instance showAgentHealth :: Show AgentHealth where show = genericShow
instance decodeAgentHealth :: Decode AgentHealth where decode = genericDecode options
instance encodeAgentHealth :: Encode AgentHealth where encode = genericEncode options



newtype AgentHealthCode = AgentHealthCode String
derive instance newtypeAgentHealthCode :: Newtype AgentHealthCode _
derive instance repGenericAgentHealthCode :: Generic AgentHealthCode _
instance showAgentHealthCode :: Show AgentHealthCode where show = genericShow
instance decodeAgentHealthCode :: Decode AgentHealthCode where decode = genericDecode options
instance encodeAgentHealthCode :: Encode AgentHealthCode where encode = genericEncode options



newtype AgentHealthCodeList = AgentHealthCodeList (Array AgentHealthCode)
derive instance newtypeAgentHealthCodeList :: Newtype AgentHealthCodeList _
derive instance repGenericAgentHealthCodeList :: Generic AgentHealthCodeList _
instance showAgentHealthCodeList :: Show AgentHealthCodeList where show = genericShow
instance decodeAgentHealthCodeList :: Decode AgentHealthCodeList where decode = genericDecode options
instance encodeAgentHealthCodeList :: Encode AgentHealthCodeList where encode = genericEncode options



newtype AgentHealthList = AgentHealthList (Array AgentHealth)
derive instance newtypeAgentHealthList :: Newtype AgentHealthList _
derive instance repGenericAgentHealthList :: Generic AgentHealthList _
instance showAgentHealthList :: Show AgentHealthList where show = genericShow
instance decodeAgentHealthList :: Decode AgentHealthList where decode = genericDecode options
instance encodeAgentHealthList :: Encode AgentHealthList where encode = genericEncode options



newtype AgentId = AgentId String
derive instance newtypeAgentId :: Newtype AgentId _
derive instance repGenericAgentId :: Generic AgentId _
instance showAgentId :: Show AgentId where show = genericShow
instance decodeAgentId :: Decode AgentId where decode = genericDecode options
instance encodeAgentId :: Encode AgentId where encode = genericEncode options



newtype AgentIdList = AgentIdList (Array AgentId)
derive instance newtypeAgentIdList :: Newtype AgentIdList _
derive instance repGenericAgentIdList :: Generic AgentIdList _
instance showAgentIdList :: Show AgentIdList where show = genericShow
instance decodeAgentIdList :: Decode AgentIdList where decode = genericDecode options
instance encodeAgentIdList :: Encode AgentIdList where encode = genericEncode options



-- | <p>Used as a response element in the <a>PreviewAgents</a> action.</p>
newtype AgentPreview = AgentPreview 
  { "hostname" :: Maybe (Hostname)
  , "agentId" :: (AgentId)
  , "autoScalingGroup" :: Maybe (AutoScalingGroup)
  , "agentHealth" :: Maybe (AgentHealth)
  , "agentVersion" :: Maybe (AgentVersion)
  , "operatingSystem" :: Maybe (OperatingSystem)
  , "kernelVersion" :: Maybe (KernelVersion)
  , "ipv4Address" :: Maybe (Ipv4Address)
  }
derive instance newtypeAgentPreview :: Newtype AgentPreview _
derive instance repGenericAgentPreview :: Generic AgentPreview _
instance showAgentPreview :: Show AgentPreview where show = genericShow
instance decodeAgentPreview :: Decode AgentPreview where decode = genericDecode options
instance encodeAgentPreview :: Encode AgentPreview where encode = genericEncode options

-- | Constructs AgentPreview from required parameters
newAgentPreview :: AgentId -> AgentPreview
newAgentPreview _agentId = AgentPreview { "agentId": _agentId, "agentHealth": Nothing, "agentVersion": Nothing, "autoScalingGroup": Nothing, "hostname": Nothing, "ipv4Address": Nothing, "kernelVersion": Nothing, "operatingSystem": Nothing }

-- | Constructs AgentPreview's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAgentPreview' :: AgentId -> ( { "hostname" :: Maybe (Hostname) , "agentId" :: (AgentId) , "autoScalingGroup" :: Maybe (AutoScalingGroup) , "agentHealth" :: Maybe (AgentHealth) , "agentVersion" :: Maybe (AgentVersion) , "operatingSystem" :: Maybe (OperatingSystem) , "kernelVersion" :: Maybe (KernelVersion) , "ipv4Address" :: Maybe (Ipv4Address) } -> {"hostname" :: Maybe (Hostname) , "agentId" :: (AgentId) , "autoScalingGroup" :: Maybe (AutoScalingGroup) , "agentHealth" :: Maybe (AgentHealth) , "agentVersion" :: Maybe (AgentVersion) , "operatingSystem" :: Maybe (OperatingSystem) , "kernelVersion" :: Maybe (KernelVersion) , "ipv4Address" :: Maybe (Ipv4Address) } ) -> AgentPreview
newAgentPreview' _agentId customize = (AgentPreview <<< customize) { "agentId": _agentId, "agentHealth": Nothing, "agentVersion": Nothing, "autoScalingGroup": Nothing, "hostname": Nothing, "ipv4Address": Nothing, "kernelVersion": Nothing, "operatingSystem": Nothing }



newtype AgentPreviewList = AgentPreviewList (Array AgentPreview)
derive instance newtypeAgentPreviewList :: Newtype AgentPreviewList _
derive instance repGenericAgentPreviewList :: Generic AgentPreviewList _
instance showAgentPreviewList :: Show AgentPreviewList where show = genericShow
instance decodeAgentPreviewList :: Decode AgentPreviewList where decode = genericDecode options
instance encodeAgentPreviewList :: Encode AgentPreviewList where encode = genericEncode options



newtype AgentVersion = AgentVersion String
derive instance newtypeAgentVersion :: Newtype AgentVersion _
derive instance repGenericAgentVersion :: Generic AgentVersion _
instance showAgentVersion :: Show AgentVersion where show = genericShow
instance decodeAgentVersion :: Decode AgentVersion where decode = genericDecode options
instance encodeAgentVersion :: Encode AgentVersion where encode = genericEncode options



-- | <p>You started an assessment run, but one of the instances is already participating in another assessment run.</p>
newtype AgentsAlreadyRunningAssessmentException = AgentsAlreadyRunningAssessmentException 
  { "message" :: (ErrorMessage)
  , "agents" :: (AgentAlreadyRunningAssessmentList)
  , "agentsTruncated" :: (Bool)
  , "canRetry" :: (Bool)
  }
derive instance newtypeAgentsAlreadyRunningAssessmentException :: Newtype AgentsAlreadyRunningAssessmentException _
derive instance repGenericAgentsAlreadyRunningAssessmentException :: Generic AgentsAlreadyRunningAssessmentException _
instance showAgentsAlreadyRunningAssessmentException :: Show AgentsAlreadyRunningAssessmentException where show = genericShow
instance decodeAgentsAlreadyRunningAssessmentException :: Decode AgentsAlreadyRunningAssessmentException where decode = genericDecode options
instance encodeAgentsAlreadyRunningAssessmentException :: Encode AgentsAlreadyRunningAssessmentException where encode = genericEncode options

-- | Constructs AgentsAlreadyRunningAssessmentException from required parameters
newAgentsAlreadyRunningAssessmentException :: AgentAlreadyRunningAssessmentList -> Bool -> Bool -> ErrorMessage -> AgentsAlreadyRunningAssessmentException
newAgentsAlreadyRunningAssessmentException _agents _agentsTruncated _canRetry _message = AgentsAlreadyRunningAssessmentException { "agents": _agents, "agentsTruncated": _agentsTruncated, "canRetry": _canRetry, "message": _message }

-- | Constructs AgentsAlreadyRunningAssessmentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAgentsAlreadyRunningAssessmentException' :: AgentAlreadyRunningAssessmentList -> Bool -> Bool -> ErrorMessage -> ( { "message" :: (ErrorMessage) , "agents" :: (AgentAlreadyRunningAssessmentList) , "agentsTruncated" :: (Bool) , "canRetry" :: (Bool) } -> {"message" :: (ErrorMessage) , "agents" :: (AgentAlreadyRunningAssessmentList) , "agentsTruncated" :: (Bool) , "canRetry" :: (Bool) } ) -> AgentsAlreadyRunningAssessmentException
newAgentsAlreadyRunningAssessmentException' _agents _agentsTruncated _canRetry _message customize = (AgentsAlreadyRunningAssessmentException <<< customize) { "agents": _agents, "agentsTruncated": _agentsTruncated, "canRetry": _canRetry, "message": _message }



newtype AmiId = AmiId String
derive instance newtypeAmiId :: Newtype AmiId _
derive instance repGenericAmiId :: Generic AmiId _
instance showAmiId :: Show AmiId where show = genericShow
instance decodeAmiId :: Decode AmiId where decode = genericDecode options
instance encodeAmiId :: Encode AmiId where encode = genericEncode options



newtype Arn = Arn String
derive instance newtypeArn :: Newtype Arn _
derive instance repGenericArn :: Generic Arn _
instance showArn :: Show Arn where show = genericShow
instance decodeArn :: Decode Arn where decode = genericDecode options
instance encodeArn :: Encode Arn where encode = genericEncode options



newtype ArnCount = ArnCount Int
derive instance newtypeArnCount :: Newtype ArnCount _
derive instance repGenericArnCount :: Generic ArnCount _
instance showArnCount :: Show ArnCount where show = genericShow
instance decodeArnCount :: Decode ArnCount where decode = genericDecode options
instance encodeArnCount :: Encode ArnCount where encode = genericEncode options



newtype AssessmentRulesPackageArnList = AssessmentRulesPackageArnList (Array Arn)
derive instance newtypeAssessmentRulesPackageArnList :: Newtype AssessmentRulesPackageArnList _
derive instance repGenericAssessmentRulesPackageArnList :: Generic AssessmentRulesPackageArnList _
instance showAssessmentRulesPackageArnList :: Show AssessmentRulesPackageArnList where show = genericShow
instance decodeAssessmentRulesPackageArnList :: Decode AssessmentRulesPackageArnList where decode = genericDecode options
instance encodeAssessmentRulesPackageArnList :: Encode AssessmentRulesPackageArnList where encode = genericEncode options



-- | <p>A snapshot of an Amazon Inspector assessment run that contains the findings of the assessment run .</p> <p>Used as the response element in the <a>DescribeAssessmentRuns</a> action.</p>
newtype AssessmentRun = AssessmentRun 
  { "arn" :: (Arn)
  , "name" :: (AssessmentRunName)
  , "assessmentTemplateArn" :: (Arn)
  , "state" :: (AssessmentRunState)
  , "durationInSeconds" :: (AssessmentRunDuration)
  , "rulesPackageArns" :: (AssessmentRulesPackageArnList)
  , "userAttributesForFindings" :: (UserAttributeList)
  , "createdAt" :: (Types.Timestamp)
  , "startedAt" :: Maybe (Types.Timestamp)
  , "completedAt" :: Maybe (Types.Timestamp)
  , "stateChangedAt" :: (Types.Timestamp)
  , "dataCollected" :: (Bool)
  , "stateChanges" :: (AssessmentRunStateChangeList)
  , "notifications" :: (AssessmentRunNotificationList)
  , "findingCounts" :: (AssessmentRunFindingCounts)
  }
derive instance newtypeAssessmentRun :: Newtype AssessmentRun _
derive instance repGenericAssessmentRun :: Generic AssessmentRun _
instance showAssessmentRun :: Show AssessmentRun where show = genericShow
instance decodeAssessmentRun :: Decode AssessmentRun where decode = genericDecode options
instance encodeAssessmentRun :: Encode AssessmentRun where encode = genericEncode options

-- | Constructs AssessmentRun from required parameters
newAssessmentRun :: Arn -> Arn -> Types.Timestamp -> Bool -> AssessmentRunDuration -> AssessmentRunFindingCounts -> AssessmentRunName -> AssessmentRunNotificationList -> AssessmentRulesPackageArnList -> AssessmentRunState -> Types.Timestamp -> AssessmentRunStateChangeList -> UserAttributeList -> AssessmentRun
newAssessmentRun _arn _assessmentTemplateArn _createdAt _dataCollected _durationInSeconds _findingCounts _name _notifications _rulesPackageArns _state _stateChangedAt _stateChanges _userAttributesForFindings = AssessmentRun { "arn": _arn, "assessmentTemplateArn": _assessmentTemplateArn, "createdAt": _createdAt, "dataCollected": _dataCollected, "durationInSeconds": _durationInSeconds, "findingCounts": _findingCounts, "name": _name, "notifications": _notifications, "rulesPackageArns": _rulesPackageArns, "state": _state, "stateChangedAt": _stateChangedAt, "stateChanges": _stateChanges, "userAttributesForFindings": _userAttributesForFindings, "completedAt": Nothing, "startedAt": Nothing }

-- | Constructs AssessmentRun's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssessmentRun' :: Arn -> Arn -> Types.Timestamp -> Bool -> AssessmentRunDuration -> AssessmentRunFindingCounts -> AssessmentRunName -> AssessmentRunNotificationList -> AssessmentRulesPackageArnList -> AssessmentRunState -> Types.Timestamp -> AssessmentRunStateChangeList -> UserAttributeList -> ( { "arn" :: (Arn) , "name" :: (AssessmentRunName) , "assessmentTemplateArn" :: (Arn) , "state" :: (AssessmentRunState) , "durationInSeconds" :: (AssessmentRunDuration) , "rulesPackageArns" :: (AssessmentRulesPackageArnList) , "userAttributesForFindings" :: (UserAttributeList) , "createdAt" :: (Types.Timestamp) , "startedAt" :: Maybe (Types.Timestamp) , "completedAt" :: Maybe (Types.Timestamp) , "stateChangedAt" :: (Types.Timestamp) , "dataCollected" :: (Bool) , "stateChanges" :: (AssessmentRunStateChangeList) , "notifications" :: (AssessmentRunNotificationList) , "findingCounts" :: (AssessmentRunFindingCounts) } -> {"arn" :: (Arn) , "name" :: (AssessmentRunName) , "assessmentTemplateArn" :: (Arn) , "state" :: (AssessmentRunState) , "durationInSeconds" :: (AssessmentRunDuration) , "rulesPackageArns" :: (AssessmentRulesPackageArnList) , "userAttributesForFindings" :: (UserAttributeList) , "createdAt" :: (Types.Timestamp) , "startedAt" :: Maybe (Types.Timestamp) , "completedAt" :: Maybe (Types.Timestamp) , "stateChangedAt" :: (Types.Timestamp) , "dataCollected" :: (Bool) , "stateChanges" :: (AssessmentRunStateChangeList) , "notifications" :: (AssessmentRunNotificationList) , "findingCounts" :: (AssessmentRunFindingCounts) } ) -> AssessmentRun
newAssessmentRun' _arn _assessmentTemplateArn _createdAt _dataCollected _durationInSeconds _findingCounts _name _notifications _rulesPackageArns _state _stateChangedAt _stateChanges _userAttributesForFindings customize = (AssessmentRun <<< customize) { "arn": _arn, "assessmentTemplateArn": _assessmentTemplateArn, "createdAt": _createdAt, "dataCollected": _dataCollected, "durationInSeconds": _durationInSeconds, "findingCounts": _findingCounts, "name": _name, "notifications": _notifications, "rulesPackageArns": _rulesPackageArns, "state": _state, "stateChangedAt": _stateChangedAt, "stateChanges": _stateChanges, "userAttributesForFindings": _userAttributesForFindings, "completedAt": Nothing, "startedAt": Nothing }



-- | <p>Contains information about an Amazon Inspector agent. This data type is used as a response element in the <a>ListAssessmentRunAgents</a> action.</p>
newtype AssessmentRunAgent = AssessmentRunAgent 
  { "agentId" :: (AgentId)
  , "assessmentRunArn" :: (Arn)
  , "agentHealth" :: (AgentHealth)
  , "agentHealthCode" :: (AgentHealthCode)
  , "agentHealthDetails" :: Maybe (Message)
  , "autoScalingGroup" :: Maybe (AutoScalingGroup)
  , "telemetryMetadata" :: (TelemetryMetadataList)
  }
derive instance newtypeAssessmentRunAgent :: Newtype AssessmentRunAgent _
derive instance repGenericAssessmentRunAgent :: Generic AssessmentRunAgent _
instance showAssessmentRunAgent :: Show AssessmentRunAgent where show = genericShow
instance decodeAssessmentRunAgent :: Decode AssessmentRunAgent where decode = genericDecode options
instance encodeAssessmentRunAgent :: Encode AssessmentRunAgent where encode = genericEncode options

-- | Constructs AssessmentRunAgent from required parameters
newAssessmentRunAgent :: AgentHealth -> AgentHealthCode -> AgentId -> Arn -> TelemetryMetadataList -> AssessmentRunAgent
newAssessmentRunAgent _agentHealth _agentHealthCode _agentId _assessmentRunArn _telemetryMetadata = AssessmentRunAgent { "agentHealth": _agentHealth, "agentHealthCode": _agentHealthCode, "agentId": _agentId, "assessmentRunArn": _assessmentRunArn, "telemetryMetadata": _telemetryMetadata, "agentHealthDetails": Nothing, "autoScalingGroup": Nothing }

-- | Constructs AssessmentRunAgent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssessmentRunAgent' :: AgentHealth -> AgentHealthCode -> AgentId -> Arn -> TelemetryMetadataList -> ( { "agentId" :: (AgentId) , "assessmentRunArn" :: (Arn) , "agentHealth" :: (AgentHealth) , "agentHealthCode" :: (AgentHealthCode) , "agentHealthDetails" :: Maybe (Message) , "autoScalingGroup" :: Maybe (AutoScalingGroup) , "telemetryMetadata" :: (TelemetryMetadataList) } -> {"agentId" :: (AgentId) , "assessmentRunArn" :: (Arn) , "agentHealth" :: (AgentHealth) , "agentHealthCode" :: (AgentHealthCode) , "agentHealthDetails" :: Maybe (Message) , "autoScalingGroup" :: Maybe (AutoScalingGroup) , "telemetryMetadata" :: (TelemetryMetadataList) } ) -> AssessmentRunAgent
newAssessmentRunAgent' _agentHealth _agentHealthCode _agentId _assessmentRunArn _telemetryMetadata customize = (AssessmentRunAgent <<< customize) { "agentHealth": _agentHealth, "agentHealthCode": _agentHealthCode, "agentId": _agentId, "assessmentRunArn": _assessmentRunArn, "telemetryMetadata": _telemetryMetadata, "agentHealthDetails": Nothing, "autoScalingGroup": Nothing }



newtype AssessmentRunAgentList = AssessmentRunAgentList (Array AssessmentRunAgent)
derive instance newtypeAssessmentRunAgentList :: Newtype AssessmentRunAgentList _
derive instance repGenericAssessmentRunAgentList :: Generic AssessmentRunAgentList _
instance showAssessmentRunAgentList :: Show AssessmentRunAgentList where show = genericShow
instance decodeAssessmentRunAgentList :: Decode AssessmentRunAgentList where decode = genericDecode options
instance encodeAssessmentRunAgentList :: Encode AssessmentRunAgentList where encode = genericEncode options



newtype AssessmentRunDuration = AssessmentRunDuration Int
derive instance newtypeAssessmentRunDuration :: Newtype AssessmentRunDuration _
derive instance repGenericAssessmentRunDuration :: Generic AssessmentRunDuration _
instance showAssessmentRunDuration :: Show AssessmentRunDuration where show = genericShow
instance decodeAssessmentRunDuration :: Decode AssessmentRunDuration where decode = genericDecode options
instance encodeAssessmentRunDuration :: Encode AssessmentRunDuration where encode = genericEncode options



-- | <p>Used as the request parameter in the <a>ListAssessmentRuns</a> action.</p>
newtype AssessmentRunFilter = AssessmentRunFilter 
  { "namePattern" :: Maybe (NamePattern)
  , "states" :: Maybe (AssessmentRunStateList)
  , "durationRange" :: Maybe (DurationRange)
  , "rulesPackageArns" :: Maybe (FilterRulesPackageArnList)
  , "startTimeRange" :: Maybe (TimestampRange)
  , "completionTimeRange" :: Maybe (TimestampRange)
  , "stateChangeTimeRange" :: Maybe (TimestampRange)
  }
derive instance newtypeAssessmentRunFilter :: Newtype AssessmentRunFilter _
derive instance repGenericAssessmentRunFilter :: Generic AssessmentRunFilter _
instance showAssessmentRunFilter :: Show AssessmentRunFilter where show = genericShow
instance decodeAssessmentRunFilter :: Decode AssessmentRunFilter where decode = genericDecode options
instance encodeAssessmentRunFilter :: Encode AssessmentRunFilter where encode = genericEncode options

-- | Constructs AssessmentRunFilter from required parameters
newAssessmentRunFilter :: AssessmentRunFilter
newAssessmentRunFilter  = AssessmentRunFilter { "completionTimeRange": Nothing, "durationRange": Nothing, "namePattern": Nothing, "rulesPackageArns": Nothing, "startTimeRange": Nothing, "stateChangeTimeRange": Nothing, "states": Nothing }

-- | Constructs AssessmentRunFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssessmentRunFilter' :: ( { "namePattern" :: Maybe (NamePattern) , "states" :: Maybe (AssessmentRunStateList) , "durationRange" :: Maybe (DurationRange) , "rulesPackageArns" :: Maybe (FilterRulesPackageArnList) , "startTimeRange" :: Maybe (TimestampRange) , "completionTimeRange" :: Maybe (TimestampRange) , "stateChangeTimeRange" :: Maybe (TimestampRange) } -> {"namePattern" :: Maybe (NamePattern) , "states" :: Maybe (AssessmentRunStateList) , "durationRange" :: Maybe (DurationRange) , "rulesPackageArns" :: Maybe (FilterRulesPackageArnList) , "startTimeRange" :: Maybe (TimestampRange) , "completionTimeRange" :: Maybe (TimestampRange) , "stateChangeTimeRange" :: Maybe (TimestampRange) } ) -> AssessmentRunFilter
newAssessmentRunFilter'  customize = (AssessmentRunFilter <<< customize) { "completionTimeRange": Nothing, "durationRange": Nothing, "namePattern": Nothing, "rulesPackageArns": Nothing, "startTimeRange": Nothing, "stateChangeTimeRange": Nothing, "states": Nothing }



newtype AssessmentRunFindingCounts = AssessmentRunFindingCounts (StrMap.StrMap FindingCount)
derive instance newtypeAssessmentRunFindingCounts :: Newtype AssessmentRunFindingCounts _
derive instance repGenericAssessmentRunFindingCounts :: Generic AssessmentRunFindingCounts _
instance showAssessmentRunFindingCounts :: Show AssessmentRunFindingCounts where show = genericShow
instance decodeAssessmentRunFindingCounts :: Decode AssessmentRunFindingCounts where decode = genericDecode options
instance encodeAssessmentRunFindingCounts :: Encode AssessmentRunFindingCounts where encode = genericEncode options



newtype AssessmentRunInProgressArnList = AssessmentRunInProgressArnList (Array Arn)
derive instance newtypeAssessmentRunInProgressArnList :: Newtype AssessmentRunInProgressArnList _
derive instance repGenericAssessmentRunInProgressArnList :: Generic AssessmentRunInProgressArnList _
instance showAssessmentRunInProgressArnList :: Show AssessmentRunInProgressArnList where show = genericShow
instance decodeAssessmentRunInProgressArnList :: Decode AssessmentRunInProgressArnList where decode = genericDecode options
instance encodeAssessmentRunInProgressArnList :: Encode AssessmentRunInProgressArnList where encode = genericEncode options



-- | <p>You cannot perform a specified action if an assessment run is currently in progress.</p>
newtype AssessmentRunInProgressException = AssessmentRunInProgressException 
  { "message" :: (ErrorMessage)
  , "assessmentRunArns" :: (AssessmentRunInProgressArnList)
  , "assessmentRunArnsTruncated" :: (Bool)
  , "canRetry" :: (Bool)
  }
derive instance newtypeAssessmentRunInProgressException :: Newtype AssessmentRunInProgressException _
derive instance repGenericAssessmentRunInProgressException :: Generic AssessmentRunInProgressException _
instance showAssessmentRunInProgressException :: Show AssessmentRunInProgressException where show = genericShow
instance decodeAssessmentRunInProgressException :: Decode AssessmentRunInProgressException where decode = genericDecode options
instance encodeAssessmentRunInProgressException :: Encode AssessmentRunInProgressException where encode = genericEncode options

-- | Constructs AssessmentRunInProgressException from required parameters
newAssessmentRunInProgressException :: AssessmentRunInProgressArnList -> Bool -> Bool -> ErrorMessage -> AssessmentRunInProgressException
newAssessmentRunInProgressException _assessmentRunArns _assessmentRunArnsTruncated _canRetry _message = AssessmentRunInProgressException { "assessmentRunArns": _assessmentRunArns, "assessmentRunArnsTruncated": _assessmentRunArnsTruncated, "canRetry": _canRetry, "message": _message }

-- | Constructs AssessmentRunInProgressException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssessmentRunInProgressException' :: AssessmentRunInProgressArnList -> Bool -> Bool -> ErrorMessage -> ( { "message" :: (ErrorMessage) , "assessmentRunArns" :: (AssessmentRunInProgressArnList) , "assessmentRunArnsTruncated" :: (Bool) , "canRetry" :: (Bool) } -> {"message" :: (ErrorMessage) , "assessmentRunArns" :: (AssessmentRunInProgressArnList) , "assessmentRunArnsTruncated" :: (Bool) , "canRetry" :: (Bool) } ) -> AssessmentRunInProgressException
newAssessmentRunInProgressException' _assessmentRunArns _assessmentRunArnsTruncated _canRetry _message customize = (AssessmentRunInProgressException <<< customize) { "assessmentRunArns": _assessmentRunArns, "assessmentRunArnsTruncated": _assessmentRunArnsTruncated, "canRetry": _canRetry, "message": _message }



newtype AssessmentRunList = AssessmentRunList (Array AssessmentRun)
derive instance newtypeAssessmentRunList :: Newtype AssessmentRunList _
derive instance repGenericAssessmentRunList :: Generic AssessmentRunList _
instance showAssessmentRunList :: Show AssessmentRunList where show = genericShow
instance decodeAssessmentRunList :: Decode AssessmentRunList where decode = genericDecode options
instance encodeAssessmentRunList :: Encode AssessmentRunList where encode = genericEncode options



newtype AssessmentRunName = AssessmentRunName String
derive instance newtypeAssessmentRunName :: Newtype AssessmentRunName _
derive instance repGenericAssessmentRunName :: Generic AssessmentRunName _
instance showAssessmentRunName :: Show AssessmentRunName where show = genericShow
instance decodeAssessmentRunName :: Decode AssessmentRunName where decode = genericDecode options
instance encodeAssessmentRunName :: Encode AssessmentRunName where encode = genericEncode options



-- | <p>Used as one of the elements of the <a>AssessmentRun</a> data type.</p>
newtype AssessmentRunNotification = AssessmentRunNotification 
  { "date" :: (Types.Timestamp)
  , "event" :: (InspectorEvent)
  , "message" :: Maybe (Message)
  , "error" :: (Bool)
  , "snsTopicArn" :: Maybe (Arn)
  , "snsPublishStatusCode" :: Maybe (AssessmentRunNotificationSnsStatusCode)
  }
derive instance newtypeAssessmentRunNotification :: Newtype AssessmentRunNotification _
derive instance repGenericAssessmentRunNotification :: Generic AssessmentRunNotification _
instance showAssessmentRunNotification :: Show AssessmentRunNotification where show = genericShow
instance decodeAssessmentRunNotification :: Decode AssessmentRunNotification where decode = genericDecode options
instance encodeAssessmentRunNotification :: Encode AssessmentRunNotification where encode = genericEncode options

-- | Constructs AssessmentRunNotification from required parameters
newAssessmentRunNotification :: Types.Timestamp -> Bool -> InspectorEvent -> AssessmentRunNotification
newAssessmentRunNotification _date _error _event = AssessmentRunNotification { "date": _date, "error": _error, "event": _event, "message": Nothing, "snsPublishStatusCode": Nothing, "snsTopicArn": Nothing }

-- | Constructs AssessmentRunNotification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssessmentRunNotification' :: Types.Timestamp -> Bool -> InspectorEvent -> ( { "date" :: (Types.Timestamp) , "event" :: (InspectorEvent) , "message" :: Maybe (Message) , "error" :: (Bool) , "snsTopicArn" :: Maybe (Arn) , "snsPublishStatusCode" :: Maybe (AssessmentRunNotificationSnsStatusCode) } -> {"date" :: (Types.Timestamp) , "event" :: (InspectorEvent) , "message" :: Maybe (Message) , "error" :: (Bool) , "snsTopicArn" :: Maybe (Arn) , "snsPublishStatusCode" :: Maybe (AssessmentRunNotificationSnsStatusCode) } ) -> AssessmentRunNotification
newAssessmentRunNotification' _date _error _event customize = (AssessmentRunNotification <<< customize) { "date": _date, "error": _error, "event": _event, "message": Nothing, "snsPublishStatusCode": Nothing, "snsTopicArn": Nothing }



newtype AssessmentRunNotificationList = AssessmentRunNotificationList (Array AssessmentRunNotification)
derive instance newtypeAssessmentRunNotificationList :: Newtype AssessmentRunNotificationList _
derive instance repGenericAssessmentRunNotificationList :: Generic AssessmentRunNotificationList _
instance showAssessmentRunNotificationList :: Show AssessmentRunNotificationList where show = genericShow
instance decodeAssessmentRunNotificationList :: Decode AssessmentRunNotificationList where decode = genericDecode options
instance encodeAssessmentRunNotificationList :: Encode AssessmentRunNotificationList where encode = genericEncode options



newtype AssessmentRunNotificationSnsStatusCode = AssessmentRunNotificationSnsStatusCode String
derive instance newtypeAssessmentRunNotificationSnsStatusCode :: Newtype AssessmentRunNotificationSnsStatusCode _
derive instance repGenericAssessmentRunNotificationSnsStatusCode :: Generic AssessmentRunNotificationSnsStatusCode _
instance showAssessmentRunNotificationSnsStatusCode :: Show AssessmentRunNotificationSnsStatusCode where show = genericShow
instance decodeAssessmentRunNotificationSnsStatusCode :: Decode AssessmentRunNotificationSnsStatusCode where decode = genericDecode options
instance encodeAssessmentRunNotificationSnsStatusCode :: Encode AssessmentRunNotificationSnsStatusCode where encode = genericEncode options



newtype AssessmentRunState = AssessmentRunState String
derive instance newtypeAssessmentRunState :: Newtype AssessmentRunState _
derive instance repGenericAssessmentRunState :: Generic AssessmentRunState _
instance showAssessmentRunState :: Show AssessmentRunState where show = genericShow
instance decodeAssessmentRunState :: Decode AssessmentRunState where decode = genericDecode options
instance encodeAssessmentRunState :: Encode AssessmentRunState where encode = genericEncode options



-- | <p>Used as one of the elements of the <a>AssessmentRun</a> data type.</p>
newtype AssessmentRunStateChange = AssessmentRunStateChange 
  { "stateChangedAt" :: (Types.Timestamp)
  , "state" :: (AssessmentRunState)
  }
derive instance newtypeAssessmentRunStateChange :: Newtype AssessmentRunStateChange _
derive instance repGenericAssessmentRunStateChange :: Generic AssessmentRunStateChange _
instance showAssessmentRunStateChange :: Show AssessmentRunStateChange where show = genericShow
instance decodeAssessmentRunStateChange :: Decode AssessmentRunStateChange where decode = genericDecode options
instance encodeAssessmentRunStateChange :: Encode AssessmentRunStateChange where encode = genericEncode options

-- | Constructs AssessmentRunStateChange from required parameters
newAssessmentRunStateChange :: AssessmentRunState -> Types.Timestamp -> AssessmentRunStateChange
newAssessmentRunStateChange _state _stateChangedAt = AssessmentRunStateChange { "state": _state, "stateChangedAt": _stateChangedAt }

-- | Constructs AssessmentRunStateChange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssessmentRunStateChange' :: AssessmentRunState -> Types.Timestamp -> ( { "stateChangedAt" :: (Types.Timestamp) , "state" :: (AssessmentRunState) } -> {"stateChangedAt" :: (Types.Timestamp) , "state" :: (AssessmentRunState) } ) -> AssessmentRunStateChange
newAssessmentRunStateChange' _state _stateChangedAt customize = (AssessmentRunStateChange <<< customize) { "state": _state, "stateChangedAt": _stateChangedAt }



newtype AssessmentRunStateChangeList = AssessmentRunStateChangeList (Array AssessmentRunStateChange)
derive instance newtypeAssessmentRunStateChangeList :: Newtype AssessmentRunStateChangeList _
derive instance repGenericAssessmentRunStateChangeList :: Generic AssessmentRunStateChangeList _
instance showAssessmentRunStateChangeList :: Show AssessmentRunStateChangeList where show = genericShow
instance decodeAssessmentRunStateChangeList :: Decode AssessmentRunStateChangeList where decode = genericDecode options
instance encodeAssessmentRunStateChangeList :: Encode AssessmentRunStateChangeList where encode = genericEncode options



newtype AssessmentRunStateList = AssessmentRunStateList (Array AssessmentRunState)
derive instance newtypeAssessmentRunStateList :: Newtype AssessmentRunStateList _
derive instance repGenericAssessmentRunStateList :: Generic AssessmentRunStateList _
instance showAssessmentRunStateList :: Show AssessmentRunStateList where show = genericShow
instance decodeAssessmentRunStateList :: Decode AssessmentRunStateList where decode = genericDecode options
instance encodeAssessmentRunStateList :: Encode AssessmentRunStateList where encode = genericEncode options



-- | <p>Contains information about an Amazon Inspector application. This data type is used as the response element in the <a>DescribeAssessmentTargets</a> action.</p>
newtype AssessmentTarget = AssessmentTarget 
  { "arn" :: (Arn)
  , "name" :: (AssessmentTargetName)
  , "resourceGroupArn" :: (Arn)
  , "createdAt" :: (Types.Timestamp)
  , "updatedAt" :: (Types.Timestamp)
  }
derive instance newtypeAssessmentTarget :: Newtype AssessmentTarget _
derive instance repGenericAssessmentTarget :: Generic AssessmentTarget _
instance showAssessmentTarget :: Show AssessmentTarget where show = genericShow
instance decodeAssessmentTarget :: Decode AssessmentTarget where decode = genericDecode options
instance encodeAssessmentTarget :: Encode AssessmentTarget where encode = genericEncode options

-- | Constructs AssessmentTarget from required parameters
newAssessmentTarget :: Arn -> Types.Timestamp -> AssessmentTargetName -> Arn -> Types.Timestamp -> AssessmentTarget
newAssessmentTarget _arn _createdAt _name _resourceGroupArn _updatedAt = AssessmentTarget { "arn": _arn, "createdAt": _createdAt, "name": _name, "resourceGroupArn": _resourceGroupArn, "updatedAt": _updatedAt }

-- | Constructs AssessmentTarget's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssessmentTarget' :: Arn -> Types.Timestamp -> AssessmentTargetName -> Arn -> Types.Timestamp -> ( { "arn" :: (Arn) , "name" :: (AssessmentTargetName) , "resourceGroupArn" :: (Arn) , "createdAt" :: (Types.Timestamp) , "updatedAt" :: (Types.Timestamp) } -> {"arn" :: (Arn) , "name" :: (AssessmentTargetName) , "resourceGroupArn" :: (Arn) , "createdAt" :: (Types.Timestamp) , "updatedAt" :: (Types.Timestamp) } ) -> AssessmentTarget
newAssessmentTarget' _arn _createdAt _name _resourceGroupArn _updatedAt customize = (AssessmentTarget <<< customize) { "arn": _arn, "createdAt": _createdAt, "name": _name, "resourceGroupArn": _resourceGroupArn, "updatedAt": _updatedAt }



-- | <p>Used as the request parameter in the <a>ListAssessmentTargets</a> action.</p>
newtype AssessmentTargetFilter = AssessmentTargetFilter 
  { "assessmentTargetNamePattern" :: Maybe (NamePattern)
  }
derive instance newtypeAssessmentTargetFilter :: Newtype AssessmentTargetFilter _
derive instance repGenericAssessmentTargetFilter :: Generic AssessmentTargetFilter _
instance showAssessmentTargetFilter :: Show AssessmentTargetFilter where show = genericShow
instance decodeAssessmentTargetFilter :: Decode AssessmentTargetFilter where decode = genericDecode options
instance encodeAssessmentTargetFilter :: Encode AssessmentTargetFilter where encode = genericEncode options

-- | Constructs AssessmentTargetFilter from required parameters
newAssessmentTargetFilter :: AssessmentTargetFilter
newAssessmentTargetFilter  = AssessmentTargetFilter { "assessmentTargetNamePattern": Nothing }

-- | Constructs AssessmentTargetFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssessmentTargetFilter' :: ( { "assessmentTargetNamePattern" :: Maybe (NamePattern) } -> {"assessmentTargetNamePattern" :: Maybe (NamePattern) } ) -> AssessmentTargetFilter
newAssessmentTargetFilter'  customize = (AssessmentTargetFilter <<< customize) { "assessmentTargetNamePattern": Nothing }



newtype AssessmentTargetList = AssessmentTargetList (Array AssessmentTarget)
derive instance newtypeAssessmentTargetList :: Newtype AssessmentTargetList _
derive instance repGenericAssessmentTargetList :: Generic AssessmentTargetList _
instance showAssessmentTargetList :: Show AssessmentTargetList where show = genericShow
instance decodeAssessmentTargetList :: Decode AssessmentTargetList where decode = genericDecode options
instance encodeAssessmentTargetList :: Encode AssessmentTargetList where encode = genericEncode options



newtype AssessmentTargetName = AssessmentTargetName String
derive instance newtypeAssessmentTargetName :: Newtype AssessmentTargetName _
derive instance repGenericAssessmentTargetName :: Generic AssessmentTargetName _
instance showAssessmentTargetName :: Show AssessmentTargetName where show = genericShow
instance decodeAssessmentTargetName :: Decode AssessmentTargetName where decode = genericDecode options
instance encodeAssessmentTargetName :: Encode AssessmentTargetName where encode = genericEncode options



-- | <p>Contains information about an Amazon Inspector assessment template. This data type is used as the response element in the <a>DescribeAssessmentTemplates</a> action.</p>
newtype AssessmentTemplate = AssessmentTemplate 
  { "arn" :: (Arn)
  , "name" :: (AssessmentTemplateName)
  , "assessmentTargetArn" :: (Arn)
  , "durationInSeconds" :: (AssessmentRunDuration)
  , "rulesPackageArns" :: (AssessmentTemplateRulesPackageArnList)
  , "userAttributesForFindings" :: (UserAttributeList)
  , "lastAssessmentRunArn" :: Maybe (Arn)
  , "assessmentRunCount" :: (ArnCount)
  , "createdAt" :: (Types.Timestamp)
  }
derive instance newtypeAssessmentTemplate :: Newtype AssessmentTemplate _
derive instance repGenericAssessmentTemplate :: Generic AssessmentTemplate _
instance showAssessmentTemplate :: Show AssessmentTemplate where show = genericShow
instance decodeAssessmentTemplate :: Decode AssessmentTemplate where decode = genericDecode options
instance encodeAssessmentTemplate :: Encode AssessmentTemplate where encode = genericEncode options

-- | Constructs AssessmentTemplate from required parameters
newAssessmentTemplate :: Arn -> ArnCount -> Arn -> Types.Timestamp -> AssessmentRunDuration -> AssessmentTemplateName -> AssessmentTemplateRulesPackageArnList -> UserAttributeList -> AssessmentTemplate
newAssessmentTemplate _arn _assessmentRunCount _assessmentTargetArn _createdAt _durationInSeconds _name _rulesPackageArns _userAttributesForFindings = AssessmentTemplate { "arn": _arn, "assessmentRunCount": _assessmentRunCount, "assessmentTargetArn": _assessmentTargetArn, "createdAt": _createdAt, "durationInSeconds": _durationInSeconds, "name": _name, "rulesPackageArns": _rulesPackageArns, "userAttributesForFindings": _userAttributesForFindings, "lastAssessmentRunArn": Nothing }

-- | Constructs AssessmentTemplate's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssessmentTemplate' :: Arn -> ArnCount -> Arn -> Types.Timestamp -> AssessmentRunDuration -> AssessmentTemplateName -> AssessmentTemplateRulesPackageArnList -> UserAttributeList -> ( { "arn" :: (Arn) , "name" :: (AssessmentTemplateName) , "assessmentTargetArn" :: (Arn) , "durationInSeconds" :: (AssessmentRunDuration) , "rulesPackageArns" :: (AssessmentTemplateRulesPackageArnList) , "userAttributesForFindings" :: (UserAttributeList) , "lastAssessmentRunArn" :: Maybe (Arn) , "assessmentRunCount" :: (ArnCount) , "createdAt" :: (Types.Timestamp) } -> {"arn" :: (Arn) , "name" :: (AssessmentTemplateName) , "assessmentTargetArn" :: (Arn) , "durationInSeconds" :: (AssessmentRunDuration) , "rulesPackageArns" :: (AssessmentTemplateRulesPackageArnList) , "userAttributesForFindings" :: (UserAttributeList) , "lastAssessmentRunArn" :: Maybe (Arn) , "assessmentRunCount" :: (ArnCount) , "createdAt" :: (Types.Timestamp) } ) -> AssessmentTemplate
newAssessmentTemplate' _arn _assessmentRunCount _assessmentTargetArn _createdAt _durationInSeconds _name _rulesPackageArns _userAttributesForFindings customize = (AssessmentTemplate <<< customize) { "arn": _arn, "assessmentRunCount": _assessmentRunCount, "assessmentTargetArn": _assessmentTargetArn, "createdAt": _createdAt, "durationInSeconds": _durationInSeconds, "name": _name, "rulesPackageArns": _rulesPackageArns, "userAttributesForFindings": _userAttributesForFindings, "lastAssessmentRunArn": Nothing }



-- | <p>Used as the request parameter in the <a>ListAssessmentTemplates</a> action.</p>
newtype AssessmentTemplateFilter = AssessmentTemplateFilter 
  { "namePattern" :: Maybe (NamePattern)
  , "durationRange" :: Maybe (DurationRange)
  , "rulesPackageArns" :: Maybe (FilterRulesPackageArnList)
  }
derive instance newtypeAssessmentTemplateFilter :: Newtype AssessmentTemplateFilter _
derive instance repGenericAssessmentTemplateFilter :: Generic AssessmentTemplateFilter _
instance showAssessmentTemplateFilter :: Show AssessmentTemplateFilter where show = genericShow
instance decodeAssessmentTemplateFilter :: Decode AssessmentTemplateFilter where decode = genericDecode options
instance encodeAssessmentTemplateFilter :: Encode AssessmentTemplateFilter where encode = genericEncode options

-- | Constructs AssessmentTemplateFilter from required parameters
newAssessmentTemplateFilter :: AssessmentTemplateFilter
newAssessmentTemplateFilter  = AssessmentTemplateFilter { "durationRange": Nothing, "namePattern": Nothing, "rulesPackageArns": Nothing }

-- | Constructs AssessmentTemplateFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssessmentTemplateFilter' :: ( { "namePattern" :: Maybe (NamePattern) , "durationRange" :: Maybe (DurationRange) , "rulesPackageArns" :: Maybe (FilterRulesPackageArnList) } -> {"namePattern" :: Maybe (NamePattern) , "durationRange" :: Maybe (DurationRange) , "rulesPackageArns" :: Maybe (FilterRulesPackageArnList) } ) -> AssessmentTemplateFilter
newAssessmentTemplateFilter'  customize = (AssessmentTemplateFilter <<< customize) { "durationRange": Nothing, "namePattern": Nothing, "rulesPackageArns": Nothing }



newtype AssessmentTemplateList = AssessmentTemplateList (Array AssessmentTemplate)
derive instance newtypeAssessmentTemplateList :: Newtype AssessmentTemplateList _
derive instance repGenericAssessmentTemplateList :: Generic AssessmentTemplateList _
instance showAssessmentTemplateList :: Show AssessmentTemplateList where show = genericShow
instance decodeAssessmentTemplateList :: Decode AssessmentTemplateList where decode = genericDecode options
instance encodeAssessmentTemplateList :: Encode AssessmentTemplateList where encode = genericEncode options



newtype AssessmentTemplateName = AssessmentTemplateName String
derive instance newtypeAssessmentTemplateName :: Newtype AssessmentTemplateName _
derive instance repGenericAssessmentTemplateName :: Generic AssessmentTemplateName _
instance showAssessmentTemplateName :: Show AssessmentTemplateName where show = genericShow
instance decodeAssessmentTemplateName :: Decode AssessmentTemplateName where decode = genericDecode options
instance encodeAssessmentTemplateName :: Encode AssessmentTemplateName where encode = genericEncode options



newtype AssessmentTemplateRulesPackageArnList = AssessmentTemplateRulesPackageArnList (Array Arn)
derive instance newtypeAssessmentTemplateRulesPackageArnList :: Newtype AssessmentTemplateRulesPackageArnList _
derive instance repGenericAssessmentTemplateRulesPackageArnList :: Generic AssessmentTemplateRulesPackageArnList _
instance showAssessmentTemplateRulesPackageArnList :: Show AssessmentTemplateRulesPackageArnList where show = genericShow
instance decodeAssessmentTemplateRulesPackageArnList :: Decode AssessmentTemplateRulesPackageArnList where decode = genericDecode options
instance encodeAssessmentTemplateRulesPackageArnList :: Encode AssessmentTemplateRulesPackageArnList where encode = genericEncode options



-- | <p>A collection of attributes of the host from which the finding is generated.</p>
newtype AssetAttributes = AssetAttributes 
  { "schemaVersion" :: (NumericVersion)
  , "agentId" :: Maybe (AgentId)
  , "autoScalingGroup" :: Maybe (AutoScalingGroup)
  , "amiId" :: Maybe (AmiId)
  , "hostname" :: Maybe (Hostname)
  , "ipv4Addresses" :: Maybe (Ipv4AddressList)
  }
derive instance newtypeAssetAttributes :: Newtype AssetAttributes _
derive instance repGenericAssetAttributes :: Generic AssetAttributes _
instance showAssetAttributes :: Show AssetAttributes where show = genericShow
instance decodeAssetAttributes :: Decode AssetAttributes where decode = genericDecode options
instance encodeAssetAttributes :: Encode AssetAttributes where encode = genericEncode options

-- | Constructs AssetAttributes from required parameters
newAssetAttributes :: NumericVersion -> AssetAttributes
newAssetAttributes _schemaVersion = AssetAttributes { "schemaVersion": _schemaVersion, "agentId": Nothing, "amiId": Nothing, "autoScalingGroup": Nothing, "hostname": Nothing, "ipv4Addresses": Nothing }

-- | Constructs AssetAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAssetAttributes' :: NumericVersion -> ( { "schemaVersion" :: (NumericVersion) , "agentId" :: Maybe (AgentId) , "autoScalingGroup" :: Maybe (AutoScalingGroup) , "amiId" :: Maybe (AmiId) , "hostname" :: Maybe (Hostname) , "ipv4Addresses" :: Maybe (Ipv4AddressList) } -> {"schemaVersion" :: (NumericVersion) , "agentId" :: Maybe (AgentId) , "autoScalingGroup" :: Maybe (AutoScalingGroup) , "amiId" :: Maybe (AmiId) , "hostname" :: Maybe (Hostname) , "ipv4Addresses" :: Maybe (Ipv4AddressList) } ) -> AssetAttributes
newAssetAttributes' _schemaVersion customize = (AssetAttributes <<< customize) { "schemaVersion": _schemaVersion, "agentId": Nothing, "amiId": Nothing, "autoScalingGroup": Nothing, "hostname": Nothing, "ipv4Addresses": Nothing }



newtype AssetType = AssetType String
derive instance newtypeAssetType :: Newtype AssetType _
derive instance repGenericAssetType :: Generic AssetType _
instance showAssetType :: Show AssetType where show = genericShow
instance decodeAssetType :: Decode AssetType where decode = genericDecode options
instance encodeAssetType :: Encode AssetType where encode = genericEncode options



-- | <p>This data type is used as a request parameter in the <a>AddAttributesToFindings</a> and <a>CreateAssessmentTemplate</a> actions.</p>
newtype Attribute = Attribute 
  { "key" :: (AttributeKey)
  , "value" :: Maybe (AttributeValue)
  }
derive instance newtypeAttribute :: Newtype Attribute _
derive instance repGenericAttribute :: Generic Attribute _
instance showAttribute :: Show Attribute where show = genericShow
instance decodeAttribute :: Decode Attribute where decode = genericDecode options
instance encodeAttribute :: Encode Attribute where encode = genericEncode options

-- | Constructs Attribute from required parameters
newAttribute :: AttributeKey -> Attribute
newAttribute _key = Attribute { "key": _key, "value": Nothing }

-- | Constructs Attribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttribute' :: AttributeKey -> ( { "key" :: (AttributeKey) , "value" :: Maybe (AttributeValue) } -> {"key" :: (AttributeKey) , "value" :: Maybe (AttributeValue) } ) -> Attribute
newAttribute' _key customize = (Attribute <<< customize) { "key": _key, "value": Nothing }



newtype AttributeKey = AttributeKey String
derive instance newtypeAttributeKey :: Newtype AttributeKey _
derive instance repGenericAttributeKey :: Generic AttributeKey _
instance showAttributeKey :: Show AttributeKey where show = genericShow
instance decodeAttributeKey :: Decode AttributeKey where decode = genericDecode options
instance encodeAttributeKey :: Encode AttributeKey where encode = genericEncode options



newtype AttributeList = AttributeList (Array Attribute)
derive instance newtypeAttributeList :: Newtype AttributeList _
derive instance repGenericAttributeList :: Generic AttributeList _
instance showAttributeList :: Show AttributeList where show = genericShow
instance decodeAttributeList :: Decode AttributeList where decode = genericDecode options
instance encodeAttributeList :: Encode AttributeList where encode = genericEncode options



newtype AttributeValue = AttributeValue String
derive instance newtypeAttributeValue :: Newtype AttributeValue _
derive instance repGenericAttributeValue :: Generic AttributeValue _
instance showAttributeValue :: Show AttributeValue where show = genericShow
instance decodeAttributeValue :: Decode AttributeValue where decode = genericDecode options
instance encodeAttributeValue :: Encode AttributeValue where encode = genericEncode options



newtype AutoScalingGroup = AutoScalingGroup String
derive instance newtypeAutoScalingGroup :: Newtype AutoScalingGroup _
derive instance repGenericAutoScalingGroup :: Generic AutoScalingGroup _
instance showAutoScalingGroup :: Show AutoScalingGroup where show = genericShow
instance decodeAutoScalingGroup :: Decode AutoScalingGroup where decode = genericDecode options
instance encodeAutoScalingGroup :: Encode AutoScalingGroup where encode = genericEncode options



newtype AutoScalingGroupList = AutoScalingGroupList (Array AutoScalingGroup)
derive instance newtypeAutoScalingGroupList :: Newtype AutoScalingGroupList _
derive instance repGenericAutoScalingGroupList :: Generic AutoScalingGroupList _
instance showAutoScalingGroupList :: Show AutoScalingGroupList where show = genericShow
instance decodeAutoScalingGroupList :: Decode AutoScalingGroupList where decode = genericDecode options
instance encodeAutoScalingGroupList :: Encode AutoScalingGroupList where encode = genericEncode options



newtype BatchDescribeArnList = BatchDescribeArnList (Array Arn)
derive instance newtypeBatchDescribeArnList :: Newtype BatchDescribeArnList _
derive instance repGenericBatchDescribeArnList :: Generic BatchDescribeArnList _
instance showBatchDescribeArnList :: Show BatchDescribeArnList where show = genericShow
instance decodeBatchDescribeArnList :: Decode BatchDescribeArnList where decode = genericDecode options
instance encodeBatchDescribeArnList :: Encode BatchDescribeArnList where encode = genericEncode options



newtype Bool = Bool Boolean
derive instance newtypeBool :: Newtype Bool _
derive instance repGenericBool :: Generic Bool _
instance showBool :: Show Bool where show = genericShow
instance decodeBool :: Decode Bool where decode = genericDecode options
instance encodeBool :: Encode Bool where encode = genericEncode options



newtype CreateAssessmentTargetRequest = CreateAssessmentTargetRequest 
  { "assessmentTargetName" :: (AssessmentTargetName)
  , "resourceGroupArn" :: (Arn)
  }
derive instance newtypeCreateAssessmentTargetRequest :: Newtype CreateAssessmentTargetRequest _
derive instance repGenericCreateAssessmentTargetRequest :: Generic CreateAssessmentTargetRequest _
instance showCreateAssessmentTargetRequest :: Show CreateAssessmentTargetRequest where show = genericShow
instance decodeCreateAssessmentTargetRequest :: Decode CreateAssessmentTargetRequest where decode = genericDecode options
instance encodeCreateAssessmentTargetRequest :: Encode CreateAssessmentTargetRequest where encode = genericEncode options

-- | Constructs CreateAssessmentTargetRequest from required parameters
newCreateAssessmentTargetRequest :: AssessmentTargetName -> Arn -> CreateAssessmentTargetRequest
newCreateAssessmentTargetRequest _assessmentTargetName _resourceGroupArn = CreateAssessmentTargetRequest { "assessmentTargetName": _assessmentTargetName, "resourceGroupArn": _resourceGroupArn }

-- | Constructs CreateAssessmentTargetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAssessmentTargetRequest' :: AssessmentTargetName -> Arn -> ( { "assessmentTargetName" :: (AssessmentTargetName) , "resourceGroupArn" :: (Arn) } -> {"assessmentTargetName" :: (AssessmentTargetName) , "resourceGroupArn" :: (Arn) } ) -> CreateAssessmentTargetRequest
newCreateAssessmentTargetRequest' _assessmentTargetName _resourceGroupArn customize = (CreateAssessmentTargetRequest <<< customize) { "assessmentTargetName": _assessmentTargetName, "resourceGroupArn": _resourceGroupArn }



newtype CreateAssessmentTargetResponse = CreateAssessmentTargetResponse 
  { "assessmentTargetArn" :: (Arn)
  }
derive instance newtypeCreateAssessmentTargetResponse :: Newtype CreateAssessmentTargetResponse _
derive instance repGenericCreateAssessmentTargetResponse :: Generic CreateAssessmentTargetResponse _
instance showCreateAssessmentTargetResponse :: Show CreateAssessmentTargetResponse where show = genericShow
instance decodeCreateAssessmentTargetResponse :: Decode CreateAssessmentTargetResponse where decode = genericDecode options
instance encodeCreateAssessmentTargetResponse :: Encode CreateAssessmentTargetResponse where encode = genericEncode options

-- | Constructs CreateAssessmentTargetResponse from required parameters
newCreateAssessmentTargetResponse :: Arn -> CreateAssessmentTargetResponse
newCreateAssessmentTargetResponse _assessmentTargetArn = CreateAssessmentTargetResponse { "assessmentTargetArn": _assessmentTargetArn }

-- | Constructs CreateAssessmentTargetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAssessmentTargetResponse' :: Arn -> ( { "assessmentTargetArn" :: (Arn) } -> {"assessmentTargetArn" :: (Arn) } ) -> CreateAssessmentTargetResponse
newCreateAssessmentTargetResponse' _assessmentTargetArn customize = (CreateAssessmentTargetResponse <<< customize) { "assessmentTargetArn": _assessmentTargetArn }



newtype CreateAssessmentTemplateRequest = CreateAssessmentTemplateRequest 
  { "assessmentTargetArn" :: (Arn)
  , "assessmentTemplateName" :: (AssessmentTemplateName)
  , "durationInSeconds" :: (AssessmentRunDuration)
  , "rulesPackageArns" :: (AssessmentTemplateRulesPackageArnList)
  , "userAttributesForFindings" :: Maybe (UserAttributeList)
  }
derive instance newtypeCreateAssessmentTemplateRequest :: Newtype CreateAssessmentTemplateRequest _
derive instance repGenericCreateAssessmentTemplateRequest :: Generic CreateAssessmentTemplateRequest _
instance showCreateAssessmentTemplateRequest :: Show CreateAssessmentTemplateRequest where show = genericShow
instance decodeCreateAssessmentTemplateRequest :: Decode CreateAssessmentTemplateRequest where decode = genericDecode options
instance encodeCreateAssessmentTemplateRequest :: Encode CreateAssessmentTemplateRequest where encode = genericEncode options

-- | Constructs CreateAssessmentTemplateRequest from required parameters
newCreateAssessmentTemplateRequest :: Arn -> AssessmentTemplateName -> AssessmentRunDuration -> AssessmentTemplateRulesPackageArnList -> CreateAssessmentTemplateRequest
newCreateAssessmentTemplateRequest _assessmentTargetArn _assessmentTemplateName _durationInSeconds _rulesPackageArns = CreateAssessmentTemplateRequest { "assessmentTargetArn": _assessmentTargetArn, "assessmentTemplateName": _assessmentTemplateName, "durationInSeconds": _durationInSeconds, "rulesPackageArns": _rulesPackageArns, "userAttributesForFindings": Nothing }

-- | Constructs CreateAssessmentTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAssessmentTemplateRequest' :: Arn -> AssessmentTemplateName -> AssessmentRunDuration -> AssessmentTemplateRulesPackageArnList -> ( { "assessmentTargetArn" :: (Arn) , "assessmentTemplateName" :: (AssessmentTemplateName) , "durationInSeconds" :: (AssessmentRunDuration) , "rulesPackageArns" :: (AssessmentTemplateRulesPackageArnList) , "userAttributesForFindings" :: Maybe (UserAttributeList) } -> {"assessmentTargetArn" :: (Arn) , "assessmentTemplateName" :: (AssessmentTemplateName) , "durationInSeconds" :: (AssessmentRunDuration) , "rulesPackageArns" :: (AssessmentTemplateRulesPackageArnList) , "userAttributesForFindings" :: Maybe (UserAttributeList) } ) -> CreateAssessmentTemplateRequest
newCreateAssessmentTemplateRequest' _assessmentTargetArn _assessmentTemplateName _durationInSeconds _rulesPackageArns customize = (CreateAssessmentTemplateRequest <<< customize) { "assessmentTargetArn": _assessmentTargetArn, "assessmentTemplateName": _assessmentTemplateName, "durationInSeconds": _durationInSeconds, "rulesPackageArns": _rulesPackageArns, "userAttributesForFindings": Nothing }



newtype CreateAssessmentTemplateResponse = CreateAssessmentTemplateResponse 
  { "assessmentTemplateArn" :: (Arn)
  }
derive instance newtypeCreateAssessmentTemplateResponse :: Newtype CreateAssessmentTemplateResponse _
derive instance repGenericCreateAssessmentTemplateResponse :: Generic CreateAssessmentTemplateResponse _
instance showCreateAssessmentTemplateResponse :: Show CreateAssessmentTemplateResponse where show = genericShow
instance decodeCreateAssessmentTemplateResponse :: Decode CreateAssessmentTemplateResponse where decode = genericDecode options
instance encodeCreateAssessmentTemplateResponse :: Encode CreateAssessmentTemplateResponse where encode = genericEncode options

-- | Constructs CreateAssessmentTemplateResponse from required parameters
newCreateAssessmentTemplateResponse :: Arn -> CreateAssessmentTemplateResponse
newCreateAssessmentTemplateResponse _assessmentTemplateArn = CreateAssessmentTemplateResponse { "assessmentTemplateArn": _assessmentTemplateArn }

-- | Constructs CreateAssessmentTemplateResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAssessmentTemplateResponse' :: Arn -> ( { "assessmentTemplateArn" :: (Arn) } -> {"assessmentTemplateArn" :: (Arn) } ) -> CreateAssessmentTemplateResponse
newCreateAssessmentTemplateResponse' _assessmentTemplateArn customize = (CreateAssessmentTemplateResponse <<< customize) { "assessmentTemplateArn": _assessmentTemplateArn }



newtype CreateResourceGroupRequest = CreateResourceGroupRequest 
  { "resourceGroupTags" :: (ResourceGroupTags)
  }
derive instance newtypeCreateResourceGroupRequest :: Newtype CreateResourceGroupRequest _
derive instance repGenericCreateResourceGroupRequest :: Generic CreateResourceGroupRequest _
instance showCreateResourceGroupRequest :: Show CreateResourceGroupRequest where show = genericShow
instance decodeCreateResourceGroupRequest :: Decode CreateResourceGroupRequest where decode = genericDecode options
instance encodeCreateResourceGroupRequest :: Encode CreateResourceGroupRequest where encode = genericEncode options

-- | Constructs CreateResourceGroupRequest from required parameters
newCreateResourceGroupRequest :: ResourceGroupTags -> CreateResourceGroupRequest
newCreateResourceGroupRequest _resourceGroupTags = CreateResourceGroupRequest { "resourceGroupTags": _resourceGroupTags }

-- | Constructs CreateResourceGroupRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateResourceGroupRequest' :: ResourceGroupTags -> ( { "resourceGroupTags" :: (ResourceGroupTags) } -> {"resourceGroupTags" :: (ResourceGroupTags) } ) -> CreateResourceGroupRequest
newCreateResourceGroupRequest' _resourceGroupTags customize = (CreateResourceGroupRequest <<< customize) { "resourceGroupTags": _resourceGroupTags }



newtype CreateResourceGroupResponse = CreateResourceGroupResponse 
  { "resourceGroupArn" :: (Arn)
  }
derive instance newtypeCreateResourceGroupResponse :: Newtype CreateResourceGroupResponse _
derive instance repGenericCreateResourceGroupResponse :: Generic CreateResourceGroupResponse _
instance showCreateResourceGroupResponse :: Show CreateResourceGroupResponse where show = genericShow
instance decodeCreateResourceGroupResponse :: Decode CreateResourceGroupResponse where decode = genericDecode options
instance encodeCreateResourceGroupResponse :: Encode CreateResourceGroupResponse where encode = genericEncode options

-- | Constructs CreateResourceGroupResponse from required parameters
newCreateResourceGroupResponse :: Arn -> CreateResourceGroupResponse
newCreateResourceGroupResponse _resourceGroupArn = CreateResourceGroupResponse { "resourceGroupArn": _resourceGroupArn }

-- | Constructs CreateResourceGroupResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateResourceGroupResponse' :: Arn -> ( { "resourceGroupArn" :: (Arn) } -> {"resourceGroupArn" :: (Arn) } ) -> CreateResourceGroupResponse
newCreateResourceGroupResponse' _resourceGroupArn customize = (CreateResourceGroupResponse <<< customize) { "resourceGroupArn": _resourceGroupArn }



newtype DeleteAssessmentRunRequest = DeleteAssessmentRunRequest 
  { "assessmentRunArn" :: (Arn)
  }
derive instance newtypeDeleteAssessmentRunRequest :: Newtype DeleteAssessmentRunRequest _
derive instance repGenericDeleteAssessmentRunRequest :: Generic DeleteAssessmentRunRequest _
instance showDeleteAssessmentRunRequest :: Show DeleteAssessmentRunRequest where show = genericShow
instance decodeDeleteAssessmentRunRequest :: Decode DeleteAssessmentRunRequest where decode = genericDecode options
instance encodeDeleteAssessmentRunRequest :: Encode DeleteAssessmentRunRequest where encode = genericEncode options

-- | Constructs DeleteAssessmentRunRequest from required parameters
newDeleteAssessmentRunRequest :: Arn -> DeleteAssessmentRunRequest
newDeleteAssessmentRunRequest _assessmentRunArn = DeleteAssessmentRunRequest { "assessmentRunArn": _assessmentRunArn }

-- | Constructs DeleteAssessmentRunRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAssessmentRunRequest' :: Arn -> ( { "assessmentRunArn" :: (Arn) } -> {"assessmentRunArn" :: (Arn) } ) -> DeleteAssessmentRunRequest
newDeleteAssessmentRunRequest' _assessmentRunArn customize = (DeleteAssessmentRunRequest <<< customize) { "assessmentRunArn": _assessmentRunArn }



newtype DeleteAssessmentTargetRequest = DeleteAssessmentTargetRequest 
  { "assessmentTargetArn" :: (Arn)
  }
derive instance newtypeDeleteAssessmentTargetRequest :: Newtype DeleteAssessmentTargetRequest _
derive instance repGenericDeleteAssessmentTargetRequest :: Generic DeleteAssessmentTargetRequest _
instance showDeleteAssessmentTargetRequest :: Show DeleteAssessmentTargetRequest where show = genericShow
instance decodeDeleteAssessmentTargetRequest :: Decode DeleteAssessmentTargetRequest where decode = genericDecode options
instance encodeDeleteAssessmentTargetRequest :: Encode DeleteAssessmentTargetRequest where encode = genericEncode options

-- | Constructs DeleteAssessmentTargetRequest from required parameters
newDeleteAssessmentTargetRequest :: Arn -> DeleteAssessmentTargetRequest
newDeleteAssessmentTargetRequest _assessmentTargetArn = DeleteAssessmentTargetRequest { "assessmentTargetArn": _assessmentTargetArn }

-- | Constructs DeleteAssessmentTargetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAssessmentTargetRequest' :: Arn -> ( { "assessmentTargetArn" :: (Arn) } -> {"assessmentTargetArn" :: (Arn) } ) -> DeleteAssessmentTargetRequest
newDeleteAssessmentTargetRequest' _assessmentTargetArn customize = (DeleteAssessmentTargetRequest <<< customize) { "assessmentTargetArn": _assessmentTargetArn }



newtype DeleteAssessmentTemplateRequest = DeleteAssessmentTemplateRequest 
  { "assessmentTemplateArn" :: (Arn)
  }
derive instance newtypeDeleteAssessmentTemplateRequest :: Newtype DeleteAssessmentTemplateRequest _
derive instance repGenericDeleteAssessmentTemplateRequest :: Generic DeleteAssessmentTemplateRequest _
instance showDeleteAssessmentTemplateRequest :: Show DeleteAssessmentTemplateRequest where show = genericShow
instance decodeDeleteAssessmentTemplateRequest :: Decode DeleteAssessmentTemplateRequest where decode = genericDecode options
instance encodeDeleteAssessmentTemplateRequest :: Encode DeleteAssessmentTemplateRequest where encode = genericEncode options

-- | Constructs DeleteAssessmentTemplateRequest from required parameters
newDeleteAssessmentTemplateRequest :: Arn -> DeleteAssessmentTemplateRequest
newDeleteAssessmentTemplateRequest _assessmentTemplateArn = DeleteAssessmentTemplateRequest { "assessmentTemplateArn": _assessmentTemplateArn }

-- | Constructs DeleteAssessmentTemplateRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteAssessmentTemplateRequest' :: Arn -> ( { "assessmentTemplateArn" :: (Arn) } -> {"assessmentTemplateArn" :: (Arn) } ) -> DeleteAssessmentTemplateRequest
newDeleteAssessmentTemplateRequest' _assessmentTemplateArn customize = (DeleteAssessmentTemplateRequest <<< customize) { "assessmentTemplateArn": _assessmentTemplateArn }



newtype DescribeAssessmentRunsRequest = DescribeAssessmentRunsRequest 
  { "assessmentRunArns" :: (BatchDescribeArnList)
  }
derive instance newtypeDescribeAssessmentRunsRequest :: Newtype DescribeAssessmentRunsRequest _
derive instance repGenericDescribeAssessmentRunsRequest :: Generic DescribeAssessmentRunsRequest _
instance showDescribeAssessmentRunsRequest :: Show DescribeAssessmentRunsRequest where show = genericShow
instance decodeDescribeAssessmentRunsRequest :: Decode DescribeAssessmentRunsRequest where decode = genericDecode options
instance encodeDescribeAssessmentRunsRequest :: Encode DescribeAssessmentRunsRequest where encode = genericEncode options

-- | Constructs DescribeAssessmentRunsRequest from required parameters
newDescribeAssessmentRunsRequest :: BatchDescribeArnList -> DescribeAssessmentRunsRequest
newDescribeAssessmentRunsRequest _assessmentRunArns = DescribeAssessmentRunsRequest { "assessmentRunArns": _assessmentRunArns }

-- | Constructs DescribeAssessmentRunsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAssessmentRunsRequest' :: BatchDescribeArnList -> ( { "assessmentRunArns" :: (BatchDescribeArnList) } -> {"assessmentRunArns" :: (BatchDescribeArnList) } ) -> DescribeAssessmentRunsRequest
newDescribeAssessmentRunsRequest' _assessmentRunArns customize = (DescribeAssessmentRunsRequest <<< customize) { "assessmentRunArns": _assessmentRunArns }



newtype DescribeAssessmentRunsResponse = DescribeAssessmentRunsResponse 
  { "assessmentRuns" :: (AssessmentRunList)
  , "failedItems" :: (FailedItems)
  }
derive instance newtypeDescribeAssessmentRunsResponse :: Newtype DescribeAssessmentRunsResponse _
derive instance repGenericDescribeAssessmentRunsResponse :: Generic DescribeAssessmentRunsResponse _
instance showDescribeAssessmentRunsResponse :: Show DescribeAssessmentRunsResponse where show = genericShow
instance decodeDescribeAssessmentRunsResponse :: Decode DescribeAssessmentRunsResponse where decode = genericDecode options
instance encodeDescribeAssessmentRunsResponse :: Encode DescribeAssessmentRunsResponse where encode = genericEncode options

-- | Constructs DescribeAssessmentRunsResponse from required parameters
newDescribeAssessmentRunsResponse :: AssessmentRunList -> FailedItems -> DescribeAssessmentRunsResponse
newDescribeAssessmentRunsResponse _assessmentRuns _failedItems = DescribeAssessmentRunsResponse { "assessmentRuns": _assessmentRuns, "failedItems": _failedItems }

-- | Constructs DescribeAssessmentRunsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAssessmentRunsResponse' :: AssessmentRunList -> FailedItems -> ( { "assessmentRuns" :: (AssessmentRunList) , "failedItems" :: (FailedItems) } -> {"assessmentRuns" :: (AssessmentRunList) , "failedItems" :: (FailedItems) } ) -> DescribeAssessmentRunsResponse
newDescribeAssessmentRunsResponse' _assessmentRuns _failedItems customize = (DescribeAssessmentRunsResponse <<< customize) { "assessmentRuns": _assessmentRuns, "failedItems": _failedItems }



newtype DescribeAssessmentTargetsRequest = DescribeAssessmentTargetsRequest 
  { "assessmentTargetArns" :: (BatchDescribeArnList)
  }
derive instance newtypeDescribeAssessmentTargetsRequest :: Newtype DescribeAssessmentTargetsRequest _
derive instance repGenericDescribeAssessmentTargetsRequest :: Generic DescribeAssessmentTargetsRequest _
instance showDescribeAssessmentTargetsRequest :: Show DescribeAssessmentTargetsRequest where show = genericShow
instance decodeDescribeAssessmentTargetsRequest :: Decode DescribeAssessmentTargetsRequest where decode = genericDecode options
instance encodeDescribeAssessmentTargetsRequest :: Encode DescribeAssessmentTargetsRequest where encode = genericEncode options

-- | Constructs DescribeAssessmentTargetsRequest from required parameters
newDescribeAssessmentTargetsRequest :: BatchDescribeArnList -> DescribeAssessmentTargetsRequest
newDescribeAssessmentTargetsRequest _assessmentTargetArns = DescribeAssessmentTargetsRequest { "assessmentTargetArns": _assessmentTargetArns }

-- | Constructs DescribeAssessmentTargetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAssessmentTargetsRequest' :: BatchDescribeArnList -> ( { "assessmentTargetArns" :: (BatchDescribeArnList) } -> {"assessmentTargetArns" :: (BatchDescribeArnList) } ) -> DescribeAssessmentTargetsRequest
newDescribeAssessmentTargetsRequest' _assessmentTargetArns customize = (DescribeAssessmentTargetsRequest <<< customize) { "assessmentTargetArns": _assessmentTargetArns }



newtype DescribeAssessmentTargetsResponse = DescribeAssessmentTargetsResponse 
  { "assessmentTargets" :: (AssessmentTargetList)
  , "failedItems" :: (FailedItems)
  }
derive instance newtypeDescribeAssessmentTargetsResponse :: Newtype DescribeAssessmentTargetsResponse _
derive instance repGenericDescribeAssessmentTargetsResponse :: Generic DescribeAssessmentTargetsResponse _
instance showDescribeAssessmentTargetsResponse :: Show DescribeAssessmentTargetsResponse where show = genericShow
instance decodeDescribeAssessmentTargetsResponse :: Decode DescribeAssessmentTargetsResponse where decode = genericDecode options
instance encodeDescribeAssessmentTargetsResponse :: Encode DescribeAssessmentTargetsResponse where encode = genericEncode options

-- | Constructs DescribeAssessmentTargetsResponse from required parameters
newDescribeAssessmentTargetsResponse :: AssessmentTargetList -> FailedItems -> DescribeAssessmentTargetsResponse
newDescribeAssessmentTargetsResponse _assessmentTargets _failedItems = DescribeAssessmentTargetsResponse { "assessmentTargets": _assessmentTargets, "failedItems": _failedItems }

-- | Constructs DescribeAssessmentTargetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAssessmentTargetsResponse' :: AssessmentTargetList -> FailedItems -> ( { "assessmentTargets" :: (AssessmentTargetList) , "failedItems" :: (FailedItems) } -> {"assessmentTargets" :: (AssessmentTargetList) , "failedItems" :: (FailedItems) } ) -> DescribeAssessmentTargetsResponse
newDescribeAssessmentTargetsResponse' _assessmentTargets _failedItems customize = (DescribeAssessmentTargetsResponse <<< customize) { "assessmentTargets": _assessmentTargets, "failedItems": _failedItems }



newtype DescribeAssessmentTemplatesRequest = DescribeAssessmentTemplatesRequest 
  { "assessmentTemplateArns" :: (BatchDescribeArnList)
  }
derive instance newtypeDescribeAssessmentTemplatesRequest :: Newtype DescribeAssessmentTemplatesRequest _
derive instance repGenericDescribeAssessmentTemplatesRequest :: Generic DescribeAssessmentTemplatesRequest _
instance showDescribeAssessmentTemplatesRequest :: Show DescribeAssessmentTemplatesRequest where show = genericShow
instance decodeDescribeAssessmentTemplatesRequest :: Decode DescribeAssessmentTemplatesRequest where decode = genericDecode options
instance encodeDescribeAssessmentTemplatesRequest :: Encode DescribeAssessmentTemplatesRequest where encode = genericEncode options

-- | Constructs DescribeAssessmentTemplatesRequest from required parameters
newDescribeAssessmentTemplatesRequest :: BatchDescribeArnList -> DescribeAssessmentTemplatesRequest
newDescribeAssessmentTemplatesRequest _assessmentTemplateArns = DescribeAssessmentTemplatesRequest { "assessmentTemplateArns": _assessmentTemplateArns }

-- | Constructs DescribeAssessmentTemplatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAssessmentTemplatesRequest' :: BatchDescribeArnList -> ( { "assessmentTemplateArns" :: (BatchDescribeArnList) } -> {"assessmentTemplateArns" :: (BatchDescribeArnList) } ) -> DescribeAssessmentTemplatesRequest
newDescribeAssessmentTemplatesRequest' _assessmentTemplateArns customize = (DescribeAssessmentTemplatesRequest <<< customize) { "assessmentTemplateArns": _assessmentTemplateArns }



newtype DescribeAssessmentTemplatesResponse = DescribeAssessmentTemplatesResponse 
  { "assessmentTemplates" :: (AssessmentTemplateList)
  , "failedItems" :: (FailedItems)
  }
derive instance newtypeDescribeAssessmentTemplatesResponse :: Newtype DescribeAssessmentTemplatesResponse _
derive instance repGenericDescribeAssessmentTemplatesResponse :: Generic DescribeAssessmentTemplatesResponse _
instance showDescribeAssessmentTemplatesResponse :: Show DescribeAssessmentTemplatesResponse where show = genericShow
instance decodeDescribeAssessmentTemplatesResponse :: Decode DescribeAssessmentTemplatesResponse where decode = genericDecode options
instance encodeDescribeAssessmentTemplatesResponse :: Encode DescribeAssessmentTemplatesResponse where encode = genericEncode options

-- | Constructs DescribeAssessmentTemplatesResponse from required parameters
newDescribeAssessmentTemplatesResponse :: AssessmentTemplateList -> FailedItems -> DescribeAssessmentTemplatesResponse
newDescribeAssessmentTemplatesResponse _assessmentTemplates _failedItems = DescribeAssessmentTemplatesResponse { "assessmentTemplates": _assessmentTemplates, "failedItems": _failedItems }

-- | Constructs DescribeAssessmentTemplatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAssessmentTemplatesResponse' :: AssessmentTemplateList -> FailedItems -> ( { "assessmentTemplates" :: (AssessmentTemplateList) , "failedItems" :: (FailedItems) } -> {"assessmentTemplates" :: (AssessmentTemplateList) , "failedItems" :: (FailedItems) } ) -> DescribeAssessmentTemplatesResponse
newDescribeAssessmentTemplatesResponse' _assessmentTemplates _failedItems customize = (DescribeAssessmentTemplatesResponse <<< customize) { "assessmentTemplates": _assessmentTemplates, "failedItems": _failedItems }



newtype DescribeCrossAccountAccessRoleResponse = DescribeCrossAccountAccessRoleResponse 
  { "roleArn" :: (Arn)
  , "valid" :: (Bool)
  , "registeredAt" :: (Types.Timestamp)
  }
derive instance newtypeDescribeCrossAccountAccessRoleResponse :: Newtype DescribeCrossAccountAccessRoleResponse _
derive instance repGenericDescribeCrossAccountAccessRoleResponse :: Generic DescribeCrossAccountAccessRoleResponse _
instance showDescribeCrossAccountAccessRoleResponse :: Show DescribeCrossAccountAccessRoleResponse where show = genericShow
instance decodeDescribeCrossAccountAccessRoleResponse :: Decode DescribeCrossAccountAccessRoleResponse where decode = genericDecode options
instance encodeDescribeCrossAccountAccessRoleResponse :: Encode DescribeCrossAccountAccessRoleResponse where encode = genericEncode options

-- | Constructs DescribeCrossAccountAccessRoleResponse from required parameters
newDescribeCrossAccountAccessRoleResponse :: Types.Timestamp -> Arn -> Bool -> DescribeCrossAccountAccessRoleResponse
newDescribeCrossAccountAccessRoleResponse _registeredAt _roleArn _valid = DescribeCrossAccountAccessRoleResponse { "registeredAt": _registeredAt, "roleArn": _roleArn, "valid": _valid }

-- | Constructs DescribeCrossAccountAccessRoleResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCrossAccountAccessRoleResponse' :: Types.Timestamp -> Arn -> Bool -> ( { "roleArn" :: (Arn) , "valid" :: (Bool) , "registeredAt" :: (Types.Timestamp) } -> {"roleArn" :: (Arn) , "valid" :: (Bool) , "registeredAt" :: (Types.Timestamp) } ) -> DescribeCrossAccountAccessRoleResponse
newDescribeCrossAccountAccessRoleResponse' _registeredAt _roleArn _valid customize = (DescribeCrossAccountAccessRoleResponse <<< customize) { "registeredAt": _registeredAt, "roleArn": _roleArn, "valid": _valid }



newtype DescribeFindingsRequest = DescribeFindingsRequest 
  { "findingArns" :: (BatchDescribeArnList)
  , "locale" :: Maybe (Locale)
  }
derive instance newtypeDescribeFindingsRequest :: Newtype DescribeFindingsRequest _
derive instance repGenericDescribeFindingsRequest :: Generic DescribeFindingsRequest _
instance showDescribeFindingsRequest :: Show DescribeFindingsRequest where show = genericShow
instance decodeDescribeFindingsRequest :: Decode DescribeFindingsRequest where decode = genericDecode options
instance encodeDescribeFindingsRequest :: Encode DescribeFindingsRequest where encode = genericEncode options

-- | Constructs DescribeFindingsRequest from required parameters
newDescribeFindingsRequest :: BatchDescribeArnList -> DescribeFindingsRequest
newDescribeFindingsRequest _findingArns = DescribeFindingsRequest { "findingArns": _findingArns, "locale": Nothing }

-- | Constructs DescribeFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeFindingsRequest' :: BatchDescribeArnList -> ( { "findingArns" :: (BatchDescribeArnList) , "locale" :: Maybe (Locale) } -> {"findingArns" :: (BatchDescribeArnList) , "locale" :: Maybe (Locale) } ) -> DescribeFindingsRequest
newDescribeFindingsRequest' _findingArns customize = (DescribeFindingsRequest <<< customize) { "findingArns": _findingArns, "locale": Nothing }



newtype DescribeFindingsResponse = DescribeFindingsResponse 
  { "findings" :: (FindingList)
  , "failedItems" :: (FailedItems)
  }
derive instance newtypeDescribeFindingsResponse :: Newtype DescribeFindingsResponse _
derive instance repGenericDescribeFindingsResponse :: Generic DescribeFindingsResponse _
instance showDescribeFindingsResponse :: Show DescribeFindingsResponse where show = genericShow
instance decodeDescribeFindingsResponse :: Decode DescribeFindingsResponse where decode = genericDecode options
instance encodeDescribeFindingsResponse :: Encode DescribeFindingsResponse where encode = genericEncode options

-- | Constructs DescribeFindingsResponse from required parameters
newDescribeFindingsResponse :: FailedItems -> FindingList -> DescribeFindingsResponse
newDescribeFindingsResponse _failedItems _findings = DescribeFindingsResponse { "failedItems": _failedItems, "findings": _findings }

-- | Constructs DescribeFindingsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeFindingsResponse' :: FailedItems -> FindingList -> ( { "findings" :: (FindingList) , "failedItems" :: (FailedItems) } -> {"findings" :: (FindingList) , "failedItems" :: (FailedItems) } ) -> DescribeFindingsResponse
newDescribeFindingsResponse' _failedItems _findings customize = (DescribeFindingsResponse <<< customize) { "failedItems": _failedItems, "findings": _findings }



newtype DescribeResourceGroupsRequest = DescribeResourceGroupsRequest 
  { "resourceGroupArns" :: (BatchDescribeArnList)
  }
derive instance newtypeDescribeResourceGroupsRequest :: Newtype DescribeResourceGroupsRequest _
derive instance repGenericDescribeResourceGroupsRequest :: Generic DescribeResourceGroupsRequest _
instance showDescribeResourceGroupsRequest :: Show DescribeResourceGroupsRequest where show = genericShow
instance decodeDescribeResourceGroupsRequest :: Decode DescribeResourceGroupsRequest where decode = genericDecode options
instance encodeDescribeResourceGroupsRequest :: Encode DescribeResourceGroupsRequest where encode = genericEncode options

-- | Constructs DescribeResourceGroupsRequest from required parameters
newDescribeResourceGroupsRequest :: BatchDescribeArnList -> DescribeResourceGroupsRequest
newDescribeResourceGroupsRequest _resourceGroupArns = DescribeResourceGroupsRequest { "resourceGroupArns": _resourceGroupArns }

-- | Constructs DescribeResourceGroupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeResourceGroupsRequest' :: BatchDescribeArnList -> ( { "resourceGroupArns" :: (BatchDescribeArnList) } -> {"resourceGroupArns" :: (BatchDescribeArnList) } ) -> DescribeResourceGroupsRequest
newDescribeResourceGroupsRequest' _resourceGroupArns customize = (DescribeResourceGroupsRequest <<< customize) { "resourceGroupArns": _resourceGroupArns }



newtype DescribeResourceGroupsResponse = DescribeResourceGroupsResponse 
  { "resourceGroups" :: (ResourceGroupList)
  , "failedItems" :: (FailedItems)
  }
derive instance newtypeDescribeResourceGroupsResponse :: Newtype DescribeResourceGroupsResponse _
derive instance repGenericDescribeResourceGroupsResponse :: Generic DescribeResourceGroupsResponse _
instance showDescribeResourceGroupsResponse :: Show DescribeResourceGroupsResponse where show = genericShow
instance decodeDescribeResourceGroupsResponse :: Decode DescribeResourceGroupsResponse where decode = genericDecode options
instance encodeDescribeResourceGroupsResponse :: Encode DescribeResourceGroupsResponse where encode = genericEncode options

-- | Constructs DescribeResourceGroupsResponse from required parameters
newDescribeResourceGroupsResponse :: FailedItems -> ResourceGroupList -> DescribeResourceGroupsResponse
newDescribeResourceGroupsResponse _failedItems _resourceGroups = DescribeResourceGroupsResponse { "failedItems": _failedItems, "resourceGroups": _resourceGroups }

-- | Constructs DescribeResourceGroupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeResourceGroupsResponse' :: FailedItems -> ResourceGroupList -> ( { "resourceGroups" :: (ResourceGroupList) , "failedItems" :: (FailedItems) } -> {"resourceGroups" :: (ResourceGroupList) , "failedItems" :: (FailedItems) } ) -> DescribeResourceGroupsResponse
newDescribeResourceGroupsResponse' _failedItems _resourceGroups customize = (DescribeResourceGroupsResponse <<< customize) { "failedItems": _failedItems, "resourceGroups": _resourceGroups }



newtype DescribeRulesPackagesRequest = DescribeRulesPackagesRequest 
  { "rulesPackageArns" :: (BatchDescribeArnList)
  , "locale" :: Maybe (Locale)
  }
derive instance newtypeDescribeRulesPackagesRequest :: Newtype DescribeRulesPackagesRequest _
derive instance repGenericDescribeRulesPackagesRequest :: Generic DescribeRulesPackagesRequest _
instance showDescribeRulesPackagesRequest :: Show DescribeRulesPackagesRequest where show = genericShow
instance decodeDescribeRulesPackagesRequest :: Decode DescribeRulesPackagesRequest where decode = genericDecode options
instance encodeDescribeRulesPackagesRequest :: Encode DescribeRulesPackagesRequest where encode = genericEncode options

-- | Constructs DescribeRulesPackagesRequest from required parameters
newDescribeRulesPackagesRequest :: BatchDescribeArnList -> DescribeRulesPackagesRequest
newDescribeRulesPackagesRequest _rulesPackageArns = DescribeRulesPackagesRequest { "rulesPackageArns": _rulesPackageArns, "locale": Nothing }

-- | Constructs DescribeRulesPackagesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRulesPackagesRequest' :: BatchDescribeArnList -> ( { "rulesPackageArns" :: (BatchDescribeArnList) , "locale" :: Maybe (Locale) } -> {"rulesPackageArns" :: (BatchDescribeArnList) , "locale" :: Maybe (Locale) } ) -> DescribeRulesPackagesRequest
newDescribeRulesPackagesRequest' _rulesPackageArns customize = (DescribeRulesPackagesRequest <<< customize) { "rulesPackageArns": _rulesPackageArns, "locale": Nothing }



newtype DescribeRulesPackagesResponse = DescribeRulesPackagesResponse 
  { "rulesPackages" :: (RulesPackageList)
  , "failedItems" :: (FailedItems)
  }
derive instance newtypeDescribeRulesPackagesResponse :: Newtype DescribeRulesPackagesResponse _
derive instance repGenericDescribeRulesPackagesResponse :: Generic DescribeRulesPackagesResponse _
instance showDescribeRulesPackagesResponse :: Show DescribeRulesPackagesResponse where show = genericShow
instance decodeDescribeRulesPackagesResponse :: Decode DescribeRulesPackagesResponse where decode = genericDecode options
instance encodeDescribeRulesPackagesResponse :: Encode DescribeRulesPackagesResponse where encode = genericEncode options

-- | Constructs DescribeRulesPackagesResponse from required parameters
newDescribeRulesPackagesResponse :: FailedItems -> RulesPackageList -> DescribeRulesPackagesResponse
newDescribeRulesPackagesResponse _failedItems _rulesPackages = DescribeRulesPackagesResponse { "failedItems": _failedItems, "rulesPackages": _rulesPackages }

-- | Constructs DescribeRulesPackagesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeRulesPackagesResponse' :: FailedItems -> RulesPackageList -> ( { "rulesPackages" :: (RulesPackageList) , "failedItems" :: (FailedItems) } -> {"rulesPackages" :: (RulesPackageList) , "failedItems" :: (FailedItems) } ) -> DescribeRulesPackagesResponse
newDescribeRulesPackagesResponse' _failedItems _rulesPackages customize = (DescribeRulesPackagesResponse <<< customize) { "failedItems": _failedItems, "rulesPackages": _rulesPackages }



-- | <p>This data type is used in the <a>AssessmentTemplateFilter</a> data type.</p>
newtype DurationRange = DurationRange 
  { "minSeconds" :: Maybe (AssessmentRunDuration)
  , "maxSeconds" :: Maybe (AssessmentRunDuration)
  }
derive instance newtypeDurationRange :: Newtype DurationRange _
derive instance repGenericDurationRange :: Generic DurationRange _
instance showDurationRange :: Show DurationRange where show = genericShow
instance decodeDurationRange :: Decode DurationRange where decode = genericDecode options
instance encodeDurationRange :: Encode DurationRange where encode = genericEncode options

-- | Constructs DurationRange from required parameters
newDurationRange :: DurationRange
newDurationRange  = DurationRange { "maxSeconds": Nothing, "minSeconds": Nothing }

-- | Constructs DurationRange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDurationRange' :: ( { "minSeconds" :: Maybe (AssessmentRunDuration) , "maxSeconds" :: Maybe (AssessmentRunDuration) } -> {"minSeconds" :: Maybe (AssessmentRunDuration) , "maxSeconds" :: Maybe (AssessmentRunDuration) } ) -> DurationRange
newDurationRange'  customize = (DurationRange <<< customize) { "maxSeconds": Nothing, "minSeconds": Nothing }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p>This data type is used in the <a>Subscription</a> data type.</p>
newtype EventSubscription = EventSubscription 
  { "event" :: (InspectorEvent)
  , "subscribedAt" :: (Types.Timestamp)
  }
derive instance newtypeEventSubscription :: Newtype EventSubscription _
derive instance repGenericEventSubscription :: Generic EventSubscription _
instance showEventSubscription :: Show EventSubscription where show = genericShow
instance decodeEventSubscription :: Decode EventSubscription where decode = genericDecode options
instance encodeEventSubscription :: Encode EventSubscription where encode = genericEncode options

-- | Constructs EventSubscription from required parameters
newEventSubscription :: InspectorEvent -> Types.Timestamp -> EventSubscription
newEventSubscription _event _subscribedAt = EventSubscription { "event": _event, "subscribedAt": _subscribedAt }

-- | Constructs EventSubscription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventSubscription' :: InspectorEvent -> Types.Timestamp -> ( { "event" :: (InspectorEvent) , "subscribedAt" :: (Types.Timestamp) } -> {"event" :: (InspectorEvent) , "subscribedAt" :: (Types.Timestamp) } ) -> EventSubscription
newEventSubscription' _event _subscribedAt customize = (EventSubscription <<< customize) { "event": _event, "subscribedAt": _subscribedAt }



newtype EventSubscriptionList = EventSubscriptionList (Array EventSubscription)
derive instance newtypeEventSubscriptionList :: Newtype EventSubscriptionList _
derive instance repGenericEventSubscriptionList :: Generic EventSubscriptionList _
instance showEventSubscriptionList :: Show EventSubscriptionList where show = genericShow
instance decodeEventSubscriptionList :: Decode EventSubscriptionList where decode = genericDecode options
instance encodeEventSubscriptionList :: Encode EventSubscriptionList where encode = genericEncode options



-- | <p>Includes details about the failed items.</p>
newtype FailedItemDetails = FailedItemDetails 
  { "failureCode" :: (FailedItemErrorCode)
  , "retryable" :: (Bool)
  }
derive instance newtypeFailedItemDetails :: Newtype FailedItemDetails _
derive instance repGenericFailedItemDetails :: Generic FailedItemDetails _
instance showFailedItemDetails :: Show FailedItemDetails where show = genericShow
instance decodeFailedItemDetails :: Decode FailedItemDetails where decode = genericDecode options
instance encodeFailedItemDetails :: Encode FailedItemDetails where encode = genericEncode options

-- | Constructs FailedItemDetails from required parameters
newFailedItemDetails :: FailedItemErrorCode -> Bool -> FailedItemDetails
newFailedItemDetails _failureCode _retryable = FailedItemDetails { "failureCode": _failureCode, "retryable": _retryable }

-- | Constructs FailedItemDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFailedItemDetails' :: FailedItemErrorCode -> Bool -> ( { "failureCode" :: (FailedItemErrorCode) , "retryable" :: (Bool) } -> {"failureCode" :: (FailedItemErrorCode) , "retryable" :: (Bool) } ) -> FailedItemDetails
newFailedItemDetails' _failureCode _retryable customize = (FailedItemDetails <<< customize) { "failureCode": _failureCode, "retryable": _retryable }



newtype FailedItemErrorCode = FailedItemErrorCode String
derive instance newtypeFailedItemErrorCode :: Newtype FailedItemErrorCode _
derive instance repGenericFailedItemErrorCode :: Generic FailedItemErrorCode _
instance showFailedItemErrorCode :: Show FailedItemErrorCode where show = genericShow
instance decodeFailedItemErrorCode :: Decode FailedItemErrorCode where decode = genericDecode options
instance encodeFailedItemErrorCode :: Encode FailedItemErrorCode where encode = genericEncode options



newtype FailedItems = FailedItems (StrMap.StrMap FailedItemDetails)
derive instance newtypeFailedItems :: Newtype FailedItems _
derive instance repGenericFailedItems :: Generic FailedItems _
instance showFailedItems :: Show FailedItems where show = genericShow
instance decodeFailedItems :: Decode FailedItems where decode = genericDecode options
instance encodeFailedItems :: Encode FailedItems where encode = genericEncode options



newtype FilterRulesPackageArnList = FilterRulesPackageArnList (Array Arn)
derive instance newtypeFilterRulesPackageArnList :: Newtype FilterRulesPackageArnList _
derive instance repGenericFilterRulesPackageArnList :: Generic FilterRulesPackageArnList _
instance showFilterRulesPackageArnList :: Show FilterRulesPackageArnList where show = genericShow
instance decodeFilterRulesPackageArnList :: Decode FilterRulesPackageArnList where decode = genericDecode options
instance encodeFilterRulesPackageArnList :: Encode FilterRulesPackageArnList where encode = genericEncode options



-- | <p>Contains information about an Amazon Inspector finding. This data type is used as the response element in the <a>DescribeFindings</a> action.</p>
newtype Finding = Finding 
  { "arn" :: (Arn)
  , "schemaVersion" :: Maybe (NumericVersion)
  , "service" :: Maybe (ServiceName)
  , "serviceAttributes" :: Maybe (InspectorServiceAttributes)
  , "assetType" :: Maybe (AssetType)
  , "assetAttributes" :: Maybe (AssetAttributes)
  , "id" :: Maybe (FindingId)
  , "title" :: Maybe (Text)
  , "description" :: Maybe (Text)
  , "recommendation" :: Maybe (Text)
  , "severity" :: Maybe (Severity)
  , "numericSeverity" :: Maybe (NumericSeverity)
  , "confidence" :: Maybe (IocConfidence)
  , "indicatorOfCompromise" :: Maybe (Bool)
  , "attributes" :: (AttributeList)
  , "userAttributes" :: (UserAttributeList)
  , "createdAt" :: (Types.Timestamp)
  , "updatedAt" :: (Types.Timestamp)
  }
derive instance newtypeFinding :: Newtype Finding _
derive instance repGenericFinding :: Generic Finding _
instance showFinding :: Show Finding where show = genericShow
instance decodeFinding :: Decode Finding where decode = genericDecode options
instance encodeFinding :: Encode Finding where encode = genericEncode options

-- | Constructs Finding from required parameters
newFinding :: Arn -> AttributeList -> Types.Timestamp -> Types.Timestamp -> UserAttributeList -> Finding
newFinding _arn _attributes _createdAt _updatedAt _userAttributes = Finding { "arn": _arn, "attributes": _attributes, "createdAt": _createdAt, "updatedAt": _updatedAt, "userAttributes": _userAttributes, "assetAttributes": Nothing, "assetType": Nothing, "confidence": Nothing, "description": Nothing, "id": Nothing, "indicatorOfCompromise": Nothing, "numericSeverity": Nothing, "recommendation": Nothing, "schemaVersion": Nothing, "service": Nothing, "serviceAttributes": Nothing, "severity": Nothing, "title": Nothing }

-- | Constructs Finding's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFinding' :: Arn -> AttributeList -> Types.Timestamp -> Types.Timestamp -> UserAttributeList -> ( { "arn" :: (Arn) , "schemaVersion" :: Maybe (NumericVersion) , "service" :: Maybe (ServiceName) , "serviceAttributes" :: Maybe (InspectorServiceAttributes) , "assetType" :: Maybe (AssetType) , "assetAttributes" :: Maybe (AssetAttributes) , "id" :: Maybe (FindingId) , "title" :: Maybe (Text) , "description" :: Maybe (Text) , "recommendation" :: Maybe (Text) , "severity" :: Maybe (Severity) , "numericSeverity" :: Maybe (NumericSeverity) , "confidence" :: Maybe (IocConfidence) , "indicatorOfCompromise" :: Maybe (Bool) , "attributes" :: (AttributeList) , "userAttributes" :: (UserAttributeList) , "createdAt" :: (Types.Timestamp) , "updatedAt" :: (Types.Timestamp) } -> {"arn" :: (Arn) , "schemaVersion" :: Maybe (NumericVersion) , "service" :: Maybe (ServiceName) , "serviceAttributes" :: Maybe (InspectorServiceAttributes) , "assetType" :: Maybe (AssetType) , "assetAttributes" :: Maybe (AssetAttributes) , "id" :: Maybe (FindingId) , "title" :: Maybe (Text) , "description" :: Maybe (Text) , "recommendation" :: Maybe (Text) , "severity" :: Maybe (Severity) , "numericSeverity" :: Maybe (NumericSeverity) , "confidence" :: Maybe (IocConfidence) , "indicatorOfCompromise" :: Maybe (Bool) , "attributes" :: (AttributeList) , "userAttributes" :: (UserAttributeList) , "createdAt" :: (Types.Timestamp) , "updatedAt" :: (Types.Timestamp) } ) -> Finding
newFinding' _arn _attributes _createdAt _updatedAt _userAttributes customize = (Finding <<< customize) { "arn": _arn, "attributes": _attributes, "createdAt": _createdAt, "updatedAt": _updatedAt, "userAttributes": _userAttributes, "assetAttributes": Nothing, "assetType": Nothing, "confidence": Nothing, "description": Nothing, "id": Nothing, "indicatorOfCompromise": Nothing, "numericSeverity": Nothing, "recommendation": Nothing, "schemaVersion": Nothing, "service": Nothing, "serviceAttributes": Nothing, "severity": Nothing, "title": Nothing }



newtype FindingCount = FindingCount Int
derive instance newtypeFindingCount :: Newtype FindingCount _
derive instance repGenericFindingCount :: Generic FindingCount _
instance showFindingCount :: Show FindingCount where show = genericShow
instance decodeFindingCount :: Decode FindingCount where decode = genericDecode options
instance encodeFindingCount :: Encode FindingCount where encode = genericEncode options



-- | <p>This data type is used as a request parameter in the <a>ListFindings</a> action.</p>
newtype FindingFilter = FindingFilter 
  { "agentIds" :: Maybe (AgentIdList)
  , "autoScalingGroups" :: Maybe (AutoScalingGroupList)
  , "ruleNames" :: Maybe (RuleNameList)
  , "severities" :: Maybe (SeverityList)
  , "rulesPackageArns" :: Maybe (FilterRulesPackageArnList)
  , "attributes" :: Maybe (AttributeList)
  , "userAttributes" :: Maybe (AttributeList)
  , "creationTimeRange" :: Maybe (TimestampRange)
  }
derive instance newtypeFindingFilter :: Newtype FindingFilter _
derive instance repGenericFindingFilter :: Generic FindingFilter _
instance showFindingFilter :: Show FindingFilter where show = genericShow
instance decodeFindingFilter :: Decode FindingFilter where decode = genericDecode options
instance encodeFindingFilter :: Encode FindingFilter where encode = genericEncode options

-- | Constructs FindingFilter from required parameters
newFindingFilter :: FindingFilter
newFindingFilter  = FindingFilter { "agentIds": Nothing, "attributes": Nothing, "autoScalingGroups": Nothing, "creationTimeRange": Nothing, "ruleNames": Nothing, "rulesPackageArns": Nothing, "severities": Nothing, "userAttributes": Nothing }

-- | Constructs FindingFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFindingFilter' :: ( { "agentIds" :: Maybe (AgentIdList) , "autoScalingGroups" :: Maybe (AutoScalingGroupList) , "ruleNames" :: Maybe (RuleNameList) , "severities" :: Maybe (SeverityList) , "rulesPackageArns" :: Maybe (FilterRulesPackageArnList) , "attributes" :: Maybe (AttributeList) , "userAttributes" :: Maybe (AttributeList) , "creationTimeRange" :: Maybe (TimestampRange) } -> {"agentIds" :: Maybe (AgentIdList) , "autoScalingGroups" :: Maybe (AutoScalingGroupList) , "ruleNames" :: Maybe (RuleNameList) , "severities" :: Maybe (SeverityList) , "rulesPackageArns" :: Maybe (FilterRulesPackageArnList) , "attributes" :: Maybe (AttributeList) , "userAttributes" :: Maybe (AttributeList) , "creationTimeRange" :: Maybe (TimestampRange) } ) -> FindingFilter
newFindingFilter'  customize = (FindingFilter <<< customize) { "agentIds": Nothing, "attributes": Nothing, "autoScalingGroups": Nothing, "creationTimeRange": Nothing, "ruleNames": Nothing, "rulesPackageArns": Nothing, "severities": Nothing, "userAttributes": Nothing }



newtype FindingId = FindingId String
derive instance newtypeFindingId :: Newtype FindingId _
derive instance repGenericFindingId :: Generic FindingId _
instance showFindingId :: Show FindingId where show = genericShow
instance decodeFindingId :: Decode FindingId where decode = genericDecode options
instance encodeFindingId :: Encode FindingId where encode = genericEncode options



newtype FindingList = FindingList (Array Finding)
derive instance newtypeFindingList :: Newtype FindingList _
derive instance repGenericFindingList :: Generic FindingList _
instance showFindingList :: Show FindingList where show = genericShow
instance decodeFindingList :: Decode FindingList where decode = genericDecode options
instance encodeFindingList :: Encode FindingList where encode = genericEncode options



newtype GetAssessmentReportRequest = GetAssessmentReportRequest 
  { "assessmentRunArn" :: (Arn)
  , "reportFileFormat" :: (ReportFileFormat)
  , "reportType" :: (ReportType)
  }
derive instance newtypeGetAssessmentReportRequest :: Newtype GetAssessmentReportRequest _
derive instance repGenericGetAssessmentReportRequest :: Generic GetAssessmentReportRequest _
instance showGetAssessmentReportRequest :: Show GetAssessmentReportRequest where show = genericShow
instance decodeGetAssessmentReportRequest :: Decode GetAssessmentReportRequest where decode = genericDecode options
instance encodeGetAssessmentReportRequest :: Encode GetAssessmentReportRequest where encode = genericEncode options

-- | Constructs GetAssessmentReportRequest from required parameters
newGetAssessmentReportRequest :: Arn -> ReportFileFormat -> ReportType -> GetAssessmentReportRequest
newGetAssessmentReportRequest _assessmentRunArn _reportFileFormat _reportType = GetAssessmentReportRequest { "assessmentRunArn": _assessmentRunArn, "reportFileFormat": _reportFileFormat, "reportType": _reportType }

-- | Constructs GetAssessmentReportRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAssessmentReportRequest' :: Arn -> ReportFileFormat -> ReportType -> ( { "assessmentRunArn" :: (Arn) , "reportFileFormat" :: (ReportFileFormat) , "reportType" :: (ReportType) } -> {"assessmentRunArn" :: (Arn) , "reportFileFormat" :: (ReportFileFormat) , "reportType" :: (ReportType) } ) -> GetAssessmentReportRequest
newGetAssessmentReportRequest' _assessmentRunArn _reportFileFormat _reportType customize = (GetAssessmentReportRequest <<< customize) { "assessmentRunArn": _assessmentRunArn, "reportFileFormat": _reportFileFormat, "reportType": _reportType }



newtype GetAssessmentReportResponse = GetAssessmentReportResponse 
  { "status" :: (ReportStatus)
  , "url" :: Maybe (Url)
  }
derive instance newtypeGetAssessmentReportResponse :: Newtype GetAssessmentReportResponse _
derive instance repGenericGetAssessmentReportResponse :: Generic GetAssessmentReportResponse _
instance showGetAssessmentReportResponse :: Show GetAssessmentReportResponse where show = genericShow
instance decodeGetAssessmentReportResponse :: Decode GetAssessmentReportResponse where decode = genericDecode options
instance encodeGetAssessmentReportResponse :: Encode GetAssessmentReportResponse where encode = genericEncode options

-- | Constructs GetAssessmentReportResponse from required parameters
newGetAssessmentReportResponse :: ReportStatus -> GetAssessmentReportResponse
newGetAssessmentReportResponse _status = GetAssessmentReportResponse { "status": _status, "url": Nothing }

-- | Constructs GetAssessmentReportResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetAssessmentReportResponse' :: ReportStatus -> ( { "status" :: (ReportStatus) , "url" :: Maybe (Url) } -> {"status" :: (ReportStatus) , "url" :: Maybe (Url) } ) -> GetAssessmentReportResponse
newGetAssessmentReportResponse' _status customize = (GetAssessmentReportResponse <<< customize) { "status": _status, "url": Nothing }



newtype GetTelemetryMetadataRequest = GetTelemetryMetadataRequest 
  { "assessmentRunArn" :: (Arn)
  }
derive instance newtypeGetTelemetryMetadataRequest :: Newtype GetTelemetryMetadataRequest _
derive instance repGenericGetTelemetryMetadataRequest :: Generic GetTelemetryMetadataRequest _
instance showGetTelemetryMetadataRequest :: Show GetTelemetryMetadataRequest where show = genericShow
instance decodeGetTelemetryMetadataRequest :: Decode GetTelemetryMetadataRequest where decode = genericDecode options
instance encodeGetTelemetryMetadataRequest :: Encode GetTelemetryMetadataRequest where encode = genericEncode options

-- | Constructs GetTelemetryMetadataRequest from required parameters
newGetTelemetryMetadataRequest :: Arn -> GetTelemetryMetadataRequest
newGetTelemetryMetadataRequest _assessmentRunArn = GetTelemetryMetadataRequest { "assessmentRunArn": _assessmentRunArn }

-- | Constructs GetTelemetryMetadataRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTelemetryMetadataRequest' :: Arn -> ( { "assessmentRunArn" :: (Arn) } -> {"assessmentRunArn" :: (Arn) } ) -> GetTelemetryMetadataRequest
newGetTelemetryMetadataRequest' _assessmentRunArn customize = (GetTelemetryMetadataRequest <<< customize) { "assessmentRunArn": _assessmentRunArn }



newtype GetTelemetryMetadataResponse = GetTelemetryMetadataResponse 
  { "telemetryMetadata" :: (TelemetryMetadataList)
  }
derive instance newtypeGetTelemetryMetadataResponse :: Newtype GetTelemetryMetadataResponse _
derive instance repGenericGetTelemetryMetadataResponse :: Generic GetTelemetryMetadataResponse _
instance showGetTelemetryMetadataResponse :: Show GetTelemetryMetadataResponse where show = genericShow
instance decodeGetTelemetryMetadataResponse :: Decode GetTelemetryMetadataResponse where decode = genericDecode options
instance encodeGetTelemetryMetadataResponse :: Encode GetTelemetryMetadataResponse where encode = genericEncode options

-- | Constructs GetTelemetryMetadataResponse from required parameters
newGetTelemetryMetadataResponse :: TelemetryMetadataList -> GetTelemetryMetadataResponse
newGetTelemetryMetadataResponse _telemetryMetadata = GetTelemetryMetadataResponse { "telemetryMetadata": _telemetryMetadata }

-- | Constructs GetTelemetryMetadataResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTelemetryMetadataResponse' :: TelemetryMetadataList -> ( { "telemetryMetadata" :: (TelemetryMetadataList) } -> {"telemetryMetadata" :: (TelemetryMetadataList) } ) -> GetTelemetryMetadataResponse
newGetTelemetryMetadataResponse' _telemetryMetadata customize = (GetTelemetryMetadataResponse <<< customize) { "telemetryMetadata": _telemetryMetadata }



newtype Hostname = Hostname String
derive instance newtypeHostname :: Newtype Hostname _
derive instance repGenericHostname :: Generic Hostname _
instance showHostname :: Show Hostname where show = genericShow
instance decodeHostname :: Decode Hostname where decode = genericDecode options
instance encodeHostname :: Encode Hostname where encode = genericEncode options



newtype InspectorEvent = InspectorEvent String
derive instance newtypeInspectorEvent :: Newtype InspectorEvent _
derive instance repGenericInspectorEvent :: Generic InspectorEvent _
instance showInspectorEvent :: Show InspectorEvent where show = genericShow
instance decodeInspectorEvent :: Decode InspectorEvent where decode = genericDecode options
instance encodeInspectorEvent :: Encode InspectorEvent where encode = genericEncode options



-- | <p>This data type is used in the <a>Finding</a> data type.</p>
newtype InspectorServiceAttributes = InspectorServiceAttributes 
  { "schemaVersion" :: (NumericVersion)
  , "assessmentRunArn" :: Maybe (Arn)
  , "rulesPackageArn" :: Maybe (Arn)
  }
derive instance newtypeInspectorServiceAttributes :: Newtype InspectorServiceAttributes _
derive instance repGenericInspectorServiceAttributes :: Generic InspectorServiceAttributes _
instance showInspectorServiceAttributes :: Show InspectorServiceAttributes where show = genericShow
instance decodeInspectorServiceAttributes :: Decode InspectorServiceAttributes where decode = genericDecode options
instance encodeInspectorServiceAttributes :: Encode InspectorServiceAttributes where encode = genericEncode options

-- | Constructs InspectorServiceAttributes from required parameters
newInspectorServiceAttributes :: NumericVersion -> InspectorServiceAttributes
newInspectorServiceAttributes _schemaVersion = InspectorServiceAttributes { "schemaVersion": _schemaVersion, "assessmentRunArn": Nothing, "rulesPackageArn": Nothing }

-- | Constructs InspectorServiceAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInspectorServiceAttributes' :: NumericVersion -> ( { "schemaVersion" :: (NumericVersion) , "assessmentRunArn" :: Maybe (Arn) , "rulesPackageArn" :: Maybe (Arn) } -> {"schemaVersion" :: (NumericVersion) , "assessmentRunArn" :: Maybe (Arn) , "rulesPackageArn" :: Maybe (Arn) } ) -> InspectorServiceAttributes
newInspectorServiceAttributes' _schemaVersion customize = (InspectorServiceAttributes <<< customize) { "schemaVersion": _schemaVersion, "assessmentRunArn": Nothing, "rulesPackageArn": Nothing }



-- | <p>Internal server error.</p>
newtype InternalException = InternalException 
  { "message" :: (ErrorMessage)
  , "canRetry" :: (Bool)
  }
derive instance newtypeInternalException :: Newtype InternalException _
derive instance repGenericInternalException :: Generic InternalException _
instance showInternalException :: Show InternalException where show = genericShow
instance decodeInternalException :: Decode InternalException where decode = genericDecode options
instance encodeInternalException :: Encode InternalException where encode = genericEncode options

-- | Constructs InternalException from required parameters
newInternalException :: Bool -> ErrorMessage -> InternalException
newInternalException _canRetry _message = InternalException { "canRetry": _canRetry, "message": _message }

-- | Constructs InternalException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalException' :: Bool -> ErrorMessage -> ( { "message" :: (ErrorMessage) , "canRetry" :: (Bool) } -> {"message" :: (ErrorMessage) , "canRetry" :: (Bool) } ) -> InternalException
newInternalException' _canRetry _message customize = (InternalException <<< customize) { "canRetry": _canRetry, "message": _message }



newtype InvalidCrossAccountRoleErrorCode = InvalidCrossAccountRoleErrorCode String
derive instance newtypeInvalidCrossAccountRoleErrorCode :: Newtype InvalidCrossAccountRoleErrorCode _
derive instance repGenericInvalidCrossAccountRoleErrorCode :: Generic InvalidCrossAccountRoleErrorCode _
instance showInvalidCrossAccountRoleErrorCode :: Show InvalidCrossAccountRoleErrorCode where show = genericShow
instance decodeInvalidCrossAccountRoleErrorCode :: Decode InvalidCrossAccountRoleErrorCode where decode = genericDecode options
instance encodeInvalidCrossAccountRoleErrorCode :: Encode InvalidCrossAccountRoleErrorCode where encode = genericEncode options



-- | <p>Amazon Inspector cannot assume the cross-account role that it needs to list your EC2 instances during the assessment run.</p>
newtype InvalidCrossAccountRoleException = InvalidCrossAccountRoleException 
  { "message" :: (ErrorMessage)
  , "errorCode" :: (InvalidCrossAccountRoleErrorCode)
  , "canRetry" :: (Bool)
  }
derive instance newtypeInvalidCrossAccountRoleException :: Newtype InvalidCrossAccountRoleException _
derive instance repGenericInvalidCrossAccountRoleException :: Generic InvalidCrossAccountRoleException _
instance showInvalidCrossAccountRoleException :: Show InvalidCrossAccountRoleException where show = genericShow
instance decodeInvalidCrossAccountRoleException :: Decode InvalidCrossAccountRoleException where decode = genericDecode options
instance encodeInvalidCrossAccountRoleException :: Encode InvalidCrossAccountRoleException where encode = genericEncode options

-- | Constructs InvalidCrossAccountRoleException from required parameters
newInvalidCrossAccountRoleException :: Bool -> InvalidCrossAccountRoleErrorCode -> ErrorMessage -> InvalidCrossAccountRoleException
newInvalidCrossAccountRoleException _canRetry _errorCode _message = InvalidCrossAccountRoleException { "canRetry": _canRetry, "errorCode": _errorCode, "message": _message }

-- | Constructs InvalidCrossAccountRoleException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidCrossAccountRoleException' :: Bool -> InvalidCrossAccountRoleErrorCode -> ErrorMessage -> ( { "message" :: (ErrorMessage) , "errorCode" :: (InvalidCrossAccountRoleErrorCode) , "canRetry" :: (Bool) } -> {"message" :: (ErrorMessage) , "errorCode" :: (InvalidCrossAccountRoleErrorCode) , "canRetry" :: (Bool) } ) -> InvalidCrossAccountRoleException
newInvalidCrossAccountRoleException' _canRetry _errorCode _message customize = (InvalidCrossAccountRoleException <<< customize) { "canRetry": _canRetry, "errorCode": _errorCode, "message": _message }



newtype InvalidInputErrorCode = InvalidInputErrorCode String
derive instance newtypeInvalidInputErrorCode :: Newtype InvalidInputErrorCode _
derive instance repGenericInvalidInputErrorCode :: Generic InvalidInputErrorCode _
instance showInvalidInputErrorCode :: Show InvalidInputErrorCode where show = genericShow
instance decodeInvalidInputErrorCode :: Decode InvalidInputErrorCode where decode = genericDecode options
instance encodeInvalidInputErrorCode :: Encode InvalidInputErrorCode where encode = genericEncode options



-- | <p>The request was rejected because an invalid or out-of-range value was supplied for an input parameter.</p>
newtype InvalidInputException = InvalidInputException 
  { "message" :: (ErrorMessage)
  , "errorCode" :: (InvalidInputErrorCode)
  , "canRetry" :: (Bool)
  }
derive instance newtypeInvalidInputException :: Newtype InvalidInputException _
derive instance repGenericInvalidInputException :: Generic InvalidInputException _
instance showInvalidInputException :: Show InvalidInputException where show = genericShow
instance decodeInvalidInputException :: Decode InvalidInputException where decode = genericDecode options
instance encodeInvalidInputException :: Encode InvalidInputException where encode = genericEncode options

-- | Constructs InvalidInputException from required parameters
newInvalidInputException :: Bool -> InvalidInputErrorCode -> ErrorMessage -> InvalidInputException
newInvalidInputException _canRetry _errorCode _message = InvalidInputException { "canRetry": _canRetry, "errorCode": _errorCode, "message": _message }

-- | Constructs InvalidInputException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInputException' :: Bool -> InvalidInputErrorCode -> ErrorMessage -> ( { "message" :: (ErrorMessage) , "errorCode" :: (InvalidInputErrorCode) , "canRetry" :: (Bool) } -> {"message" :: (ErrorMessage) , "errorCode" :: (InvalidInputErrorCode) , "canRetry" :: (Bool) } ) -> InvalidInputException
newInvalidInputException' _canRetry _errorCode _message customize = (InvalidInputException <<< customize) { "canRetry": _canRetry, "errorCode": _errorCode, "message": _message }



newtype IocConfidence = IocConfidence Int
derive instance newtypeIocConfidence :: Newtype IocConfidence _
derive instance repGenericIocConfidence :: Generic IocConfidence _
instance showIocConfidence :: Show IocConfidence where show = genericShow
instance decodeIocConfidence :: Decode IocConfidence where decode = genericDecode options
instance encodeIocConfidence :: Encode IocConfidence where encode = genericEncode options



newtype Ipv4Address = Ipv4Address String
derive instance newtypeIpv4Address :: Newtype Ipv4Address _
derive instance repGenericIpv4Address :: Generic Ipv4Address _
instance showIpv4Address :: Show Ipv4Address where show = genericShow
instance decodeIpv4Address :: Decode Ipv4Address where decode = genericDecode options
instance encodeIpv4Address :: Encode Ipv4Address where encode = genericEncode options



newtype Ipv4AddressList = Ipv4AddressList (Array Ipv4Address)
derive instance newtypeIpv4AddressList :: Newtype Ipv4AddressList _
derive instance repGenericIpv4AddressList :: Generic Ipv4AddressList _
instance showIpv4AddressList :: Show Ipv4AddressList where show = genericShow
instance decodeIpv4AddressList :: Decode Ipv4AddressList where decode = genericDecode options
instance encodeIpv4AddressList :: Encode Ipv4AddressList where encode = genericEncode options



newtype KernelVersion = KernelVersion String
derive instance newtypeKernelVersion :: Newtype KernelVersion _
derive instance repGenericKernelVersion :: Generic KernelVersion _
instance showKernelVersion :: Show KernelVersion where show = genericShow
instance decodeKernelVersion :: Decode KernelVersion where decode = genericDecode options
instance encodeKernelVersion :: Encode KernelVersion where encode = genericEncode options



newtype LimitExceededErrorCode = LimitExceededErrorCode String
derive instance newtypeLimitExceededErrorCode :: Newtype LimitExceededErrorCode _
derive instance repGenericLimitExceededErrorCode :: Generic LimitExceededErrorCode _
instance showLimitExceededErrorCode :: Show LimitExceededErrorCode where show = genericShow
instance decodeLimitExceededErrorCode :: Decode LimitExceededErrorCode where decode = genericDecode options
instance encodeLimitExceededErrorCode :: Encode LimitExceededErrorCode where encode = genericEncode options



-- | <p>The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded.</p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: (ErrorMessage)
  , "errorCode" :: (LimitExceededErrorCode)
  , "canRetry" :: (Bool)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: Bool -> LimitExceededErrorCode -> ErrorMessage -> LimitExceededException
newLimitExceededException _canRetry _errorCode _message = LimitExceededException { "canRetry": _canRetry, "errorCode": _errorCode, "message": _message }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: Bool -> LimitExceededErrorCode -> ErrorMessage -> ( { "message" :: (ErrorMessage) , "errorCode" :: (LimitExceededErrorCode) , "canRetry" :: (Bool) } -> {"message" :: (ErrorMessage) , "errorCode" :: (LimitExceededErrorCode) , "canRetry" :: (Bool) } ) -> LimitExceededException
newLimitExceededException' _canRetry _errorCode _message customize = (LimitExceededException <<< customize) { "canRetry": _canRetry, "errorCode": _errorCode, "message": _message }



newtype ListAssessmentRunAgentsRequest = ListAssessmentRunAgentsRequest 
  { "assessmentRunArn" :: (Arn)
  , "filter" :: Maybe (AgentFilter)
  , "nextToken" :: Maybe (PaginationToken)
  , "maxResults" :: Maybe (ListMaxResults)
  }
derive instance newtypeListAssessmentRunAgentsRequest :: Newtype ListAssessmentRunAgentsRequest _
derive instance repGenericListAssessmentRunAgentsRequest :: Generic ListAssessmentRunAgentsRequest _
instance showListAssessmentRunAgentsRequest :: Show ListAssessmentRunAgentsRequest where show = genericShow
instance decodeListAssessmentRunAgentsRequest :: Decode ListAssessmentRunAgentsRequest where decode = genericDecode options
instance encodeListAssessmentRunAgentsRequest :: Encode ListAssessmentRunAgentsRequest where encode = genericEncode options

-- | Constructs ListAssessmentRunAgentsRequest from required parameters
newListAssessmentRunAgentsRequest :: Arn -> ListAssessmentRunAgentsRequest
newListAssessmentRunAgentsRequest _assessmentRunArn = ListAssessmentRunAgentsRequest { "assessmentRunArn": _assessmentRunArn, "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListAssessmentRunAgentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAssessmentRunAgentsRequest' :: Arn -> ( { "assessmentRunArn" :: (Arn) , "filter" :: Maybe (AgentFilter) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListMaxResults) } -> {"assessmentRunArn" :: (Arn) , "filter" :: Maybe (AgentFilter) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListMaxResults) } ) -> ListAssessmentRunAgentsRequest
newListAssessmentRunAgentsRequest' _assessmentRunArn customize = (ListAssessmentRunAgentsRequest <<< customize) { "assessmentRunArn": _assessmentRunArn, "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype ListAssessmentRunAgentsResponse = ListAssessmentRunAgentsResponse 
  { "assessmentRunAgents" :: (AssessmentRunAgentList)
  , "nextToken" :: Maybe (PaginationToken)
  }
derive instance newtypeListAssessmentRunAgentsResponse :: Newtype ListAssessmentRunAgentsResponse _
derive instance repGenericListAssessmentRunAgentsResponse :: Generic ListAssessmentRunAgentsResponse _
instance showListAssessmentRunAgentsResponse :: Show ListAssessmentRunAgentsResponse where show = genericShow
instance decodeListAssessmentRunAgentsResponse :: Decode ListAssessmentRunAgentsResponse where decode = genericDecode options
instance encodeListAssessmentRunAgentsResponse :: Encode ListAssessmentRunAgentsResponse where encode = genericEncode options

-- | Constructs ListAssessmentRunAgentsResponse from required parameters
newListAssessmentRunAgentsResponse :: AssessmentRunAgentList -> ListAssessmentRunAgentsResponse
newListAssessmentRunAgentsResponse _assessmentRunAgents = ListAssessmentRunAgentsResponse { "assessmentRunAgents": _assessmentRunAgents, "nextToken": Nothing }

-- | Constructs ListAssessmentRunAgentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAssessmentRunAgentsResponse' :: AssessmentRunAgentList -> ( { "assessmentRunAgents" :: (AssessmentRunAgentList) , "nextToken" :: Maybe (PaginationToken) } -> {"assessmentRunAgents" :: (AssessmentRunAgentList) , "nextToken" :: Maybe (PaginationToken) } ) -> ListAssessmentRunAgentsResponse
newListAssessmentRunAgentsResponse' _assessmentRunAgents customize = (ListAssessmentRunAgentsResponse <<< customize) { "assessmentRunAgents": _assessmentRunAgents, "nextToken": Nothing }



newtype ListAssessmentRunsRequest = ListAssessmentRunsRequest 
  { "assessmentTemplateArns" :: Maybe (ListParentArnList)
  , "filter" :: Maybe (AssessmentRunFilter)
  , "nextToken" :: Maybe (PaginationToken)
  , "maxResults" :: Maybe (ListMaxResults)
  }
derive instance newtypeListAssessmentRunsRequest :: Newtype ListAssessmentRunsRequest _
derive instance repGenericListAssessmentRunsRequest :: Generic ListAssessmentRunsRequest _
instance showListAssessmentRunsRequest :: Show ListAssessmentRunsRequest where show = genericShow
instance decodeListAssessmentRunsRequest :: Decode ListAssessmentRunsRequest where decode = genericDecode options
instance encodeListAssessmentRunsRequest :: Encode ListAssessmentRunsRequest where encode = genericEncode options

-- | Constructs ListAssessmentRunsRequest from required parameters
newListAssessmentRunsRequest :: ListAssessmentRunsRequest
newListAssessmentRunsRequest  = ListAssessmentRunsRequest { "assessmentTemplateArns": Nothing, "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListAssessmentRunsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAssessmentRunsRequest' :: ( { "assessmentTemplateArns" :: Maybe (ListParentArnList) , "filter" :: Maybe (AssessmentRunFilter) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListMaxResults) } -> {"assessmentTemplateArns" :: Maybe (ListParentArnList) , "filter" :: Maybe (AssessmentRunFilter) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListMaxResults) } ) -> ListAssessmentRunsRequest
newListAssessmentRunsRequest'  customize = (ListAssessmentRunsRequest <<< customize) { "assessmentTemplateArns": Nothing, "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype ListAssessmentRunsResponse = ListAssessmentRunsResponse 
  { "assessmentRunArns" :: (ListReturnedArnList)
  , "nextToken" :: Maybe (PaginationToken)
  }
derive instance newtypeListAssessmentRunsResponse :: Newtype ListAssessmentRunsResponse _
derive instance repGenericListAssessmentRunsResponse :: Generic ListAssessmentRunsResponse _
instance showListAssessmentRunsResponse :: Show ListAssessmentRunsResponse where show = genericShow
instance decodeListAssessmentRunsResponse :: Decode ListAssessmentRunsResponse where decode = genericDecode options
instance encodeListAssessmentRunsResponse :: Encode ListAssessmentRunsResponse where encode = genericEncode options

-- | Constructs ListAssessmentRunsResponse from required parameters
newListAssessmentRunsResponse :: ListReturnedArnList -> ListAssessmentRunsResponse
newListAssessmentRunsResponse _assessmentRunArns = ListAssessmentRunsResponse { "assessmentRunArns": _assessmentRunArns, "nextToken": Nothing }

-- | Constructs ListAssessmentRunsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAssessmentRunsResponse' :: ListReturnedArnList -> ( { "assessmentRunArns" :: (ListReturnedArnList) , "nextToken" :: Maybe (PaginationToken) } -> {"assessmentRunArns" :: (ListReturnedArnList) , "nextToken" :: Maybe (PaginationToken) } ) -> ListAssessmentRunsResponse
newListAssessmentRunsResponse' _assessmentRunArns customize = (ListAssessmentRunsResponse <<< customize) { "assessmentRunArns": _assessmentRunArns, "nextToken": Nothing }



newtype ListAssessmentTargetsRequest = ListAssessmentTargetsRequest 
  { "filter" :: Maybe (AssessmentTargetFilter)
  , "nextToken" :: Maybe (PaginationToken)
  , "maxResults" :: Maybe (ListMaxResults)
  }
derive instance newtypeListAssessmentTargetsRequest :: Newtype ListAssessmentTargetsRequest _
derive instance repGenericListAssessmentTargetsRequest :: Generic ListAssessmentTargetsRequest _
instance showListAssessmentTargetsRequest :: Show ListAssessmentTargetsRequest where show = genericShow
instance decodeListAssessmentTargetsRequest :: Decode ListAssessmentTargetsRequest where decode = genericDecode options
instance encodeListAssessmentTargetsRequest :: Encode ListAssessmentTargetsRequest where encode = genericEncode options

-- | Constructs ListAssessmentTargetsRequest from required parameters
newListAssessmentTargetsRequest :: ListAssessmentTargetsRequest
newListAssessmentTargetsRequest  = ListAssessmentTargetsRequest { "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListAssessmentTargetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAssessmentTargetsRequest' :: ( { "filter" :: Maybe (AssessmentTargetFilter) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListMaxResults) } -> {"filter" :: Maybe (AssessmentTargetFilter) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListMaxResults) } ) -> ListAssessmentTargetsRequest
newListAssessmentTargetsRequest'  customize = (ListAssessmentTargetsRequest <<< customize) { "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype ListAssessmentTargetsResponse = ListAssessmentTargetsResponse 
  { "assessmentTargetArns" :: (ListReturnedArnList)
  , "nextToken" :: Maybe (PaginationToken)
  }
derive instance newtypeListAssessmentTargetsResponse :: Newtype ListAssessmentTargetsResponse _
derive instance repGenericListAssessmentTargetsResponse :: Generic ListAssessmentTargetsResponse _
instance showListAssessmentTargetsResponse :: Show ListAssessmentTargetsResponse where show = genericShow
instance decodeListAssessmentTargetsResponse :: Decode ListAssessmentTargetsResponse where decode = genericDecode options
instance encodeListAssessmentTargetsResponse :: Encode ListAssessmentTargetsResponse where encode = genericEncode options

-- | Constructs ListAssessmentTargetsResponse from required parameters
newListAssessmentTargetsResponse :: ListReturnedArnList -> ListAssessmentTargetsResponse
newListAssessmentTargetsResponse _assessmentTargetArns = ListAssessmentTargetsResponse { "assessmentTargetArns": _assessmentTargetArns, "nextToken": Nothing }

-- | Constructs ListAssessmentTargetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAssessmentTargetsResponse' :: ListReturnedArnList -> ( { "assessmentTargetArns" :: (ListReturnedArnList) , "nextToken" :: Maybe (PaginationToken) } -> {"assessmentTargetArns" :: (ListReturnedArnList) , "nextToken" :: Maybe (PaginationToken) } ) -> ListAssessmentTargetsResponse
newListAssessmentTargetsResponse' _assessmentTargetArns customize = (ListAssessmentTargetsResponse <<< customize) { "assessmentTargetArns": _assessmentTargetArns, "nextToken": Nothing }



newtype ListAssessmentTemplatesRequest = ListAssessmentTemplatesRequest 
  { "assessmentTargetArns" :: Maybe (ListParentArnList)
  , "filter" :: Maybe (AssessmentTemplateFilter)
  , "nextToken" :: Maybe (PaginationToken)
  , "maxResults" :: Maybe (ListMaxResults)
  }
derive instance newtypeListAssessmentTemplatesRequest :: Newtype ListAssessmentTemplatesRequest _
derive instance repGenericListAssessmentTemplatesRequest :: Generic ListAssessmentTemplatesRequest _
instance showListAssessmentTemplatesRequest :: Show ListAssessmentTemplatesRequest where show = genericShow
instance decodeListAssessmentTemplatesRequest :: Decode ListAssessmentTemplatesRequest where decode = genericDecode options
instance encodeListAssessmentTemplatesRequest :: Encode ListAssessmentTemplatesRequest where encode = genericEncode options

-- | Constructs ListAssessmentTemplatesRequest from required parameters
newListAssessmentTemplatesRequest :: ListAssessmentTemplatesRequest
newListAssessmentTemplatesRequest  = ListAssessmentTemplatesRequest { "assessmentTargetArns": Nothing, "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListAssessmentTemplatesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAssessmentTemplatesRequest' :: ( { "assessmentTargetArns" :: Maybe (ListParentArnList) , "filter" :: Maybe (AssessmentTemplateFilter) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListMaxResults) } -> {"assessmentTargetArns" :: Maybe (ListParentArnList) , "filter" :: Maybe (AssessmentTemplateFilter) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListMaxResults) } ) -> ListAssessmentTemplatesRequest
newListAssessmentTemplatesRequest'  customize = (ListAssessmentTemplatesRequest <<< customize) { "assessmentTargetArns": Nothing, "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype ListAssessmentTemplatesResponse = ListAssessmentTemplatesResponse 
  { "assessmentTemplateArns" :: (ListReturnedArnList)
  , "nextToken" :: Maybe (PaginationToken)
  }
derive instance newtypeListAssessmentTemplatesResponse :: Newtype ListAssessmentTemplatesResponse _
derive instance repGenericListAssessmentTemplatesResponse :: Generic ListAssessmentTemplatesResponse _
instance showListAssessmentTemplatesResponse :: Show ListAssessmentTemplatesResponse where show = genericShow
instance decodeListAssessmentTemplatesResponse :: Decode ListAssessmentTemplatesResponse where decode = genericDecode options
instance encodeListAssessmentTemplatesResponse :: Encode ListAssessmentTemplatesResponse where encode = genericEncode options

-- | Constructs ListAssessmentTemplatesResponse from required parameters
newListAssessmentTemplatesResponse :: ListReturnedArnList -> ListAssessmentTemplatesResponse
newListAssessmentTemplatesResponse _assessmentTemplateArns = ListAssessmentTemplatesResponse { "assessmentTemplateArns": _assessmentTemplateArns, "nextToken": Nothing }

-- | Constructs ListAssessmentTemplatesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAssessmentTemplatesResponse' :: ListReturnedArnList -> ( { "assessmentTemplateArns" :: (ListReturnedArnList) , "nextToken" :: Maybe (PaginationToken) } -> {"assessmentTemplateArns" :: (ListReturnedArnList) , "nextToken" :: Maybe (PaginationToken) } ) -> ListAssessmentTemplatesResponse
newListAssessmentTemplatesResponse' _assessmentTemplateArns customize = (ListAssessmentTemplatesResponse <<< customize) { "assessmentTemplateArns": _assessmentTemplateArns, "nextToken": Nothing }



newtype ListEventSubscriptionsMaxResults = ListEventSubscriptionsMaxResults Int
derive instance newtypeListEventSubscriptionsMaxResults :: Newtype ListEventSubscriptionsMaxResults _
derive instance repGenericListEventSubscriptionsMaxResults :: Generic ListEventSubscriptionsMaxResults _
instance showListEventSubscriptionsMaxResults :: Show ListEventSubscriptionsMaxResults where show = genericShow
instance decodeListEventSubscriptionsMaxResults :: Decode ListEventSubscriptionsMaxResults where decode = genericDecode options
instance encodeListEventSubscriptionsMaxResults :: Encode ListEventSubscriptionsMaxResults where encode = genericEncode options



newtype ListEventSubscriptionsRequest = ListEventSubscriptionsRequest 
  { "resourceArn" :: Maybe (Arn)
  , "nextToken" :: Maybe (PaginationToken)
  , "maxResults" :: Maybe (ListEventSubscriptionsMaxResults)
  }
derive instance newtypeListEventSubscriptionsRequest :: Newtype ListEventSubscriptionsRequest _
derive instance repGenericListEventSubscriptionsRequest :: Generic ListEventSubscriptionsRequest _
instance showListEventSubscriptionsRequest :: Show ListEventSubscriptionsRequest where show = genericShow
instance decodeListEventSubscriptionsRequest :: Decode ListEventSubscriptionsRequest where decode = genericDecode options
instance encodeListEventSubscriptionsRequest :: Encode ListEventSubscriptionsRequest where encode = genericEncode options

-- | Constructs ListEventSubscriptionsRequest from required parameters
newListEventSubscriptionsRequest :: ListEventSubscriptionsRequest
newListEventSubscriptionsRequest  = ListEventSubscriptionsRequest { "maxResults": Nothing, "nextToken": Nothing, "resourceArn": Nothing }

-- | Constructs ListEventSubscriptionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEventSubscriptionsRequest' :: ( { "resourceArn" :: Maybe (Arn) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListEventSubscriptionsMaxResults) } -> {"resourceArn" :: Maybe (Arn) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListEventSubscriptionsMaxResults) } ) -> ListEventSubscriptionsRequest
newListEventSubscriptionsRequest'  customize = (ListEventSubscriptionsRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing, "resourceArn": Nothing }



newtype ListEventSubscriptionsResponse = ListEventSubscriptionsResponse 
  { "subscriptions" :: (SubscriptionList)
  , "nextToken" :: Maybe (PaginationToken)
  }
derive instance newtypeListEventSubscriptionsResponse :: Newtype ListEventSubscriptionsResponse _
derive instance repGenericListEventSubscriptionsResponse :: Generic ListEventSubscriptionsResponse _
instance showListEventSubscriptionsResponse :: Show ListEventSubscriptionsResponse where show = genericShow
instance decodeListEventSubscriptionsResponse :: Decode ListEventSubscriptionsResponse where decode = genericDecode options
instance encodeListEventSubscriptionsResponse :: Encode ListEventSubscriptionsResponse where encode = genericEncode options

-- | Constructs ListEventSubscriptionsResponse from required parameters
newListEventSubscriptionsResponse :: SubscriptionList -> ListEventSubscriptionsResponse
newListEventSubscriptionsResponse _subscriptions = ListEventSubscriptionsResponse { "subscriptions": _subscriptions, "nextToken": Nothing }

-- | Constructs ListEventSubscriptionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEventSubscriptionsResponse' :: SubscriptionList -> ( { "subscriptions" :: (SubscriptionList) , "nextToken" :: Maybe (PaginationToken) } -> {"subscriptions" :: (SubscriptionList) , "nextToken" :: Maybe (PaginationToken) } ) -> ListEventSubscriptionsResponse
newListEventSubscriptionsResponse' _subscriptions customize = (ListEventSubscriptionsResponse <<< customize) { "subscriptions": _subscriptions, "nextToken": Nothing }



newtype ListFindingsRequest = ListFindingsRequest 
  { "assessmentRunArns" :: Maybe (ListParentArnList)
  , "filter" :: Maybe (FindingFilter)
  , "nextToken" :: Maybe (PaginationToken)
  , "maxResults" :: Maybe (ListMaxResults)
  }
derive instance newtypeListFindingsRequest :: Newtype ListFindingsRequest _
derive instance repGenericListFindingsRequest :: Generic ListFindingsRequest _
instance showListFindingsRequest :: Show ListFindingsRequest where show = genericShow
instance decodeListFindingsRequest :: Decode ListFindingsRequest where decode = genericDecode options
instance encodeListFindingsRequest :: Encode ListFindingsRequest where encode = genericEncode options

-- | Constructs ListFindingsRequest from required parameters
newListFindingsRequest :: ListFindingsRequest
newListFindingsRequest  = ListFindingsRequest { "assessmentRunArns": Nothing, "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFindingsRequest' :: ( { "assessmentRunArns" :: Maybe (ListParentArnList) , "filter" :: Maybe (FindingFilter) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListMaxResults) } -> {"assessmentRunArns" :: Maybe (ListParentArnList) , "filter" :: Maybe (FindingFilter) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListMaxResults) } ) -> ListFindingsRequest
newListFindingsRequest'  customize = (ListFindingsRequest <<< customize) { "assessmentRunArns": Nothing, "filter": Nothing, "maxResults": Nothing, "nextToken": Nothing }



newtype ListFindingsResponse = ListFindingsResponse 
  { "findingArns" :: (ListReturnedArnList)
  , "nextToken" :: Maybe (PaginationToken)
  }
derive instance newtypeListFindingsResponse :: Newtype ListFindingsResponse _
derive instance repGenericListFindingsResponse :: Generic ListFindingsResponse _
instance showListFindingsResponse :: Show ListFindingsResponse where show = genericShow
instance decodeListFindingsResponse :: Decode ListFindingsResponse where decode = genericDecode options
instance encodeListFindingsResponse :: Encode ListFindingsResponse where encode = genericEncode options

-- | Constructs ListFindingsResponse from required parameters
newListFindingsResponse :: ListReturnedArnList -> ListFindingsResponse
newListFindingsResponse _findingArns = ListFindingsResponse { "findingArns": _findingArns, "nextToken": Nothing }

-- | Constructs ListFindingsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFindingsResponse' :: ListReturnedArnList -> ( { "findingArns" :: (ListReturnedArnList) , "nextToken" :: Maybe (PaginationToken) } -> {"findingArns" :: (ListReturnedArnList) , "nextToken" :: Maybe (PaginationToken) } ) -> ListFindingsResponse
newListFindingsResponse' _findingArns customize = (ListFindingsResponse <<< customize) { "findingArns": _findingArns, "nextToken": Nothing }



newtype ListMaxResults = ListMaxResults Int
derive instance newtypeListMaxResults :: Newtype ListMaxResults _
derive instance repGenericListMaxResults :: Generic ListMaxResults _
instance showListMaxResults :: Show ListMaxResults where show = genericShow
instance decodeListMaxResults :: Decode ListMaxResults where decode = genericDecode options
instance encodeListMaxResults :: Encode ListMaxResults where encode = genericEncode options



newtype ListParentArnList = ListParentArnList (Array Arn)
derive instance newtypeListParentArnList :: Newtype ListParentArnList _
derive instance repGenericListParentArnList :: Generic ListParentArnList _
instance showListParentArnList :: Show ListParentArnList where show = genericShow
instance decodeListParentArnList :: Decode ListParentArnList where decode = genericDecode options
instance encodeListParentArnList :: Encode ListParentArnList where encode = genericEncode options



newtype ListReturnedArnList = ListReturnedArnList (Array Arn)
derive instance newtypeListReturnedArnList :: Newtype ListReturnedArnList _
derive instance repGenericListReturnedArnList :: Generic ListReturnedArnList _
instance showListReturnedArnList :: Show ListReturnedArnList where show = genericShow
instance decodeListReturnedArnList :: Decode ListReturnedArnList where decode = genericDecode options
instance encodeListReturnedArnList :: Encode ListReturnedArnList where encode = genericEncode options



newtype ListRulesPackagesRequest = ListRulesPackagesRequest 
  { "nextToken" :: Maybe (PaginationToken)
  , "maxResults" :: Maybe (ListMaxResults)
  }
derive instance newtypeListRulesPackagesRequest :: Newtype ListRulesPackagesRequest _
derive instance repGenericListRulesPackagesRequest :: Generic ListRulesPackagesRequest _
instance showListRulesPackagesRequest :: Show ListRulesPackagesRequest where show = genericShow
instance decodeListRulesPackagesRequest :: Decode ListRulesPackagesRequest where decode = genericDecode options
instance encodeListRulesPackagesRequest :: Encode ListRulesPackagesRequest where encode = genericEncode options

-- | Constructs ListRulesPackagesRequest from required parameters
newListRulesPackagesRequest :: ListRulesPackagesRequest
newListRulesPackagesRequest  = ListRulesPackagesRequest { "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs ListRulesPackagesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRulesPackagesRequest' :: ( { "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListMaxResults) } -> {"nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (ListMaxResults) } ) -> ListRulesPackagesRequest
newListRulesPackagesRequest'  customize = (ListRulesPackagesRequest <<< customize) { "maxResults": Nothing, "nextToken": Nothing }



newtype ListRulesPackagesResponse = ListRulesPackagesResponse 
  { "rulesPackageArns" :: (ListReturnedArnList)
  , "nextToken" :: Maybe (PaginationToken)
  }
derive instance newtypeListRulesPackagesResponse :: Newtype ListRulesPackagesResponse _
derive instance repGenericListRulesPackagesResponse :: Generic ListRulesPackagesResponse _
instance showListRulesPackagesResponse :: Show ListRulesPackagesResponse where show = genericShow
instance decodeListRulesPackagesResponse :: Decode ListRulesPackagesResponse where decode = genericDecode options
instance encodeListRulesPackagesResponse :: Encode ListRulesPackagesResponse where encode = genericEncode options

-- | Constructs ListRulesPackagesResponse from required parameters
newListRulesPackagesResponse :: ListReturnedArnList -> ListRulesPackagesResponse
newListRulesPackagesResponse _rulesPackageArns = ListRulesPackagesResponse { "rulesPackageArns": _rulesPackageArns, "nextToken": Nothing }

-- | Constructs ListRulesPackagesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRulesPackagesResponse' :: ListReturnedArnList -> ( { "rulesPackageArns" :: (ListReturnedArnList) , "nextToken" :: Maybe (PaginationToken) } -> {"rulesPackageArns" :: (ListReturnedArnList) , "nextToken" :: Maybe (PaginationToken) } ) -> ListRulesPackagesResponse
newListRulesPackagesResponse' _rulesPackageArns customize = (ListRulesPackagesResponse <<< customize) { "rulesPackageArns": _rulesPackageArns, "nextToken": Nothing }



newtype ListTagsForResourceRequest = ListTagsForResourceRequest 
  { "resourceArn" :: (Arn)
  }
derive instance newtypeListTagsForResourceRequest :: Newtype ListTagsForResourceRequest _
derive instance repGenericListTagsForResourceRequest :: Generic ListTagsForResourceRequest _
instance showListTagsForResourceRequest :: Show ListTagsForResourceRequest where show = genericShow
instance decodeListTagsForResourceRequest :: Decode ListTagsForResourceRequest where decode = genericDecode options
instance encodeListTagsForResourceRequest :: Encode ListTagsForResourceRequest where encode = genericEncode options

-- | Constructs ListTagsForResourceRequest from required parameters
newListTagsForResourceRequest :: Arn -> ListTagsForResourceRequest
newListTagsForResourceRequest _resourceArn = ListTagsForResourceRequest { "resourceArn": _resourceArn }

-- | Constructs ListTagsForResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForResourceRequest' :: Arn -> ( { "resourceArn" :: (Arn) } -> {"resourceArn" :: (Arn) } ) -> ListTagsForResourceRequest
newListTagsForResourceRequest' _resourceArn customize = (ListTagsForResourceRequest <<< customize) { "resourceArn": _resourceArn }



newtype ListTagsForResourceResponse = ListTagsForResourceResponse 
  { "tags" :: (TagList)
  }
derive instance newtypeListTagsForResourceResponse :: Newtype ListTagsForResourceResponse _
derive instance repGenericListTagsForResourceResponse :: Generic ListTagsForResourceResponse _
instance showListTagsForResourceResponse :: Show ListTagsForResourceResponse where show = genericShow
instance decodeListTagsForResourceResponse :: Decode ListTagsForResourceResponse where decode = genericDecode options
instance encodeListTagsForResourceResponse :: Encode ListTagsForResourceResponse where encode = genericEncode options

-- | Constructs ListTagsForResourceResponse from required parameters
newListTagsForResourceResponse :: TagList -> ListTagsForResourceResponse
newListTagsForResourceResponse _tags = ListTagsForResourceResponse { "tags": _tags }

-- | Constructs ListTagsForResourceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForResourceResponse' :: TagList -> ( { "tags" :: (TagList) } -> {"tags" :: (TagList) } ) -> ListTagsForResourceResponse
newListTagsForResourceResponse' _tags customize = (ListTagsForResourceResponse <<< customize) { "tags": _tags }



newtype Locale = Locale String
derive instance newtypeLocale :: Newtype Locale _
derive instance repGenericLocale :: Generic Locale _
instance showLocale :: Show Locale where show = genericShow
instance decodeLocale :: Decode Locale where decode = genericDecode options
instance encodeLocale :: Encode Locale where encode = genericEncode options



newtype Message = Message String
derive instance newtypeMessage :: Newtype Message _
derive instance repGenericMessage :: Generic Message _
instance showMessage :: Show Message where show = genericShow
instance decodeMessage :: Decode Message where decode = genericDecode options
instance encodeMessage :: Encode Message where encode = genericEncode options



newtype MessageType = MessageType String
derive instance newtypeMessageType :: Newtype MessageType _
derive instance repGenericMessageType :: Generic MessageType _
instance showMessageType :: Show MessageType where show = genericShow
instance decodeMessageType :: Decode MessageType where decode = genericDecode options
instance encodeMessageType :: Encode MessageType where encode = genericEncode options



newtype NamePattern = NamePattern String
derive instance newtypeNamePattern :: Newtype NamePattern _
derive instance repGenericNamePattern :: Generic NamePattern _
instance showNamePattern :: Show NamePattern where show = genericShow
instance decodeNamePattern :: Decode NamePattern where decode = genericDecode options
instance encodeNamePattern :: Encode NamePattern where encode = genericEncode options



newtype NoSuchEntityErrorCode = NoSuchEntityErrorCode String
derive instance newtypeNoSuchEntityErrorCode :: Newtype NoSuchEntityErrorCode _
derive instance repGenericNoSuchEntityErrorCode :: Generic NoSuchEntityErrorCode _
instance showNoSuchEntityErrorCode :: Show NoSuchEntityErrorCode where show = genericShow
instance decodeNoSuchEntityErrorCode :: Decode NoSuchEntityErrorCode where decode = genericDecode options
instance encodeNoSuchEntityErrorCode :: Encode NoSuchEntityErrorCode where encode = genericEncode options



-- | <p>The request was rejected because it referenced an entity that does not exist. The error code describes the entity.</p>
newtype NoSuchEntityException = NoSuchEntityException 
  { "message" :: (ErrorMessage)
  , "errorCode" :: (NoSuchEntityErrorCode)
  , "canRetry" :: (Bool)
  }
derive instance newtypeNoSuchEntityException :: Newtype NoSuchEntityException _
derive instance repGenericNoSuchEntityException :: Generic NoSuchEntityException _
instance showNoSuchEntityException :: Show NoSuchEntityException where show = genericShow
instance decodeNoSuchEntityException :: Decode NoSuchEntityException where decode = genericDecode options
instance encodeNoSuchEntityException :: Encode NoSuchEntityException where encode = genericEncode options

-- | Constructs NoSuchEntityException from required parameters
newNoSuchEntityException :: Bool -> NoSuchEntityErrorCode -> ErrorMessage -> NoSuchEntityException
newNoSuchEntityException _canRetry _errorCode _message = NoSuchEntityException { "canRetry": _canRetry, "errorCode": _errorCode, "message": _message }

-- | Constructs NoSuchEntityException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNoSuchEntityException' :: Bool -> NoSuchEntityErrorCode -> ErrorMessage -> ( { "message" :: (ErrorMessage) , "errorCode" :: (NoSuchEntityErrorCode) , "canRetry" :: (Bool) } -> {"message" :: (ErrorMessage) , "errorCode" :: (NoSuchEntityErrorCode) , "canRetry" :: (Bool) } ) -> NoSuchEntityException
newNoSuchEntityException' _canRetry _errorCode _message customize = (NoSuchEntityException <<< customize) { "canRetry": _canRetry, "errorCode": _errorCode, "message": _message }



newtype NumericSeverity = NumericSeverity Number
derive instance newtypeNumericSeverity :: Newtype NumericSeverity _
derive instance repGenericNumericSeverity :: Generic NumericSeverity _
instance showNumericSeverity :: Show NumericSeverity where show = genericShow
instance decodeNumericSeverity :: Decode NumericSeverity where decode = genericDecode options
instance encodeNumericSeverity :: Encode NumericSeverity where encode = genericEncode options



newtype NumericVersion = NumericVersion Int
derive instance newtypeNumericVersion :: Newtype NumericVersion _
derive instance repGenericNumericVersion :: Generic NumericVersion _
instance showNumericVersion :: Show NumericVersion where show = genericShow
instance decodeNumericVersion :: Decode NumericVersion where decode = genericDecode options
instance encodeNumericVersion :: Encode NumericVersion where encode = genericEncode options



newtype OperatingSystem = OperatingSystem String
derive instance newtypeOperatingSystem :: Newtype OperatingSystem _
derive instance repGenericOperatingSystem :: Generic OperatingSystem _
instance showOperatingSystem :: Show OperatingSystem where show = genericShow
instance decodeOperatingSystem :: Decode OperatingSystem where decode = genericDecode options
instance encodeOperatingSystem :: Encode OperatingSystem where encode = genericEncode options



newtype PaginationToken = PaginationToken String
derive instance newtypePaginationToken :: Newtype PaginationToken _
derive instance repGenericPaginationToken :: Generic PaginationToken _
instance showPaginationToken :: Show PaginationToken where show = genericShow
instance decodePaginationToken :: Decode PaginationToken where decode = genericDecode options
instance encodePaginationToken :: Encode PaginationToken where encode = genericEncode options



newtype PreviewAgentsMaxResults = PreviewAgentsMaxResults Int
derive instance newtypePreviewAgentsMaxResults :: Newtype PreviewAgentsMaxResults _
derive instance repGenericPreviewAgentsMaxResults :: Generic PreviewAgentsMaxResults _
instance showPreviewAgentsMaxResults :: Show PreviewAgentsMaxResults where show = genericShow
instance decodePreviewAgentsMaxResults :: Decode PreviewAgentsMaxResults where decode = genericDecode options
instance encodePreviewAgentsMaxResults :: Encode PreviewAgentsMaxResults where encode = genericEncode options



newtype PreviewAgentsRequest = PreviewAgentsRequest 
  { "previewAgentsArn" :: (Arn)
  , "nextToken" :: Maybe (PaginationToken)
  , "maxResults" :: Maybe (PreviewAgentsMaxResults)
  }
derive instance newtypePreviewAgentsRequest :: Newtype PreviewAgentsRequest _
derive instance repGenericPreviewAgentsRequest :: Generic PreviewAgentsRequest _
instance showPreviewAgentsRequest :: Show PreviewAgentsRequest where show = genericShow
instance decodePreviewAgentsRequest :: Decode PreviewAgentsRequest where decode = genericDecode options
instance encodePreviewAgentsRequest :: Encode PreviewAgentsRequest where encode = genericEncode options

-- | Constructs PreviewAgentsRequest from required parameters
newPreviewAgentsRequest :: Arn -> PreviewAgentsRequest
newPreviewAgentsRequest _previewAgentsArn = PreviewAgentsRequest { "previewAgentsArn": _previewAgentsArn, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs PreviewAgentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPreviewAgentsRequest' :: Arn -> ( { "previewAgentsArn" :: (Arn) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (PreviewAgentsMaxResults) } -> {"previewAgentsArn" :: (Arn) , "nextToken" :: Maybe (PaginationToken) , "maxResults" :: Maybe (PreviewAgentsMaxResults) } ) -> PreviewAgentsRequest
newPreviewAgentsRequest' _previewAgentsArn customize = (PreviewAgentsRequest <<< customize) { "previewAgentsArn": _previewAgentsArn, "maxResults": Nothing, "nextToken": Nothing }



newtype PreviewAgentsResponse = PreviewAgentsResponse 
  { "agentPreviews" :: (AgentPreviewList)
  , "nextToken" :: Maybe (PaginationToken)
  }
derive instance newtypePreviewAgentsResponse :: Newtype PreviewAgentsResponse _
derive instance repGenericPreviewAgentsResponse :: Generic PreviewAgentsResponse _
instance showPreviewAgentsResponse :: Show PreviewAgentsResponse where show = genericShow
instance decodePreviewAgentsResponse :: Decode PreviewAgentsResponse where decode = genericDecode options
instance encodePreviewAgentsResponse :: Encode PreviewAgentsResponse where encode = genericEncode options

-- | Constructs PreviewAgentsResponse from required parameters
newPreviewAgentsResponse :: AgentPreviewList -> PreviewAgentsResponse
newPreviewAgentsResponse _agentPreviews = PreviewAgentsResponse { "agentPreviews": _agentPreviews, "nextToken": Nothing }

-- | Constructs PreviewAgentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPreviewAgentsResponse' :: AgentPreviewList -> ( { "agentPreviews" :: (AgentPreviewList) , "nextToken" :: Maybe (PaginationToken) } -> {"agentPreviews" :: (AgentPreviewList) , "nextToken" :: Maybe (PaginationToken) } ) -> PreviewAgentsResponse
newPreviewAgentsResponse' _agentPreviews customize = (PreviewAgentsResponse <<< customize) { "agentPreviews": _agentPreviews, "nextToken": Nothing }



newtype ProviderName = ProviderName String
derive instance newtypeProviderName :: Newtype ProviderName _
derive instance repGenericProviderName :: Generic ProviderName _
instance showProviderName :: Show ProviderName where show = genericShow
instance decodeProviderName :: Decode ProviderName where decode = genericDecode options
instance encodeProviderName :: Encode ProviderName where encode = genericEncode options



newtype RegisterCrossAccountAccessRoleRequest = RegisterCrossAccountAccessRoleRequest 
  { "roleArn" :: (Arn)
  }
derive instance newtypeRegisterCrossAccountAccessRoleRequest :: Newtype RegisterCrossAccountAccessRoleRequest _
derive instance repGenericRegisterCrossAccountAccessRoleRequest :: Generic RegisterCrossAccountAccessRoleRequest _
instance showRegisterCrossAccountAccessRoleRequest :: Show RegisterCrossAccountAccessRoleRequest where show = genericShow
instance decodeRegisterCrossAccountAccessRoleRequest :: Decode RegisterCrossAccountAccessRoleRequest where decode = genericDecode options
instance encodeRegisterCrossAccountAccessRoleRequest :: Encode RegisterCrossAccountAccessRoleRequest where encode = genericEncode options

-- | Constructs RegisterCrossAccountAccessRoleRequest from required parameters
newRegisterCrossAccountAccessRoleRequest :: Arn -> RegisterCrossAccountAccessRoleRequest
newRegisterCrossAccountAccessRoleRequest _roleArn = RegisterCrossAccountAccessRoleRequest { "roleArn": _roleArn }

-- | Constructs RegisterCrossAccountAccessRoleRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterCrossAccountAccessRoleRequest' :: Arn -> ( { "roleArn" :: (Arn) } -> {"roleArn" :: (Arn) } ) -> RegisterCrossAccountAccessRoleRequest
newRegisterCrossAccountAccessRoleRequest' _roleArn customize = (RegisterCrossAccountAccessRoleRequest <<< customize) { "roleArn": _roleArn }



newtype RemoveAttributesFromFindingsRequest = RemoveAttributesFromFindingsRequest 
  { "findingArns" :: (AddRemoveAttributesFindingArnList)
  , "attributeKeys" :: (UserAttributeKeyList)
  }
derive instance newtypeRemoveAttributesFromFindingsRequest :: Newtype RemoveAttributesFromFindingsRequest _
derive instance repGenericRemoveAttributesFromFindingsRequest :: Generic RemoveAttributesFromFindingsRequest _
instance showRemoveAttributesFromFindingsRequest :: Show RemoveAttributesFromFindingsRequest where show = genericShow
instance decodeRemoveAttributesFromFindingsRequest :: Decode RemoveAttributesFromFindingsRequest where decode = genericDecode options
instance encodeRemoveAttributesFromFindingsRequest :: Encode RemoveAttributesFromFindingsRequest where encode = genericEncode options

-- | Constructs RemoveAttributesFromFindingsRequest from required parameters
newRemoveAttributesFromFindingsRequest :: UserAttributeKeyList -> AddRemoveAttributesFindingArnList -> RemoveAttributesFromFindingsRequest
newRemoveAttributesFromFindingsRequest _attributeKeys _findingArns = RemoveAttributesFromFindingsRequest { "attributeKeys": _attributeKeys, "findingArns": _findingArns }

-- | Constructs RemoveAttributesFromFindingsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveAttributesFromFindingsRequest' :: UserAttributeKeyList -> AddRemoveAttributesFindingArnList -> ( { "findingArns" :: (AddRemoveAttributesFindingArnList) , "attributeKeys" :: (UserAttributeKeyList) } -> {"findingArns" :: (AddRemoveAttributesFindingArnList) , "attributeKeys" :: (UserAttributeKeyList) } ) -> RemoveAttributesFromFindingsRequest
newRemoveAttributesFromFindingsRequest' _attributeKeys _findingArns customize = (RemoveAttributesFromFindingsRequest <<< customize) { "attributeKeys": _attributeKeys, "findingArns": _findingArns }



newtype RemoveAttributesFromFindingsResponse = RemoveAttributesFromFindingsResponse 
  { "failedItems" :: (FailedItems)
  }
derive instance newtypeRemoveAttributesFromFindingsResponse :: Newtype RemoveAttributesFromFindingsResponse _
derive instance repGenericRemoveAttributesFromFindingsResponse :: Generic RemoveAttributesFromFindingsResponse _
instance showRemoveAttributesFromFindingsResponse :: Show RemoveAttributesFromFindingsResponse where show = genericShow
instance decodeRemoveAttributesFromFindingsResponse :: Decode RemoveAttributesFromFindingsResponse where decode = genericDecode options
instance encodeRemoveAttributesFromFindingsResponse :: Encode RemoveAttributesFromFindingsResponse where encode = genericEncode options

-- | Constructs RemoveAttributesFromFindingsResponse from required parameters
newRemoveAttributesFromFindingsResponse :: FailedItems -> RemoveAttributesFromFindingsResponse
newRemoveAttributesFromFindingsResponse _failedItems = RemoveAttributesFromFindingsResponse { "failedItems": _failedItems }

-- | Constructs RemoveAttributesFromFindingsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveAttributesFromFindingsResponse' :: FailedItems -> ( { "failedItems" :: (FailedItems) } -> {"failedItems" :: (FailedItems) } ) -> RemoveAttributesFromFindingsResponse
newRemoveAttributesFromFindingsResponse' _failedItems customize = (RemoveAttributesFromFindingsResponse <<< customize) { "failedItems": _failedItems }



newtype ReportFileFormat = ReportFileFormat String
derive instance newtypeReportFileFormat :: Newtype ReportFileFormat _
derive instance repGenericReportFileFormat :: Generic ReportFileFormat _
instance showReportFileFormat :: Show ReportFileFormat where show = genericShow
instance decodeReportFileFormat :: Decode ReportFileFormat where decode = genericDecode options
instance encodeReportFileFormat :: Encode ReportFileFormat where encode = genericEncode options



newtype ReportStatus = ReportStatus String
derive instance newtypeReportStatus :: Newtype ReportStatus _
derive instance repGenericReportStatus :: Generic ReportStatus _
instance showReportStatus :: Show ReportStatus where show = genericShow
instance decodeReportStatus :: Decode ReportStatus where decode = genericDecode options
instance encodeReportStatus :: Encode ReportStatus where encode = genericEncode options



newtype ReportType = ReportType String
derive instance newtypeReportType :: Newtype ReportType _
derive instance repGenericReportType :: Generic ReportType _
instance showReportType :: Show ReportType where show = genericShow
instance decodeReportType :: Decode ReportType where decode = genericDecode options
instance encodeReportType :: Encode ReportType where encode = genericEncode options



-- | <p>Contains information about a resource group. The resource group defines a set of tags that, when queried, identify the AWS resources that make up the assessment target. This data type is used as the response element in the <a>DescribeResourceGroups</a> action.</p>
newtype ResourceGroup = ResourceGroup 
  { "arn" :: (Arn)
  , "tags" :: (ResourceGroupTags)
  , "createdAt" :: (Types.Timestamp)
  }
derive instance newtypeResourceGroup :: Newtype ResourceGroup _
derive instance repGenericResourceGroup :: Generic ResourceGroup _
instance showResourceGroup :: Show ResourceGroup where show = genericShow
instance decodeResourceGroup :: Decode ResourceGroup where decode = genericDecode options
instance encodeResourceGroup :: Encode ResourceGroup where encode = genericEncode options

-- | Constructs ResourceGroup from required parameters
newResourceGroup :: Arn -> Types.Timestamp -> ResourceGroupTags -> ResourceGroup
newResourceGroup _arn _createdAt _tags = ResourceGroup { "arn": _arn, "createdAt": _createdAt, "tags": _tags }

-- | Constructs ResourceGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceGroup' :: Arn -> Types.Timestamp -> ResourceGroupTags -> ( { "arn" :: (Arn) , "tags" :: (ResourceGroupTags) , "createdAt" :: (Types.Timestamp) } -> {"arn" :: (Arn) , "tags" :: (ResourceGroupTags) , "createdAt" :: (Types.Timestamp) } ) -> ResourceGroup
newResourceGroup' _arn _createdAt _tags customize = (ResourceGroup <<< customize) { "arn": _arn, "createdAt": _createdAt, "tags": _tags }



newtype ResourceGroupList = ResourceGroupList (Array ResourceGroup)
derive instance newtypeResourceGroupList :: Newtype ResourceGroupList _
derive instance repGenericResourceGroupList :: Generic ResourceGroupList _
instance showResourceGroupList :: Show ResourceGroupList where show = genericShow
instance decodeResourceGroupList :: Decode ResourceGroupList where decode = genericDecode options
instance encodeResourceGroupList :: Encode ResourceGroupList where encode = genericEncode options



-- | <p>This data type is used as one of the elements of the <a>ResourceGroup</a> data type.</p>
newtype ResourceGroupTag = ResourceGroupTag 
  { "key" :: (TagKey)
  , "value" :: Maybe (TagValue)
  }
derive instance newtypeResourceGroupTag :: Newtype ResourceGroupTag _
derive instance repGenericResourceGroupTag :: Generic ResourceGroupTag _
instance showResourceGroupTag :: Show ResourceGroupTag where show = genericShow
instance decodeResourceGroupTag :: Decode ResourceGroupTag where decode = genericDecode options
instance encodeResourceGroupTag :: Encode ResourceGroupTag where encode = genericEncode options

-- | Constructs ResourceGroupTag from required parameters
newResourceGroupTag :: TagKey -> ResourceGroupTag
newResourceGroupTag _key = ResourceGroupTag { "key": _key, "value": Nothing }

-- | Constructs ResourceGroupTag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceGroupTag' :: TagKey -> ( { "key" :: (TagKey) , "value" :: Maybe (TagValue) } -> {"key" :: (TagKey) , "value" :: Maybe (TagValue) } ) -> ResourceGroupTag
newResourceGroupTag' _key customize = (ResourceGroupTag <<< customize) { "key": _key, "value": Nothing }



newtype ResourceGroupTags = ResourceGroupTags (Array ResourceGroupTag)
derive instance newtypeResourceGroupTags :: Newtype ResourceGroupTags _
derive instance repGenericResourceGroupTags :: Generic ResourceGroupTags _
instance showResourceGroupTags :: Show ResourceGroupTags where show = genericShow
instance decodeResourceGroupTags :: Decode ResourceGroupTags where decode = genericDecode options
instance encodeResourceGroupTags :: Encode ResourceGroupTags where encode = genericEncode options



newtype RuleName = RuleName String
derive instance newtypeRuleName :: Newtype RuleName _
derive instance repGenericRuleName :: Generic RuleName _
instance showRuleName :: Show RuleName where show = genericShow
instance decodeRuleName :: Decode RuleName where decode = genericDecode options
instance encodeRuleName :: Encode RuleName where encode = genericEncode options



newtype RuleNameList = RuleNameList (Array RuleName)
derive instance newtypeRuleNameList :: Newtype RuleNameList _
derive instance repGenericRuleNameList :: Generic RuleNameList _
instance showRuleNameList :: Show RuleNameList where show = genericShow
instance decodeRuleNameList :: Decode RuleNameList where decode = genericDecode options
instance encodeRuleNameList :: Encode RuleNameList where encode = genericEncode options



-- | <p>Contains information about an Amazon Inspector rules package. This data type is used as the response element in the <a>DescribeRulesPackages</a> action.</p>
newtype RulesPackage = RulesPackage 
  { "arn" :: (Arn)
  , "name" :: (RulesPackageName)
  , "version" :: (Version)
  , "provider" :: (ProviderName)
  , "description" :: Maybe (Text)
  }
derive instance newtypeRulesPackage :: Newtype RulesPackage _
derive instance repGenericRulesPackage :: Generic RulesPackage _
instance showRulesPackage :: Show RulesPackage where show = genericShow
instance decodeRulesPackage :: Decode RulesPackage where decode = genericDecode options
instance encodeRulesPackage :: Encode RulesPackage where encode = genericEncode options

-- | Constructs RulesPackage from required parameters
newRulesPackage :: Arn -> RulesPackageName -> ProviderName -> Version -> RulesPackage
newRulesPackage _arn _name _provider _version = RulesPackage { "arn": _arn, "name": _name, "provider": _provider, "version": _version, "description": Nothing }

-- | Constructs RulesPackage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRulesPackage' :: Arn -> RulesPackageName -> ProviderName -> Version -> ( { "arn" :: (Arn) , "name" :: (RulesPackageName) , "version" :: (Version) , "provider" :: (ProviderName) , "description" :: Maybe (Text) } -> {"arn" :: (Arn) , "name" :: (RulesPackageName) , "version" :: (Version) , "provider" :: (ProviderName) , "description" :: Maybe (Text) } ) -> RulesPackage
newRulesPackage' _arn _name _provider _version customize = (RulesPackage <<< customize) { "arn": _arn, "name": _name, "provider": _provider, "version": _version, "description": Nothing }



newtype RulesPackageList = RulesPackageList (Array RulesPackage)
derive instance newtypeRulesPackageList :: Newtype RulesPackageList _
derive instance repGenericRulesPackageList :: Generic RulesPackageList _
instance showRulesPackageList :: Show RulesPackageList where show = genericShow
instance decodeRulesPackageList :: Decode RulesPackageList where decode = genericDecode options
instance encodeRulesPackageList :: Encode RulesPackageList where encode = genericEncode options



newtype RulesPackageName = RulesPackageName String
derive instance newtypeRulesPackageName :: Newtype RulesPackageName _
derive instance repGenericRulesPackageName :: Generic RulesPackageName _
instance showRulesPackageName :: Show RulesPackageName where show = genericShow
instance decodeRulesPackageName :: Decode RulesPackageName where decode = genericDecode options
instance encodeRulesPackageName :: Encode RulesPackageName where encode = genericEncode options



newtype ServiceName = ServiceName String
derive instance newtypeServiceName :: Newtype ServiceName _
derive instance repGenericServiceName :: Generic ServiceName _
instance showServiceName :: Show ServiceName where show = genericShow
instance decodeServiceName :: Decode ServiceName where decode = genericDecode options
instance encodeServiceName :: Encode ServiceName where encode = genericEncode options



newtype SetTagsForResourceRequest = SetTagsForResourceRequest 
  { "resourceArn" :: (Arn)
  , "tags" :: Maybe (TagList)
  }
derive instance newtypeSetTagsForResourceRequest :: Newtype SetTagsForResourceRequest _
derive instance repGenericSetTagsForResourceRequest :: Generic SetTagsForResourceRequest _
instance showSetTagsForResourceRequest :: Show SetTagsForResourceRequest where show = genericShow
instance decodeSetTagsForResourceRequest :: Decode SetTagsForResourceRequest where decode = genericDecode options
instance encodeSetTagsForResourceRequest :: Encode SetTagsForResourceRequest where encode = genericEncode options

-- | Constructs SetTagsForResourceRequest from required parameters
newSetTagsForResourceRequest :: Arn -> SetTagsForResourceRequest
newSetTagsForResourceRequest _resourceArn = SetTagsForResourceRequest { "resourceArn": _resourceArn, "tags": Nothing }

-- | Constructs SetTagsForResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetTagsForResourceRequest' :: Arn -> ( { "resourceArn" :: (Arn) , "tags" :: Maybe (TagList) } -> {"resourceArn" :: (Arn) , "tags" :: Maybe (TagList) } ) -> SetTagsForResourceRequest
newSetTagsForResourceRequest' _resourceArn customize = (SetTagsForResourceRequest <<< customize) { "resourceArn": _resourceArn, "tags": Nothing }



newtype Severity = Severity String
derive instance newtypeSeverity :: Newtype Severity _
derive instance repGenericSeverity :: Generic Severity _
instance showSeverity :: Show Severity where show = genericShow
instance decodeSeverity :: Decode Severity where decode = genericDecode options
instance encodeSeverity :: Encode Severity where encode = genericEncode options



newtype SeverityList = SeverityList (Array Severity)
derive instance newtypeSeverityList :: Newtype SeverityList _
derive instance repGenericSeverityList :: Generic SeverityList _
instance showSeverityList :: Show SeverityList where show = genericShow
instance decodeSeverityList :: Decode SeverityList where decode = genericDecode options
instance encodeSeverityList :: Encode SeverityList where encode = genericEncode options



newtype StartAssessmentRunRequest = StartAssessmentRunRequest 
  { "assessmentTemplateArn" :: (Arn)
  , "assessmentRunName" :: Maybe (AssessmentRunName)
  }
derive instance newtypeStartAssessmentRunRequest :: Newtype StartAssessmentRunRequest _
derive instance repGenericStartAssessmentRunRequest :: Generic StartAssessmentRunRequest _
instance showStartAssessmentRunRequest :: Show StartAssessmentRunRequest where show = genericShow
instance decodeStartAssessmentRunRequest :: Decode StartAssessmentRunRequest where decode = genericDecode options
instance encodeStartAssessmentRunRequest :: Encode StartAssessmentRunRequest where encode = genericEncode options

-- | Constructs StartAssessmentRunRequest from required parameters
newStartAssessmentRunRequest :: Arn -> StartAssessmentRunRequest
newStartAssessmentRunRequest _assessmentTemplateArn = StartAssessmentRunRequest { "assessmentTemplateArn": _assessmentTemplateArn, "assessmentRunName": Nothing }

-- | Constructs StartAssessmentRunRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartAssessmentRunRequest' :: Arn -> ( { "assessmentTemplateArn" :: (Arn) , "assessmentRunName" :: Maybe (AssessmentRunName) } -> {"assessmentTemplateArn" :: (Arn) , "assessmentRunName" :: Maybe (AssessmentRunName) } ) -> StartAssessmentRunRequest
newStartAssessmentRunRequest' _assessmentTemplateArn customize = (StartAssessmentRunRequest <<< customize) { "assessmentTemplateArn": _assessmentTemplateArn, "assessmentRunName": Nothing }



newtype StartAssessmentRunResponse = StartAssessmentRunResponse 
  { "assessmentRunArn" :: (Arn)
  }
derive instance newtypeStartAssessmentRunResponse :: Newtype StartAssessmentRunResponse _
derive instance repGenericStartAssessmentRunResponse :: Generic StartAssessmentRunResponse _
instance showStartAssessmentRunResponse :: Show StartAssessmentRunResponse where show = genericShow
instance decodeStartAssessmentRunResponse :: Decode StartAssessmentRunResponse where decode = genericDecode options
instance encodeStartAssessmentRunResponse :: Encode StartAssessmentRunResponse where encode = genericEncode options

-- | Constructs StartAssessmentRunResponse from required parameters
newStartAssessmentRunResponse :: Arn -> StartAssessmentRunResponse
newStartAssessmentRunResponse _assessmentRunArn = StartAssessmentRunResponse { "assessmentRunArn": _assessmentRunArn }

-- | Constructs StartAssessmentRunResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartAssessmentRunResponse' :: Arn -> ( { "assessmentRunArn" :: (Arn) } -> {"assessmentRunArn" :: (Arn) } ) -> StartAssessmentRunResponse
newStartAssessmentRunResponse' _assessmentRunArn customize = (StartAssessmentRunResponse <<< customize) { "assessmentRunArn": _assessmentRunArn }



newtype StopAction = StopAction String
derive instance newtypeStopAction :: Newtype StopAction _
derive instance repGenericStopAction :: Generic StopAction _
instance showStopAction :: Show StopAction where show = genericShow
instance decodeStopAction :: Decode StopAction where decode = genericDecode options
instance encodeStopAction :: Encode StopAction where encode = genericEncode options



newtype StopAssessmentRunRequest = StopAssessmentRunRequest 
  { "assessmentRunArn" :: (Arn)
  , "stopAction" :: Maybe (StopAction)
  }
derive instance newtypeStopAssessmentRunRequest :: Newtype StopAssessmentRunRequest _
derive instance repGenericStopAssessmentRunRequest :: Generic StopAssessmentRunRequest _
instance showStopAssessmentRunRequest :: Show StopAssessmentRunRequest where show = genericShow
instance decodeStopAssessmentRunRequest :: Decode StopAssessmentRunRequest where decode = genericDecode options
instance encodeStopAssessmentRunRequest :: Encode StopAssessmentRunRequest where encode = genericEncode options

-- | Constructs StopAssessmentRunRequest from required parameters
newStopAssessmentRunRequest :: Arn -> StopAssessmentRunRequest
newStopAssessmentRunRequest _assessmentRunArn = StopAssessmentRunRequest { "assessmentRunArn": _assessmentRunArn, "stopAction": Nothing }

-- | Constructs StopAssessmentRunRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopAssessmentRunRequest' :: Arn -> ( { "assessmentRunArn" :: (Arn) , "stopAction" :: Maybe (StopAction) } -> {"assessmentRunArn" :: (Arn) , "stopAction" :: Maybe (StopAction) } ) -> StopAssessmentRunRequest
newStopAssessmentRunRequest' _assessmentRunArn customize = (StopAssessmentRunRequest <<< customize) { "assessmentRunArn": _assessmentRunArn, "stopAction": Nothing }



newtype SubscribeToEventRequest = SubscribeToEventRequest 
  { "resourceArn" :: (Arn)
  , "event" :: (InspectorEvent)
  , "topicArn" :: (Arn)
  }
derive instance newtypeSubscribeToEventRequest :: Newtype SubscribeToEventRequest _
derive instance repGenericSubscribeToEventRequest :: Generic SubscribeToEventRequest _
instance showSubscribeToEventRequest :: Show SubscribeToEventRequest where show = genericShow
instance decodeSubscribeToEventRequest :: Decode SubscribeToEventRequest where decode = genericDecode options
instance encodeSubscribeToEventRequest :: Encode SubscribeToEventRequest where encode = genericEncode options

-- | Constructs SubscribeToEventRequest from required parameters
newSubscribeToEventRequest :: InspectorEvent -> Arn -> Arn -> SubscribeToEventRequest
newSubscribeToEventRequest _event _resourceArn _topicArn = SubscribeToEventRequest { "event": _event, "resourceArn": _resourceArn, "topicArn": _topicArn }

-- | Constructs SubscribeToEventRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscribeToEventRequest' :: InspectorEvent -> Arn -> Arn -> ( { "resourceArn" :: (Arn) , "event" :: (InspectorEvent) , "topicArn" :: (Arn) } -> {"resourceArn" :: (Arn) , "event" :: (InspectorEvent) , "topicArn" :: (Arn) } ) -> SubscribeToEventRequest
newSubscribeToEventRequest' _event _resourceArn _topicArn customize = (SubscribeToEventRequest <<< customize) { "event": _event, "resourceArn": _resourceArn, "topicArn": _topicArn }



-- | <p>This data type is used as a response element in the <a>ListEventSubscriptions</a> action.</p>
newtype Subscription = Subscription 
  { "resourceArn" :: (Arn)
  , "topicArn" :: (Arn)
  , "eventSubscriptions" :: (EventSubscriptionList)
  }
derive instance newtypeSubscription :: Newtype Subscription _
derive instance repGenericSubscription :: Generic Subscription _
instance showSubscription :: Show Subscription where show = genericShow
instance decodeSubscription :: Decode Subscription where decode = genericDecode options
instance encodeSubscription :: Encode Subscription where encode = genericEncode options

-- | Constructs Subscription from required parameters
newSubscription :: EventSubscriptionList -> Arn -> Arn -> Subscription
newSubscription _eventSubscriptions _resourceArn _topicArn = Subscription { "eventSubscriptions": _eventSubscriptions, "resourceArn": _resourceArn, "topicArn": _topicArn }

-- | Constructs Subscription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscription' :: EventSubscriptionList -> Arn -> Arn -> ( { "resourceArn" :: (Arn) , "topicArn" :: (Arn) , "eventSubscriptions" :: (EventSubscriptionList) } -> {"resourceArn" :: (Arn) , "topicArn" :: (Arn) , "eventSubscriptions" :: (EventSubscriptionList) } ) -> Subscription
newSubscription' _eventSubscriptions _resourceArn _topicArn customize = (Subscription <<< customize) { "eventSubscriptions": _eventSubscriptions, "resourceArn": _resourceArn, "topicArn": _topicArn }



newtype SubscriptionList = SubscriptionList (Array Subscription)
derive instance newtypeSubscriptionList :: Newtype SubscriptionList _
derive instance repGenericSubscriptionList :: Generic SubscriptionList _
instance showSubscriptionList :: Show SubscriptionList where show = genericShow
instance decodeSubscriptionList :: Decode SubscriptionList where decode = genericDecode options
instance encodeSubscriptionList :: Encode SubscriptionList where encode = genericEncode options



-- | <p>A key and value pair. This data type is used as a request parameter in the <a>SetTagsForResource</a> action and a response element in the <a>ListTagsForResource</a> action.</p>
newtype Tag = Tag 
  { "key" :: (TagKey)
  , "value" :: Maybe (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: TagKey -> Tag
newTag _key = Tag { "key": _key, "value": Nothing }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: TagKey -> ( { "key" :: (TagKey) , "value" :: Maybe (TagValue) } -> {"key" :: (TagKey) , "value" :: Maybe (TagValue) } ) -> Tag
newTag' _key customize = (Tag <<< customize) { "key": _key, "value": Nothing }



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



-- | <p>The metadata about the Amazon Inspector application data metrics collected by the agent. This data type is used as the response element in the <a>GetTelemetryMetadata</a> action.</p>
newtype TelemetryMetadata = TelemetryMetadata 
  { "messageType" :: (MessageType)
  , "count" :: (Number)
  , "dataSize" :: Maybe (Number)
  }
derive instance newtypeTelemetryMetadata :: Newtype TelemetryMetadata _
derive instance repGenericTelemetryMetadata :: Generic TelemetryMetadata _
instance showTelemetryMetadata :: Show TelemetryMetadata where show = genericShow
instance decodeTelemetryMetadata :: Decode TelemetryMetadata where decode = genericDecode options
instance encodeTelemetryMetadata :: Encode TelemetryMetadata where encode = genericEncode options

-- | Constructs TelemetryMetadata from required parameters
newTelemetryMetadata :: Number -> MessageType -> TelemetryMetadata
newTelemetryMetadata _count _messageType = TelemetryMetadata { "count": _count, "messageType": _messageType, "dataSize": Nothing }

-- | Constructs TelemetryMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTelemetryMetadata' :: Number -> MessageType -> ( { "messageType" :: (MessageType) , "count" :: (Number) , "dataSize" :: Maybe (Number) } -> {"messageType" :: (MessageType) , "count" :: (Number) , "dataSize" :: Maybe (Number) } ) -> TelemetryMetadata
newTelemetryMetadata' _count _messageType customize = (TelemetryMetadata <<< customize) { "count": _count, "messageType": _messageType, "dataSize": Nothing }



newtype TelemetryMetadataList = TelemetryMetadataList (Array TelemetryMetadata)
derive instance newtypeTelemetryMetadataList :: Newtype TelemetryMetadataList _
derive instance repGenericTelemetryMetadataList :: Generic TelemetryMetadataList _
instance showTelemetryMetadataList :: Show TelemetryMetadataList where show = genericShow
instance decodeTelemetryMetadataList :: Decode TelemetryMetadataList where decode = genericDecode options
instance encodeTelemetryMetadataList :: Encode TelemetryMetadataList where encode = genericEncode options



newtype Text = Text String
derive instance newtypeText :: Newtype Text _
derive instance repGenericText :: Generic Text _
instance showText :: Show Text where show = genericShow
instance decodeText :: Decode Text where decode = genericDecode options
instance encodeText :: Encode Text where encode = genericEncode options



-- | <p>This data type is used in the <a>AssessmentRunFilter</a> data type.</p>
newtype TimestampRange = TimestampRange 
  { "beginDate" :: Maybe (Types.Timestamp)
  , "endDate" :: Maybe (Types.Timestamp)
  }
derive instance newtypeTimestampRange :: Newtype TimestampRange _
derive instance repGenericTimestampRange :: Generic TimestampRange _
instance showTimestampRange :: Show TimestampRange where show = genericShow
instance decodeTimestampRange :: Decode TimestampRange where decode = genericDecode options
instance encodeTimestampRange :: Encode TimestampRange where encode = genericEncode options

-- | Constructs TimestampRange from required parameters
newTimestampRange :: TimestampRange
newTimestampRange  = TimestampRange { "beginDate": Nothing, "endDate": Nothing }

-- | Constructs TimestampRange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimestampRange' :: ( { "beginDate" :: Maybe (Types.Timestamp) , "endDate" :: Maybe (Types.Timestamp) } -> {"beginDate" :: Maybe (Types.Timestamp) , "endDate" :: Maybe (Types.Timestamp) } ) -> TimestampRange
newTimestampRange'  customize = (TimestampRange <<< customize) { "beginDate": Nothing, "endDate": Nothing }



newtype UnsubscribeFromEventRequest = UnsubscribeFromEventRequest 
  { "resourceArn" :: (Arn)
  , "event" :: (InspectorEvent)
  , "topicArn" :: (Arn)
  }
derive instance newtypeUnsubscribeFromEventRequest :: Newtype UnsubscribeFromEventRequest _
derive instance repGenericUnsubscribeFromEventRequest :: Generic UnsubscribeFromEventRequest _
instance showUnsubscribeFromEventRequest :: Show UnsubscribeFromEventRequest where show = genericShow
instance decodeUnsubscribeFromEventRequest :: Decode UnsubscribeFromEventRequest where decode = genericDecode options
instance encodeUnsubscribeFromEventRequest :: Encode UnsubscribeFromEventRequest where encode = genericEncode options

-- | Constructs UnsubscribeFromEventRequest from required parameters
newUnsubscribeFromEventRequest :: InspectorEvent -> Arn -> Arn -> UnsubscribeFromEventRequest
newUnsubscribeFromEventRequest _event _resourceArn _topicArn = UnsubscribeFromEventRequest { "event": _event, "resourceArn": _resourceArn, "topicArn": _topicArn }

-- | Constructs UnsubscribeFromEventRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsubscribeFromEventRequest' :: InspectorEvent -> Arn -> Arn -> ( { "resourceArn" :: (Arn) , "event" :: (InspectorEvent) , "topicArn" :: (Arn) } -> {"resourceArn" :: (Arn) , "event" :: (InspectorEvent) , "topicArn" :: (Arn) } ) -> UnsubscribeFromEventRequest
newUnsubscribeFromEventRequest' _event _resourceArn _topicArn customize = (UnsubscribeFromEventRequest <<< customize) { "event": _event, "resourceArn": _resourceArn, "topicArn": _topicArn }



-- | <p>Used by the <a>GetAssessmentReport</a> API. The request was rejected because you tried to generate a report for an assessment run that existed before reporting was supported in Amazon Inspector. You can only generate reports for assessment runs that took place or will take place after generating reports in Amazon Inspector became available.</p>
newtype UnsupportedFeatureException = UnsupportedFeatureException 
  { "message" :: (ErrorMessage)
  , "canRetry" :: (Bool)
  }
derive instance newtypeUnsupportedFeatureException :: Newtype UnsupportedFeatureException _
derive instance repGenericUnsupportedFeatureException :: Generic UnsupportedFeatureException _
instance showUnsupportedFeatureException :: Show UnsupportedFeatureException where show = genericShow
instance decodeUnsupportedFeatureException :: Decode UnsupportedFeatureException where decode = genericDecode options
instance encodeUnsupportedFeatureException :: Encode UnsupportedFeatureException where encode = genericEncode options

-- | Constructs UnsupportedFeatureException from required parameters
newUnsupportedFeatureException :: Bool -> ErrorMessage -> UnsupportedFeatureException
newUnsupportedFeatureException _canRetry _message = UnsupportedFeatureException { "canRetry": _canRetry, "message": _message }

-- | Constructs UnsupportedFeatureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedFeatureException' :: Bool -> ErrorMessage -> ( { "message" :: (ErrorMessage) , "canRetry" :: (Bool) } -> {"message" :: (ErrorMessage) , "canRetry" :: (Bool) } ) -> UnsupportedFeatureException
newUnsupportedFeatureException' _canRetry _message customize = (UnsupportedFeatureException <<< customize) { "canRetry": _canRetry, "message": _message }



newtype UpdateAssessmentTargetRequest = UpdateAssessmentTargetRequest 
  { "assessmentTargetArn" :: (Arn)
  , "assessmentTargetName" :: (AssessmentTargetName)
  , "resourceGroupArn" :: (Arn)
  }
derive instance newtypeUpdateAssessmentTargetRequest :: Newtype UpdateAssessmentTargetRequest _
derive instance repGenericUpdateAssessmentTargetRequest :: Generic UpdateAssessmentTargetRequest _
instance showUpdateAssessmentTargetRequest :: Show UpdateAssessmentTargetRequest where show = genericShow
instance decodeUpdateAssessmentTargetRequest :: Decode UpdateAssessmentTargetRequest where decode = genericDecode options
instance encodeUpdateAssessmentTargetRequest :: Encode UpdateAssessmentTargetRequest where encode = genericEncode options

-- | Constructs UpdateAssessmentTargetRequest from required parameters
newUpdateAssessmentTargetRequest :: Arn -> AssessmentTargetName -> Arn -> UpdateAssessmentTargetRequest
newUpdateAssessmentTargetRequest _assessmentTargetArn _assessmentTargetName _resourceGroupArn = UpdateAssessmentTargetRequest { "assessmentTargetArn": _assessmentTargetArn, "assessmentTargetName": _assessmentTargetName, "resourceGroupArn": _resourceGroupArn }

-- | Constructs UpdateAssessmentTargetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateAssessmentTargetRequest' :: Arn -> AssessmentTargetName -> Arn -> ( { "assessmentTargetArn" :: (Arn) , "assessmentTargetName" :: (AssessmentTargetName) , "resourceGroupArn" :: (Arn) } -> {"assessmentTargetArn" :: (Arn) , "assessmentTargetName" :: (AssessmentTargetName) , "resourceGroupArn" :: (Arn) } ) -> UpdateAssessmentTargetRequest
newUpdateAssessmentTargetRequest' _assessmentTargetArn _assessmentTargetName _resourceGroupArn customize = (UpdateAssessmentTargetRequest <<< customize) { "assessmentTargetArn": _assessmentTargetArn, "assessmentTargetName": _assessmentTargetName, "resourceGroupArn": _resourceGroupArn }



newtype Url = Url String
derive instance newtypeUrl :: Newtype Url _
derive instance repGenericUrl :: Generic Url _
instance showUrl :: Show Url where show = genericShow
instance decodeUrl :: Decode Url where decode = genericDecode options
instance encodeUrl :: Encode Url where encode = genericEncode options



newtype UserAttributeKeyList = UserAttributeKeyList (Array AttributeKey)
derive instance newtypeUserAttributeKeyList :: Newtype UserAttributeKeyList _
derive instance repGenericUserAttributeKeyList :: Generic UserAttributeKeyList _
instance showUserAttributeKeyList :: Show UserAttributeKeyList where show = genericShow
instance decodeUserAttributeKeyList :: Decode UserAttributeKeyList where decode = genericDecode options
instance encodeUserAttributeKeyList :: Encode UserAttributeKeyList where encode = genericEncode options



newtype UserAttributeList = UserAttributeList (Array Attribute)
derive instance newtypeUserAttributeList :: Newtype UserAttributeList _
derive instance repGenericUserAttributeList :: Generic UserAttributeList _
instance showUserAttributeList :: Show UserAttributeList where show = genericShow
instance decodeUserAttributeList :: Decode UserAttributeList where decode = genericDecode options
instance encodeUserAttributeList :: Encode UserAttributeList where encode = genericEncode options



newtype Version = Version String
derive instance newtypeVersion :: Newtype Version _
derive instance repGenericVersion :: Generic Version _
instance showVersion :: Show Version where show = genericShow
instance decodeVersion :: Decode Version where decode = genericDecode options
instance encodeVersion :: Encode Version where encode = genericEncode options

