# namsor::FirstLastNameOriginedOut

Represents the output of inferring the LIKELY country of Origin from a personal name.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** |  | [optional] 
**firstName** | **character** |  | [optional] 
**lastName** | **character** |  | [optional] 
**countryOrigin** | **character** | Most likely country of Origin | [optional] 
**countryOriginAlt** | **character** | Second best alternative : country of Origin | [optional] 
**countriesOriginTop** | **array[character]** | List countries of Origin (top 10) | [optional] 
**score** | **numeric** | Compatibility to NamSor_v1 Origin score value | [optional] 
**regionOrigin** | **character** | Most likely region of Origin (based on countryOrigin ISO2 code) | [optional] 
**topRegionOrigin** | **character** | Most likely region of Origin (based on countryOrigin ISO2 code) | [optional] 
**subRegionOrigin** | **character** | Most likely region of Origin (based on countryOrigin ISO2 code) | [optional] 
**probabilityCalibrated** | **numeric** |  | [optional] 
**probabilityAltCalibrated** | **numeric** |  | [optional] 


