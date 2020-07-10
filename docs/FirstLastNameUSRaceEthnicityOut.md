# namsor::FirstLastNameUSRaceEthnicityOut

Represents the output of inferring the LIKELY US 'race/ethnicity' from a personal name, given US country of residence and (optionally) a ZIP5 code.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** |  | [optional] 
**firstName** | **character** |  | [optional] 
**lastName** | **character** |  | [optional] 
**raceEthnicityAlt** | **character** | Second most likely US &#39;race&#39;/ethnicity | [optional] 
**raceEthnicity** | **character** | Most likely US &#39;race&#39;/ethnicity | [optional] 
**score** | **numeric** | Compatibility to NamSor_v1 Origin score value | [optional] 
**raceEthnicitiesTop** | **array[character]** | List &#39;race&#39;/ethnicities | [optional] 
**probabilityCalibrated** | **numeric** |  | [optional] 
**probabilityAltCalibrated** | **numeric** |  | [optional] 


