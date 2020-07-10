# JapaneseApi

All URIs are relative to *https://v2.namsor.com/NamSorAPIv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GenderJapaneseNameFull**](JapaneseApi.md#GenderJapaneseNameFull) | **GET** /api2/json/genderJapaneseNameFull/{japaneseName} | Infer the likely gender of a Japanese full name ex. 王晓明
[**GenderJapaneseNameFullBatch**](JapaneseApi.md#GenderJapaneseNameFullBatch) | **POST** /api2/json/genderJapaneseNameFullBatch | Infer the likely gender of up to 100 full names
[**GenderJapaneseNamePinyin**](JapaneseApi.md#GenderJapaneseNamePinyin) | **GET** /api2/json/genderJapaneseName/{japaneseSurname}/{japaneseGivenName} | Infer the likely gender of a Japanese name in LATIN (Pinyin).
[**GenderJapaneseNamePinyinBatch**](JapaneseApi.md#GenderJapaneseNamePinyinBatch) | **POST** /api2/json/genderJapaneseNameBatch | Infer the likely gender of up to 100 Japanese names in LATIN (Pinyin).
[**JapaneseNameKanjiCandidates**](JapaneseApi.md#JapaneseNameKanjiCandidates) | **GET** /api2/json/japaneseNameKanjiCandidates/{japaneseSurnameLatin}/{japaneseGivenNameLatin} | Identify japanese name candidates in KANJI, based on the romanized name ex. Yamamoto Sanae
[**JapaneseNameKanjiCandidatesBatch**](JapaneseApi.md#JapaneseNameKanjiCandidatesBatch) | **POST** /api2/json/japaneseNameKanjiCandidatesBatch | Identify japanese name candidates in KANJI, based on the romanized name (firstName &#x3D; japaneseGivenName; lastName&#x3D;japaneseSurname), ex. Yamamoto Sanae
[**JapaneseNameLatinCandidates**](JapaneseApi.md#JapaneseNameLatinCandidates) | **GET** /api2/json/japaneseNameLatinCandidates/{japaneseSurnameKanji}/{japaneseGivenNameKanji} | Romanize japanese name, based on the name in Kanji.
[**JapaneseNameLatinCandidatesBatch**](JapaneseApi.md#JapaneseNameLatinCandidatesBatch) | **POST** /api2/json/japaneseNameLatinCandidatesBatch | Romanize japanese names, based on the name in KANJI
[**JapaneseNameMatch**](JapaneseApi.md#JapaneseNameMatch) | **GET** /api2/json/japaneseNameMatch/{japaneseSurnameLatin}/{japaneseGivenNameLatin}/{japaneseName} | Return a score for matching Japanese name in KANJI ex. 山本 早苗 with a romanized name ex. Yamamoto Sanae
[**JapaneseNameMatchBatch**](JapaneseApi.md#JapaneseNameMatchBatch) | **POST** /api2/json/japaneseNameMatchBatch | Return a score for matching a list of Japanese names in KANJI ex. 山本 早苗 with romanized names ex. Yamamoto Sanae
[**JapaneseNameMatchFeedbackLoop**](JapaneseApi.md#JapaneseNameMatchFeedbackLoop) | **GET** /api2/json/japaneseNameMatchFeedbackLoop/{japaneseSurnameLatin}/{japaneseGivenNameLatin}/{japaneseName} | [CREDITS 1 UNIT] Feedback loop to better perform matching Japanese name in KANJI ex. 山本 早苗 with a romanized name ex. Yamamoto Sanae
[**ParseJapaneseName**](JapaneseApi.md#ParseJapaneseName) | **GET** /api2/json/parseJapaneseName/{japaneseName} | Infer the likely first/last name structure of a name, ex. 山本 早苗 or Yamamoto Sanae
[**ParseJapaneseNameBatch**](JapaneseApi.md#ParseJapaneseNameBatch) | **POST** /api2/json/parseJapaneseNameBatch | Infer the likely first/last name structure of a name, ex. 山本 早苗 or Yamamoto Sanae 


# **GenderJapaneseNameFull**
> PersonalNameGenderedOut GenderJapaneseNameFull(japanese.name)

Infer the likely gender of a Japanese full name ex. 王晓明

### Example
```R
library(namsor)

var.japanese.name <- 'japanese.name_example' # character | 

#Infer the likely gender of a Japanese full name ex. 王晓明
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderJapaneseNameFull(var.japanese.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **japanese.name** | **character**|  | 

### Return type

[**PersonalNameGenderedOut**](PersonalNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A genderized name. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

# **GenderJapaneseNameFullBatch**
> BatchPersonalNameGenderedOut GenderJapaneseNameFullBatch(batch.personal.name.in=var.batch.personal.name.in)

Infer the likely gender of up to 100 full names

### Example
```R
library(namsor)

var.batch.personal.name.in <- BatchPersonalNameIn$new(list(PersonalNameIn$new("id_example", "name_example"))) # BatchPersonalNameIn | A list of personal names

#Infer the likely gender of up to 100 full names
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderJapaneseNameFullBatch(batch.personal.name.in=var.batch.personal.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.personal.name.in** | [**BatchPersonalNameIn**](BatchPersonalNameIn.md)| A list of personal names | [optional] 

### Return type

[**BatchPersonalNameGenderedOut**](BatchPersonalNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of genderized names. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

# **GenderJapaneseNamePinyin**
> FirstLastNameGenderedOut GenderJapaneseNamePinyin(japanese.surname, japanese.given.name)

Infer the likely gender of a Japanese name in LATIN (Pinyin).

### Example
```R
library(namsor)

var.japanese.surname <- 'japanese.surname_example' # character | 
var.japanese.given.name <- 'japanese.given.name_example' # character | 

#Infer the likely gender of a Japanese name in LATIN (Pinyin).
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderJapaneseNamePinyin(var.japanese.surname, var.japanese.given.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **japanese.surname** | **character**|  | 
 **japanese.given.name** | **character**|  | 

### Return type

[**FirstLastNameGenderedOut**](FirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A genderized name. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

# **GenderJapaneseNamePinyinBatch**
> BatchFirstLastNameGenderedOut GenderJapaneseNamePinyinBatch(batch.first.last.name.in=var.batch.first.last.name.in)

Infer the likely gender of up to 100 Japanese names in LATIN (Pinyin).

### Example
```R
library(namsor)

var.batch.first.last.name.in <- BatchFirstLastNameIn$new(list(FirstLastNameIn$new("id_example", "firstName_example", "lastName_example"))) # BatchFirstLastNameIn | A list of names, with country code.

#Infer the likely gender of up to 100 Japanese names in LATIN (Pinyin).
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderJapaneseNamePinyinBatch(batch.first.last.name.in=var.batch.first.last.name.in)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of genderized names. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

# **JapaneseNameKanjiCandidates**
> RomanizedNameOut JapaneseNameKanjiCandidates(japanese.surname.latin, japanese.given.name.latin)

Identify japanese name candidates in KANJI, based on the romanized name ex. Yamamoto Sanae

### Example
```R
library(namsor)

var.japanese.surname.latin <- 'japanese.surname.latin_example' # character | 
var.japanese.given.name.latin <- 'japanese.given.name.latin_example' # character | 

#Identify japanese name candidates in KANJI, based on the romanized name ex. Yamamoto Sanae
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$JapaneseNameKanjiCandidates(var.japanese.surname.latin, var.japanese.given.name.latin)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **japanese.surname.latin** | **character**|  | 
 **japanese.given.name.latin** | **character**|  | 

### Return type

[**RomanizedNameOut**](RomanizedNameOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A romanized name. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

# **JapaneseNameKanjiCandidatesBatch**
> BatchNameMatchCandidatesOut JapaneseNameKanjiCandidatesBatch(batch.first.last.name.in=var.batch.first.last.name.in)

Identify japanese name candidates in KANJI, based on the romanized name (firstName = japaneseGivenName; lastName=japaneseSurname), ex. Yamamoto Sanae

### Example
```R
library(namsor)

var.batch.first.last.name.in <- BatchFirstLastNameIn$new(list(FirstLastNameIn$new("id_example", "firstName_example", "lastName_example"))) # BatchFirstLastNameIn | A list of personal japanese names in LATIN, firstName = japaneseGivenName; lastName=japaneseSurname

#Identify japanese name candidates in KANJI, based on the romanized name (firstName = japaneseGivenName; lastName=japaneseSurname), ex. Yamamoto Sanae
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$JapaneseNameKanjiCandidatesBatch(batch.first.last.name.in=var.batch.first.last.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.in** | [**BatchFirstLastNameIn**](BatchFirstLastNameIn.md)| A list of personal japanese names in LATIN, firstName &#x3D; japaneseGivenName; lastName&#x3D;japaneseSurname | [optional] 

### Return type

[**BatchNameMatchCandidatesOut**](BatchNameMatchCandidatesOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of genderized names. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

# **JapaneseNameLatinCandidates**
> RomanizedNameOut JapaneseNameLatinCandidates(japanese.surname.kanji, japanese.given.name.kanji)

Romanize japanese name, based on the name in Kanji.

### Example
```R
library(namsor)

var.japanese.surname.kanji <- 'japanese.surname.kanji_example' # character | 
var.japanese.given.name.kanji <- 'japanese.given.name.kanji_example' # character | 

#Romanize japanese name, based on the name in Kanji.
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$JapaneseNameLatinCandidates(var.japanese.surname.kanji, var.japanese.given.name.kanji)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **japanese.surname.kanji** | **character**|  | 
 **japanese.given.name.kanji** | **character**|  | 

### Return type

[**RomanizedNameOut**](RomanizedNameOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A romanized name. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

# **JapaneseNameLatinCandidatesBatch**
> BatchNameMatchCandidatesOut JapaneseNameLatinCandidatesBatch(batch.first.last.name.in=var.batch.first.last.name.in)

Romanize japanese names, based on the name in KANJI

### Example
```R
library(namsor)

var.batch.first.last.name.in <- BatchFirstLastNameIn$new(list(FirstLastNameIn$new("id_example", "firstName_example", "lastName_example"))) # BatchFirstLastNameIn | A list of personal japanese names in KANJI, firstName = japaneseGivenName; lastName=japaneseSurname

#Romanize japanese names, based on the name in KANJI
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$JapaneseNameLatinCandidatesBatch(batch.first.last.name.in=var.batch.first.last.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.in** | [**BatchFirstLastNameIn**](BatchFirstLastNameIn.md)| A list of personal japanese names in KANJI, firstName &#x3D; japaneseGivenName; lastName&#x3D;japaneseSurname | [optional] 

### Return type

[**BatchNameMatchCandidatesOut**](BatchNameMatchCandidatesOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of genderized names. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

# **JapaneseNameMatch**
> RomanizedNameOut JapaneseNameMatch(japanese.surname.latin, japanese.given.name.latin, japanese.name)

Return a score for matching Japanese name in KANJI ex. 山本 早苗 with a romanized name ex. Yamamoto Sanae

### Example
```R
library(namsor)

var.japanese.surname.latin <- 'japanese.surname.latin_example' # character | 
var.japanese.given.name.latin <- 'japanese.given.name.latin_example' # character | 
var.japanese.name <- 'japanese.name_example' # character | 

#Return a score for matching Japanese name in KANJI ex. 山本 早苗 with a romanized name ex. Yamamoto Sanae
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$JapaneseNameMatch(var.japanese.surname.latin, var.japanese.given.name.latin, var.japanese.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **japanese.surname.latin** | **character**|  | 
 **japanese.given.name.latin** | **character**|  | 
 **japanese.name** | **character**|  | 

### Return type

[**RomanizedNameOut**](RomanizedNameOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A romanized name. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

# **JapaneseNameMatchBatch**
> BatchNameMatchCandidatesOut JapaneseNameMatchBatch(batch.first.last.name.in=var.batch.first.last.name.in)

Return a score for matching a list of Japanese names in KANJI ex. 山本 早苗 with romanized names ex. Yamamoto Sanae

### Example
```R
library(namsor)

var.batch.first.last.name.in <- BatchFirstLastNameIn$new(list(FirstLastNameIn$new("id_example", "firstName_example", "lastName_example"))) # BatchFirstLastNameIn | A list of personal Japanese names in LATIN, firstName = japaneseGivenName; lastName=japaneseSurname

#Return a score for matching a list of Japanese names in KANJI ex. 山本 早苗 with romanized names ex. Yamamoto Sanae
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$JapaneseNameMatchBatch(batch.first.last.name.in=var.batch.first.last.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.in** | [**BatchFirstLastNameIn**](BatchFirstLastNameIn.md)| A list of personal Japanese names in LATIN, firstName &#x3D; japaneseGivenName; lastName&#x3D;japaneseSurname | [optional] 

### Return type

[**BatchNameMatchCandidatesOut**](BatchNameMatchCandidatesOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of matched names. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

# **JapaneseNameMatchFeedbackLoop**
> RomanizedNameOut JapaneseNameMatchFeedbackLoop(japanese.surname.latin, japanese.given.name.latin, japanese.name)

[CREDITS 1 UNIT] Feedback loop to better perform matching Japanese name in KANJI ex. 山本 早苗 with a romanized name ex. Yamamoto Sanae

### Example
```R
library(namsor)

var.japanese.surname.latin <- 'japanese.surname.latin_example' # character | 
var.japanese.given.name.latin <- 'japanese.given.name.latin_example' # character | 
var.japanese.name <- 'japanese.name_example' # character | 

#[CREDITS 1 UNIT] Feedback loop to better perform matching Japanese name in KANJI ex. 山本 早苗 with a romanized name ex. Yamamoto Sanae
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$JapaneseNameMatchFeedbackLoop(var.japanese.surname.latin, var.japanese.given.name.latin, var.japanese.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **japanese.surname.latin** | **character**|  | 
 **japanese.given.name.latin** | **character**|  | 
 **japanese.name** | **character**|  | 

### Return type

[**RomanizedNameOut**](RomanizedNameOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A romanized name. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

# **ParseJapaneseName**
> PersonalNameParsedOut ParseJapaneseName(japanese.name)

Infer the likely first/last name structure of a name, ex. 山本 早苗 or Yamamoto Sanae

### Example
```R
library(namsor)

var.japanese.name <- 'japanese.name_example' # character | 

#Infer the likely first/last name structure of a name, ex. 山本 早苗 or Yamamoto Sanae
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ParseJapaneseName(var.japanese.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **japanese.name** | **character**|  | 

### Return type

[**PersonalNameParsedOut**](PersonalNameParsedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A origined name. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

# **ParseJapaneseNameBatch**
> BatchPersonalNameParsedOut ParseJapaneseNameBatch(batch.personal.name.in=var.batch.personal.name.in)

Infer the likely first/last name structure of a name, ex. 山本 早苗 or Yamamoto Sanae 

### Example
```R
library(namsor)

var.batch.personal.name.in <- BatchPersonalNameIn$new(list(PersonalNameIn$new("id_example", "name_example"))) # BatchPersonalNameIn | A list of personal names

#Infer the likely first/last name structure of a name, ex. 山本 早苗 or Yamamoto Sanae 
api.instance <- JapaneseApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ParseJapaneseNameBatch(batch.personal.name.in=var.batch.personal.name.in)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of parsed names. |  -  |
| **401** | Missing or incorrect API Key |  -  |
| **403** | API Limit Reached or API Key Disabled |  -  |

