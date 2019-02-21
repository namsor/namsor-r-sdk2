# SocialApi

All URIs are relative to *https://v2.namsor.com/NamSorAPIv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PhonePrefix**](SocialApi.md#PhonePrefix) | **GET** /api2/json/phoneCode/{firstName}/{lastName}/{phoneNumber} | [USES 11 UNITS] Infer the likely country and phone prefix, given a personal name and formatted / unformatted phone number.
[**PhonePrefixBatch**](SocialApi.md#PhonePrefixBatch) | **POST** /api2/json/phoneCodeBatch | [USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, detecting automatically the local context given a name and formatted / unformatted phone number.


# **PhonePrefix**
> FirstLastNamePhoneCodedOut PhonePrefix(first.name, last.name, phone.number)

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
result <- api.instance$PhonePrefix(var.first.name, var.last.name, var.phone.number)
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



# **PhonePrefixBatch**
> BatchFirstLastNamePhoneCodedOut PhonePrefixBatch(batch.first.last.name.phone.number.in=var.batch.first.last.name.phone.number.in)

[USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, detecting automatically the local context given a name and formatted / unformatted phone number.

### Example
```R
library(namsor)

var.batch.first.last.name.phone.number.in <- BatchFirstLastNamePhoneNumberIn$new() # BatchFirstLastNamePhoneNumberIn | A list of personal names

#[USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, detecting automatically the local context given a name and formatted / unformatted phone number.
api.instance <- SocialApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PhonePrefixBatch(batch.first.last.name.phone.number.in=var.batch.first.last.name.phone.number.in)
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



