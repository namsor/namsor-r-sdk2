# SocialApi

All URIs are relative to *https://v2.namsor.com/NamSorAPIv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PhoneCode**](SocialApi.md#PhoneCode) | **GET** /api2/json/phoneCode/{firstName}/{lastName}/{phoneNumber} | [USES 11 UNITS] Infer the likely country and phone prefix, given a personal name and formatted / unformatted phone number.
[**PhoneCodeBatch**](SocialApi.md#PhoneCodeBatch) | **POST** /api2/json/phoneCodeBatch | [USES 11 UNITS] Infer the likely country and phone prefix, of up to 100 personal names, detecting automatically the local context given a name and formatted / unformatted phone number.
[**PhoneCodeGeo**](SocialApi.md#PhoneCodeGeo) | **GET** /api2/json/phoneCodeGeo/{firstName}/{lastName}/{phoneNumber}/{countryIso2} | [USES 11 UNITS] Infer the likely phone prefix, given a personal name and formatted / unformatted phone number, with a local context (ISO2 country of residence).
[**PhoneCodeGeoBatch**](SocialApi.md#PhoneCodeGeoBatch) | **POST** /api2/json/phoneCodeGeoBatch | [USES 11 UNITS] Infer the likely country and phone prefix, of up to 100 personal names, with a local context (ISO2 country of residence).
[**PhoneCodeGeoFeedbackLoop**](SocialApi.md#PhoneCodeGeoFeedbackLoop) | **GET** /api2/json/phoneCodeGeoFeedbackLoop/{firstName}/{lastName}/{phoneNumber}/{phoneNumberE164}/{countryIso2} | [CREDITS 1 UNIT] Feedback loop to better infer the likely phone prefix, given a personal name and formatted / unformatted phone number, with a local context (ISO2 country of residence).


# **PhoneCode**
> FirstLastNamePhoneCodedOut PhoneCode(first.name, last.name, phone.number)

[USES 11 UNITS] Infer the likely country and phone prefix, given a personal name and formatted / unformatted phone number.

### Example
```R
library(namsor)

var.first.name <- 'first.name_example' # character | 
var.last.name <- 'last.name_example' # character | 
var.phone.number <- 'phone.number_example' # character | 

#[USES 11 UNITS] Infer the likely country and phone prefix, given a personal name and formatted / unformatted phone number.
api.instance <- SocialApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PhoneCode(var.first.name, var.last.name, var.phone.number)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first.name** | **character**|  | 
 **last.name** | **character**|  | 
 **phone.number** | **character**|  | 

### Return type

[**FirstLastNamePhoneCodedOut**](FirstLastNamePhoneCodedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **PhoneCodeBatch**
> BatchFirstLastNamePhoneCodedOut PhoneCodeBatch(batch.first.last.name.phone.number.in=var.batch.first.last.name.phone.number.in)

[USES 11 UNITS] Infer the likely country and phone prefix, of up to 100 personal names, detecting automatically the local context given a name and formatted / unformatted phone number.

### Example
```R
library(namsor)

var.batch.first.last.name.phone.number.in <- BatchFirstLastNamePhoneNumberIn$new(list(FirstLastNamePhoneNumberIn$new("id_example", "firstName_example", "lastName_example", "phoneNumber_example", FirstLastNameOriginedOut$new("id_example", "firstName_example", "lastName_example", "countryOrigin_example", "countryOriginAlt_example", 123, "regionOrigin_example", "topRegionOrigin_example", "subRegionOrigin_example")))) # BatchFirstLastNamePhoneNumberIn | A list of personal names

#[USES 11 UNITS] Infer the likely country and phone prefix, of up to 100 personal names, detecting automatically the local context given a name and formatted / unformatted phone number.
api.instance <- SocialApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PhoneCodeBatch(batch.first.last.name.phone.number.in=var.batch.first.last.name.phone.number.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.phone.number.in** | [**BatchFirstLastNamePhoneNumberIn**](BatchFirstLastNamePhoneNumberIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNamePhoneCodedOut**](BatchFirstLastNamePhoneCodedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **PhoneCodeGeo**
> FirstLastNamePhoneCodedOut PhoneCodeGeo(first.name, last.name, phone.number, country.iso2)

[USES 11 UNITS] Infer the likely phone prefix, given a personal name and formatted / unformatted phone number, with a local context (ISO2 country of residence).

### Example
```R
library(namsor)

var.first.name <- 'first.name_example' # character | 
var.last.name <- 'last.name_example' # character | 
var.phone.number <- 'phone.number_example' # character | 
var.country.iso2 <- 'country.iso2_example' # character | 

#[USES 11 UNITS] Infer the likely phone prefix, given a personal name and formatted / unformatted phone number, with a local context (ISO2 country of residence).
api.instance <- SocialApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PhoneCodeGeo(var.first.name, var.last.name, var.phone.number, var.country.iso2)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first.name** | **character**|  | 
 **last.name** | **character**|  | 
 **phone.number** | **character**|  | 
 **country.iso2** | **character**|  | 

### Return type

[**FirstLastNamePhoneCodedOut**](FirstLastNamePhoneCodedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **PhoneCodeGeoBatch**
> BatchFirstLastNamePhoneCodedOut PhoneCodeGeoBatch(batch.first.last.name.phone.number.geo.in=var.batch.first.last.name.phone.number.geo.in)

[USES 11 UNITS] Infer the likely country and phone prefix, of up to 100 personal names, with a local context (ISO2 country of residence).

### Example
```R
library(namsor)

var.batch.first.last.name.phone.number.geo.in <- BatchFirstLastNamePhoneNumberGeoIn$new(list(FirstLastNamePhoneNumberGeoIn$new("id_example", "firstName_example", "lastName_example", "phoneNumber_example", FirstLastNameOriginedOut$new("id_example", "firstName_example", "lastName_example", "countryOrigin_example", "countryOriginAlt_example", 123, "regionOrigin_example", "topRegionOrigin_example", "subRegionOrigin_example"), "countryIso2_example", "countryIso2Alt_example"))) # BatchFirstLastNamePhoneNumberGeoIn | A list of personal names

#[USES 11 UNITS] Infer the likely country and phone prefix, of up to 100 personal names, with a local context (ISO2 country of residence).
api.instance <- SocialApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PhoneCodeGeoBatch(batch.first.last.name.phone.number.geo.in=var.batch.first.last.name.phone.number.geo.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.phone.number.geo.in** | [**BatchFirstLastNamePhoneNumberGeoIn**](BatchFirstLastNamePhoneNumberGeoIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNamePhoneCodedOut**](BatchFirstLastNamePhoneCodedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **PhoneCodeGeoFeedbackLoop**
> FirstLastNamePhoneCodedOut PhoneCodeGeoFeedbackLoop(first.name, last.name, phone.number, phone.number.e164, country.iso2)

[CREDITS 1 UNIT] Feedback loop to better infer the likely phone prefix, given a personal name and formatted / unformatted phone number, with a local context (ISO2 country of residence).

### Example
```R
library(namsor)

var.first.name <- 'first.name_example' # character | 
var.last.name <- 'last.name_example' # character | 
var.phone.number <- 'phone.number_example' # character | 
var.phone.number.e164 <- 'phone.number.e164_example' # character | 
var.country.iso2 <- 'country.iso2_example' # character | 

#[CREDITS 1 UNIT] Feedback loop to better infer the likely phone prefix, given a personal name and formatted / unformatted phone number, with a local context (ISO2 country of residence).
api.instance <- SocialApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PhoneCodeGeoFeedbackLoop(var.first.name, var.last.name, var.phone.number, var.phone.number.e164, var.country.iso2)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first.name** | **character**|  | 
 **last.name** | **character**|  | 
 **phone.number** | **character**|  | 
 **phone.number.e164** | **character**|  | 
 **country.iso2** | **character**|  | 

### Return type

[**FirstLastNamePhoneCodedOut**](FirstLastNamePhoneCodedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



