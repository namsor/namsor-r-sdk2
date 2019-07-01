# ChineseApi

All URIs are relative to *https://v2.namsor.com/NamSorAPIv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChineseNameCandidates**](ChineseApi.md#ChineseNameCandidates) | **GET** /api2/json/chineseNameCandidates/{chineseSurnameLatin}/{chineseGivenNameLatin} | Identify Chinese name candidates, based on the romanized name ex. Wang Xiaoming
[**ChineseNameCandidatesBatch**](ChineseApi.md#ChineseNameCandidatesBatch) | **POST** /api2/json/chineseNameCandidatesBatch | Identify Chinese name candidates, based on the romanized name (firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname), ex. Wang Xiaoming
[**ChineseNameCandidatesGenderBatch**](ChineseApi.md#ChineseNameCandidatesGenderBatch) | **POST** /api2/json/chineseNameCandidatesGenderBatch | Identify Chinese name candidates, based on the romanized name (firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname) ex. Wang Xiaoming.
[**ChineseNameGenderCandidates**](ChineseApi.md#ChineseNameGenderCandidates) | **GET** /api2/json/chineseNameGenderCandidates/{chineseSurnameLatin}/{chineseGivenNameLatin}/{knownGender} | Identify Chinese name candidates, based on the romanized name ex. Wang Xiaoming - having a known gender (&#39;male&#39; or &#39;female&#39;)
[**ChineseNameMatch**](ChineseApi.md#ChineseNameMatch) | **GET** /api2/json/chineseNameMatch/{chineseSurnameLatin}/{chineseGivenNameLatin}/{chineseName} | Return a score for matching Chinese name ex. 王晓明 with a romanized name ex. Wang Xiaoming
[**ChineseNameMatchBatch**](ChineseApi.md#ChineseNameMatchBatch) | **POST** /api2/json/chineseNameMatchBatch | Identify Chinese name candidates, based on the romanized name (firstName &#x3D; chineseGivenName; lastName&#x3D;chineseSurname), ex. Wang Xiaoming
[**GenderChineseName**](ChineseApi.md#GenderChineseName) | **GET** /api2/json/genderChineseName/{chineseName} | Infer the likely gender of a Chinese full name ex. 王晓明
[**GenderChineseNameBatch**](ChineseApi.md#GenderChineseNameBatch) | **POST** /api2/json/genderChineseNameBatch | Infer the likely gender of up to 100 full names ex. 王晓明
[**GenderChineseNamePinyin**](ChineseApi.md#GenderChineseNamePinyin) | **GET** /api2/json/genderChineseNamePinyin/{chineseSurnameLatin}/{chineseGivenNameLatin} | Infer the likely gender of a Chinese name in LATIN (Pinyin).
[**GenderChineseNamePinyinBatch**](ChineseApi.md#GenderChineseNamePinyinBatch) | **POST** /api2/json/genderChineseNamePinyinBatch | Infer the likely gender of up to 100 Chinese names in LATIN (Pinyin).
[**ParseChineseName**](ChineseApi.md#ParseChineseName) | **GET** /api2/json/parseChineseName/{chineseName} | Infer the likely first/last name structure of a name, ex. 王晓明 -&gt; 王(surname) 晓明(given name)
[**ParseChineseNameBatch**](ChineseApi.md#ParseChineseNameBatch) | **POST** /api2/json/parseChineseNameBatch | Infer the likely first/last name structure of a name, ex. 王晓明 -&gt; 王(surname) 晓明(given name).
[**PinyinChineseName**](ChineseApi.md#PinyinChineseName) | **GET** /api2/json/pinyinChineseName/{chineseName} | Romanize the Chinese name to Pinyin, ex. 王晓明 -&gt; Wang (surname) Xiaoming (given name)
[**PinyinChineseNameBatch**](ChineseApi.md#PinyinChineseNameBatch) | **POST** /api2/json/pinyinChineseNameBatch | Romanize a list of Chinese name to Pinyin, ex. 王晓明 -&gt; Wang (surname) Xiaoming (given name).


# **ChineseNameCandidates**
> RomanizedNameOut ChineseNameCandidates(chinese.surname.latin, chinese.given.name.latin)

Identify Chinese name candidates, based on the romanized name ex. Wang Xiaoming

### Example
```R
library(namsor)

var.chinese.surname.latin <- 'chinese.surname.latin_example' # character | 
var.chinese.given.name.latin <- 'chinese.given.name.latin_example' # character | 

#Identify Chinese name candidates, based on the romanized name ex. Wang Xiaoming
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

Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname), ex. Wang Xiaoming

### Example
```R
library(namsor)

var.batch.first.last.name.in <- BatchFirstLastNameIn$new(list(FirstLastNameIn$new("id_example", "firstName_example", "lastName_example"))) # BatchFirstLastNameIn | A list of personal Chinese names in LATIN, firstName = chineseGivenName; lastName=chineseSurname

#Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname), ex. Wang Xiaoming
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

Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname) ex. Wang Xiaoming.

### Example
```R
library(namsor)

var.batch.first.last.name.in <- BatchFirstLastNameIn$new(list(FirstLastNameIn$new("id_example", "firstName_example", "lastName_example"))) # BatchFirstLastNameIn | A list of personal Chinese names in LATIN, firstName = chineseGivenName; lastName=chineseSurname

#Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname) ex. Wang Xiaoming.
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

Identify Chinese name candidates, based on the romanized name ex. Wang Xiaoming - having a known gender ('male' or 'female')

### Example
```R
library(namsor)

var.chinese.surname.latin <- 'chinese.surname.latin_example' # character | 
var.chinese.given.name.latin <- 'chinese.given.name.latin_example' # character | 
var.known.gender <- 'known.gender_example' # character | 

#Identify Chinese name candidates, based on the romanized name ex. Wang Xiaoming - having a known gender ('male' or 'female')
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



# **ChineseNameMatch**
> RomanizedNameOut ChineseNameMatch(chinese.surname.latin, chinese.given.name.latin, chinese.name)

Return a score for matching Chinese name ex. 王晓明 with a romanized name ex. Wang Xiaoming

### Example
```R
library(namsor)

var.chinese.surname.latin <- 'chinese.surname.latin_example' # character | 
var.chinese.given.name.latin <- 'chinese.given.name.latin_example' # character | 
var.chinese.name <- 'chinese.name_example' # character | 

#Return a score for matching Chinese name ex. 王晓明 with a romanized name ex. Wang Xiaoming
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ChineseNameMatch(var.chinese.surname.latin, var.chinese.given.name.latin, var.chinese.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chinese.surname.latin** | **character**|  | 
 **chinese.given.name.latin** | **character**|  | 
 **chinese.name** | **character**|  | 

### Return type

[**RomanizedNameOut**](RomanizedNameOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ChineseNameMatchBatch**
> BatchNameMatchCandidatesOut ChineseNameMatchBatch(batch.first.last.name.in=var.batch.first.last.name.in)

Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname), ex. Wang Xiaoming

### Example
```R
library(namsor)

var.batch.first.last.name.in <- BatchFirstLastNameIn$new(list(FirstLastNameIn$new("id_example", "firstName_example", "lastName_example"))) # BatchFirstLastNameIn | A list of personal Chinese names in LATIN, firstName = chineseGivenName; lastName=chineseSurname

#Identify Chinese name candidates, based on the romanized name (firstName = chineseGivenName; lastName=chineseSurname), ex. Wang Xiaoming
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ChineseNameMatchBatch(batch.first.last.name.in=var.batch.first.last.name.in)
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



# **GenderChineseName**
> PersonalNameGenderedOut GenderChineseName(chinese.name)

Infer the likely gender of a Chinese full name ex. 王晓明

### Example
```R
library(namsor)

var.chinese.name <- 'chinese.name_example' # character | 

#Infer the likely gender of a Chinese full name ex. 王晓明
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderChineseName(var.chinese.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chinese.name** | **character**|  | 

### Return type

[**PersonalNameGenderedOut**](PersonalNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GenderChineseNameBatch**
> BatchPersonalNameGenderedOut GenderChineseNameBatch(batch.personal.name.in=var.batch.personal.name.in)

Infer the likely gender of up to 100 full names ex. 王晓明

### Example
```R
library(namsor)

var.batch.personal.name.in <- BatchPersonalNameIn$new(list(PersonalNameIn$new("id_example", "name_example"))) # BatchPersonalNameIn | A list of personal names, with a country ISO2 code

#Infer the likely gender of up to 100 full names ex. 王晓明
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderChineseNameBatch(batch.personal.name.in=var.batch.personal.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.personal.name.in** | [**BatchPersonalNameIn**](BatchPersonalNameIn.md)| A list of personal names, with a country ISO2 code | [optional] 

### Return type

[**BatchPersonalNameGenderedOut**](BatchPersonalNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **GenderChineseNamePinyin**
> FirstLastNameGenderedOut GenderChineseNamePinyin(chinese.surname.latin, chinese.given.name.latin)

Infer the likely gender of a Chinese name in LATIN (Pinyin).

### Example
```R
library(namsor)

var.chinese.surname.latin <- 'chinese.surname.latin_example' # character | 
var.chinese.given.name.latin <- 'chinese.given.name.latin_example' # character | 

#Infer the likely gender of a Chinese name in LATIN (Pinyin).
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderChineseNamePinyin(var.chinese.surname.latin, var.chinese.given.name.latin)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chinese.surname.latin** | **character**|  | 
 **chinese.given.name.latin** | **character**|  | 

### Return type

[**FirstLastNameGenderedOut**](FirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GenderChineseNamePinyinBatch**
> BatchFirstLastNameGenderedOut GenderChineseNamePinyinBatch(batch.first.last.name.in=var.batch.first.last.name.in)

Infer the likely gender of up to 100 Chinese names in LATIN (Pinyin).

### Example
```R
library(namsor)

var.batch.first.last.name.in <- BatchFirstLastNameIn$new(list(FirstLastNameIn$new("id_example", "firstName_example", "lastName_example"))) # BatchFirstLastNameIn | A list of names, with country code.

#Infer the likely gender of up to 100 Chinese names in LATIN (Pinyin).
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderChineseNamePinyinBatch(batch.first.last.name.in=var.batch.first.last.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.in** | [**BatchFirstLastNameIn**](BatchFirstLastNameIn.md)| A list of names, with country code. | [optional] 

### Return type

[**BatchFirstLastNameGenderedOut**](BatchFirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ParseChineseName**
> PersonalNameParsedOut ParseChineseName(chinese.name)

Infer the likely first/last name structure of a name, ex. 王晓明 -> 王(surname) 晓明(given name)

### Example
```R
library(namsor)

var.chinese.name <- 'chinese.name_example' # character | 

#Infer the likely first/last name structure of a name, ex. 王晓明 -> 王(surname) 晓明(given name)
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ParseChineseName(var.chinese.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chinese.name** | **character**|  | 

### Return type

[**PersonalNameParsedOut**](PersonalNameParsedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ParseChineseNameBatch**
> BatchPersonalNameParsedOut ParseChineseNameBatch(batch.personal.name.in=var.batch.personal.name.in)

Infer the likely first/last name structure of a name, ex. 王晓明 -> 王(surname) 晓明(given name).

### Example
```R
library(namsor)

var.batch.personal.name.in <- BatchPersonalNameIn$new(list(PersonalNameIn$new("id_example", "name_example"))) # BatchPersonalNameIn | A list of personal names

#Infer the likely first/last name structure of a name, ex. 王晓明 -> 王(surname) 晓明(given name).
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ParseChineseNameBatch(batch.personal.name.in=var.batch.personal.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.personal.name.in** | [**BatchPersonalNameIn**](BatchPersonalNameIn.md)| A list of personal names | [optional] 

### Return type

[**BatchPersonalNameParsedOut**](BatchPersonalNameParsedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **PinyinChineseName**
> PersonalNameParsedOut PinyinChineseName(chinese.name)

Romanize the Chinese name to Pinyin, ex. 王晓明 -> Wang (surname) Xiaoming (given name)

### Example
```R
library(namsor)

var.chinese.name <- 'chinese.name_example' # character | 

#Romanize the Chinese name to Pinyin, ex. 王晓明 -> Wang (surname) Xiaoming (given name)
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PinyinChineseName(var.chinese.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chinese.name** | **character**|  | 

### Return type

[**PersonalNameParsedOut**](PersonalNameParsedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **PinyinChineseNameBatch**
> BatchPersonalNameParsedOut PinyinChineseNameBatch(batch.personal.name.in=var.batch.personal.name.in)

Romanize a list of Chinese name to Pinyin, ex. 王晓明 -> Wang (surname) Xiaoming (given name).

### Example
```R
library(namsor)

var.batch.personal.name.in <- BatchPersonalNameIn$new(list(PersonalNameIn$new("id_example", "name_example"))) # BatchPersonalNameIn | A list of Chinese names

#Romanize a list of Chinese name to Pinyin, ex. 王晓明 -> Wang (surname) Xiaoming (given name).
api.instance <- ChineseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PinyinChineseNameBatch(batch.personal.name.in=var.batch.personal.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.personal.name.in** | [**BatchPersonalNameIn**](BatchPersonalNameIn.md)| A list of Chinese names | [optional] 

### Return type

[**BatchPersonalNameParsedOut**](BatchPersonalNameParsedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



