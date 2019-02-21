# ChineseApi

All URIs are relative to *https://v2.namsor.com/NamSorAPIv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChineseNameCandidates**](ChineseApi.md#ChineseNameCandidates) | **GET** /api2/json/chineseNameCandidates/{chineseSurnameLatin}/{chineseGivenNameLatin} | Identify Chinese name candidates, based on the romanized name.
[**ChineseNameCandidatesBatch**](ChineseApi.md#ChineseNameCandidatesBatch) | **POST** /api2/json/chineseNameCandidatesBatch | Identify Chinese name candidates, based on the romanized name (firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname).
[**ChineseNameCandidatesGenderBatch**](ChineseApi.md#ChineseNameCandidatesGenderBatch) | **POST** /api2/json/chineseNameCandidatesGenderBatch | Identify Chinese name candidates, based on the romanized name (firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname).
[**ChineseNameGenderCandidates**](ChineseApi.md#ChineseNameGenderCandidates) | **GET** /api2/json/chineseNameGenderCandidates/{chineseSurnameLatin}/{chineseGivenNameLatin}/{knownGender} | Identify Chinese name candidates, based on the romanized name - having a known gender (&#39;male&#39; or &#39;female&#39;)


# **ChineseNameCandidates**
> RomanizedNameOut ChineseNameCandidates(chinese.surname.latin, chinese.given.name.latin)

Identify Chinese name candidates, based on the romanized name.

### Example
```R
library(namsor)

var.chinese.surname.latin <- 'chinese.surname.latin_example' # character | 
var.chinese.given.name.latin <- 'chinese.given.name.latin_example' # character | 

#Identify Chinese name candidates, based on the romanized name.
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ChineseNameCandidates(var.chinese.surname.latin, var.chinese.given.name.latin)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chinese.surname.latin** | **character**|  | 
 **chinese.given.name.latin** | **character**|  | 

### Return type

[**RomanizedNameOut**](RomanizedNameOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ChineseNameCandidatesBatch**
> BatchNameMatchCandidatesOut ChineseNameCandidatesBatch(batch.first.last.name.in=var.batch.first.last.name.in)

Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname).

### Example
```R
library(namsor)

var.batch.first.last.name.in <- BatchFirstLastNameIn$new() # BatchFirstLastNameIn | A list of personal Chinese names in LATIN, firstName = chineseGivenName; lastName=chineseSurname

#Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname).
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ChineseNameCandidatesBatch(batch.first.last.name.in=var.batch.first.last.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.in** | [**BatchFirstLastNameIn**](BatchFirstLastNameIn.md)| A list of personal Chinese names in LATIN, firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname | [optional] 

### Return type

[**BatchNameMatchCandidatesOut**](BatchNameMatchCandidatesOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ChineseNameCandidatesGenderBatch**
> BatchNameMatchCandidatesOut ChineseNameCandidatesGenderBatch(batch.first.last.name.in=var.batch.first.last.name.in)

Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname).

### Example
```R
library(namsor)

var.batch.first.last.name.in <- BatchFirstLastNameIn$new() # BatchFirstLastNameIn | A list of personal Chinese names in LATIN, firstName = chineseGivenName; lastName=chineseSurname

#Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname).
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ChineseNameCandidatesGenderBatch(batch.first.last.name.in=var.batch.first.last.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.in** | [**BatchFirstLastNameIn**](BatchFirstLastNameIn.md)| A list of personal Chinese names in LATIN, firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname | [optional] 

### Return type

[**BatchNameMatchCandidatesOut**](BatchNameMatchCandidatesOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ChineseNameGenderCandidates**
> RomanizedNameOut ChineseNameGenderCandidates(chinese.surname.latin, chinese.given.name.latin, known.gender)

Identify Chinese name candidates, based on the romanized name - having a known gender ('male' or 'female')

### Example
```R
library(namsor)

var.chinese.surname.latin <- 'chinese.surname.latin_example' # character | 
var.chinese.given.name.latin <- 'chinese.given.name.latin_example' # character | 
var.known.gender <- 'known.gender_example' # character | 

#Identify Chinese name candidates, based on the romanized name - having a known gender ('male' or 'female')
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ChineseNameGenderCandidates(var.chinese.surname.latin, var.chinese.given.name.latin, var.known.gender)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chinese.surname.latin** | **character**|  | 
 **chinese.given.name.latin** | **character**|  | 
 **known.gender** | **character**|  | 

### Return type

[**RomanizedNameOut**](RomanizedNameOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



