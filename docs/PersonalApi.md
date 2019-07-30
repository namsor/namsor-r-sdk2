# PersonalApi

All URIs are relative to *https://v2.namsor.com/NamSorAPIv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Country**](PersonalApi.md#Country) | **GET** /api2/json/country/{personalNameFull} | [USES 10 UNITS] Infer the likely country of residence of a personal full name, or one surname. Assumes names as they are in the country of residence OR the country of origin.
[**CountryBatch**](PersonalApi.md#CountryBatch) | **POST** /api2/json/countryBatch | [USES 10 UNITS] Infer the likely country of residence of up to 1000 personal full names, or surnames. Assumes names as they are in the country of residence OR the country of origin.
[**Diaspora**](PersonalApi.md#Diaspora) | **GET** /api2/json/diaspora/{countryIso2}/{firstName}/{lastName} | [USES 20 UNITS] Infer the likely ethnicity/diaspora of a personal name, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)
[**DiasporaBatch**](PersonalApi.md#DiasporaBatch) | **POST** /api2/json/diasporaBatch | [USES 20 UNITS] Infer the likely ethnicity/diaspora of up to 1000 personal names, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)
[**Gender**](PersonalApi.md#Gender) | **GET** /api2/json/gender/{firstName}/{lastName} | Infer the likely gender of a name.
[**GenderBatch**](PersonalApi.md#GenderBatch) | **POST** /api2/json/genderBatch | Infer the likely gender of up to 1000 names, detecting automatically the cultural context.
[**GenderFull**](PersonalApi.md#GenderFull) | **GET** /api2/json/genderFull/{fullName} | Infer the likely gender of a full name, ex. John H. Smith
[**GenderFullBatch**](PersonalApi.md#GenderFullBatch) | **POST** /api2/json/genderFullBatch | Infer the likely gender of up to 1000 full names, detecting automatically the cultural context.
[**GenderFullGeo**](PersonalApi.md#GenderFullGeo) | **GET** /api2/json/genderFullGeo/{fullName}/{countryIso2} | Infer the likely gender of a full name, given a local context (ISO2 country code).
[**GenderFullGeoBatch**](PersonalApi.md#GenderFullGeoBatch) | **POST** /api2/json/genderFullGeoBatch | Infer the likely gender of up to 1000 full names, with a given cultural context (country ISO2 code).
[**GenderGeo**](PersonalApi.md#GenderGeo) | **GET** /api2/json/genderGeo/{firstName}/{lastName}/{countryIso2} | Infer the likely gender of a name, given a local context (ISO2 country code).
[**GenderGeoBatch**](PersonalApi.md#GenderGeoBatch) | **POST** /api2/json/genderGeoBatch | Infer the likely gender of up to 1000 names, each given a local context (ISO2 country code).
[**Origin**](PersonalApi.md#Origin) | **GET** /api2/json/origin/{firstName}/{lastName} | [USES 10 UNITS] Infer the likely country of origin of a personal name. Assumes names as they are in the country of origin. For US, CA, AU, NZ and other melting-pots : use &#39;diaspora&#39; instead.
[**OriginBatch**](PersonalApi.md#OriginBatch) | **POST** /api2/json/originBatch | [USES 10 UNITS] Infer the likely country of origin of up to 1000 names, detecting automatically the cultural context.
[**ParseName**](PersonalApi.md#ParseName) | **GET** /api2/json/parseName/{nameFull} | Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. 
[**ParseNameBatch**](PersonalApi.md#ParseNameBatch) | **POST** /api2/json/parseNameBatch | Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John.
[**ParseNameGeo**](PersonalApi.md#ParseNameGeo) | **GET** /api2/json/parseName/{nameFull}/{countryIso2} | Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. For better accuracy, provide a geographic context.
[**ParseNameGeoBatch**](PersonalApi.md#ParseNameGeoBatch) | **POST** /api2/json/parseNameGeoBatch | Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. Giving a local context improves precision. 
[**ParsedGenderBatch**](PersonalApi.md#ParsedGenderBatch) | **POST** /api2/json/parsedGenderBatch | Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.
[**ParsedGenderGeoBatch**](PersonalApi.md#ParsedGenderGeoBatch) | **POST** /api2/json/parsedGenderGeoBatch | Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.
[**UsRaceEthnicity**](PersonalApi.md#UsRaceEthnicity) | **GET** /api2/json/usRaceEthnicity/{firstName}/{lastName} | [USES 10 UNITS] Infer a US resident&#39;s likely race/ethnicity according to US Census taxonomy W_NL (white, non latino), HL (hispano latino),  A (asian, non latino), B_NL (black, non latino).
[**UsRaceEthnicityBatch**](PersonalApi.md#UsRaceEthnicityBatch) | **POST** /api2/json/usRaceEthnicityBatch | [USES 10 UNITS] Infer up-to 1000 US resident&#39;s likely race/ethnicity according to US Census taxonomy.
[**UsRaceEthnicityZIP5**](PersonalApi.md#UsRaceEthnicityZIP5) | **GET** /api2/json/usRaceEthnicityZIP5/{firstName}/{lastName}/{zip5Code} | [USES 10 UNITS] Infer a US resident&#39;s likely race/ethnicity according to US Census taxonomy, using (optional) ZIP5 code info. Output is W_NL (white, non latino), HL (hispano latino),  A (asian, non latino), B_NL (black, non latino).
[**UsZipRaceEthnicityBatch**](PersonalApi.md#UsZipRaceEthnicityBatch) | **POST** /api2/json/usZipRaceEthnicityBatch | [USES 10 UNITS] Infer up-to 1000 US resident&#39;s likely race/ethnicity according to US Census taxonomy, with (optional) ZIP code.


# **Country**
> PersonalNameGeoOut Country(personal.name.full)

[USES 10 UNITS] Infer the likely country of residence of a personal full name, or one surname. Assumes names as they are in the country of residence OR the country of origin.

### Example
```R
library(namsor)

var.personal.name.full <- 'personal.name.full_example' # character | 

#[USES 10 UNITS] Infer the likely country of residence of a personal full name, or one surname. Assumes names as they are in the country of residence OR the country of origin.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Country(var.personal.name.full)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personal.name.full** | **character**|  | 

### Return type

[**PersonalNameGeoOut**](PersonalNameGeoOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **CountryBatch**
> BatchPersonalNameGeoOut CountryBatch(batch.personal.name.in=var.batch.personal.name.in)

[USES 10 UNITS] Infer the likely country of residence of up to 1000 personal full names, or surnames. Assumes names as they are in the country of residence OR the country of origin.

### Example
```R
library(namsor)

var.batch.personal.name.in <- BatchPersonalNameIn$new(list(PersonalNameIn$new("id_example", "name_example"))) # BatchPersonalNameIn | A list of personal names

#[USES 10 UNITS] Infer the likely country of residence of up to 1000 personal full names, or surnames. Assumes names as they are in the country of residence OR the country of origin.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CountryBatch(batch.personal.name.in=var.batch.personal.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.personal.name.in** | [**BatchPersonalNameIn**](BatchPersonalNameIn.md)| A list of personal names | [optional] 

### Return type

[**BatchPersonalNameGeoOut**](BatchPersonalNameGeoOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **Diaspora**
> FirstLastNameDiasporaedOut Diaspora(country.iso2, first.name, last.name)

[USES 20 UNITS] Infer the likely ethnicity/diaspora of a personal name, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)

### Example
```R
library(namsor)

var.country.iso2 <- 'country.iso2_example' # character | 
var.first.name <- 'first.name_example' # character | 
var.last.name <- 'last.name_example' # character | 

#[USES 20 UNITS] Infer the likely ethnicity/diaspora of a personal name, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Diaspora(var.country.iso2, var.first.name, var.last.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country.iso2** | **character**|  | 
 **first.name** | **character**|  | 
 **last.name** | **character**|  | 

### Return type

[**FirstLastNameDiasporaedOut**](FirstLastNameDiasporaedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **DiasporaBatch**
> BatchFirstLastNameDiasporaedOut DiasporaBatch(batch.first.last.name.geo.in=var.batch.first.last.name.geo.in)

[USES 20 UNITS] Infer the likely ethnicity/diaspora of up to 1000 personal names, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)

### Example
```R
library(namsor)

var.batch.first.last.name.geo.in <- BatchFirstLastNameGeoIn$new(list(FirstLastNameGeoIn$new("id_example", "firstName_example", "lastName_example", "countryIso2_example"))) # BatchFirstLastNameGeoIn | A list of personal names

#[USES 20 UNITS] Infer the likely ethnicity/diaspora of up to 1000 personal names, given a country of residence ISO2 code (ex. US, CA, AU, NZ etc.)
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DiasporaBatch(batch.first.last.name.geo.in=var.batch.first.last.name.geo.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.geo.in** | [**BatchFirstLastNameGeoIn**](BatchFirstLastNameGeoIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameDiasporaedOut**](BatchFirstLastNameDiasporaedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **Gender**
> FirstLastNameGenderedOut Gender(first.name, last.name)

Infer the likely gender of a name.

### Example
```R
library(namsor)

var.first.name <- 'first.name_example' # character | 
var.last.name <- 'last.name_example' # character | 

#Infer the likely gender of a name.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Gender(var.first.name, var.last.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first.name** | **character**|  | 
 **last.name** | **character**|  | 

### Return type

[**FirstLastNameGenderedOut**](FirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GenderBatch**
> BatchFirstLastNameGenderedOut GenderBatch(batch.first.last.name.in=var.batch.first.last.name.in)

Infer the likely gender of up to 1000 names, detecting automatically the cultural context.

### Example
```R
library(namsor)

var.batch.first.last.name.in <- BatchFirstLastNameIn$new(list(FirstLastNameIn$new("id_example", "firstName_example", "lastName_example"))) # BatchFirstLastNameIn | A list of personal names

#Infer the likely gender of up to 1000 names, detecting automatically the cultural context.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderBatch(batch.first.last.name.in=var.batch.first.last.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.in** | [**BatchFirstLastNameIn**](BatchFirstLastNameIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameGenderedOut**](BatchFirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **GenderFull**
> FirstLastNameGenderedOut GenderFull(full.name)

Infer the likely gender of a full name, ex. John H. Smith

### Example
```R
library(namsor)

var.full.name <- 'full.name_example' # character | 

#Infer the likely gender of a full name, ex. John H. Smith
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderFull(var.full.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **full.name** | **character**|  | 

### Return type

[**FirstLastNameGenderedOut**](FirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GenderFullBatch**
> BatchPersonalNameGenderedOut GenderFullBatch(batch.personal.name.in=var.batch.personal.name.in)

Infer the likely gender of up to 1000 full names, detecting automatically the cultural context.

### Example
```R
library(namsor)

var.batch.personal.name.in <- BatchPersonalNameIn$new(list(PersonalNameIn$new("id_example", "name_example"))) # BatchPersonalNameIn | A list of personal names

#Infer the likely gender of up to 1000 full names, detecting automatically the cultural context.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderFullBatch(batch.personal.name.in=var.batch.personal.name.in)
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



# **GenderFullGeo**
> FirstLastNameGenderedOut GenderFullGeo(full.name, country.iso2)

Infer the likely gender of a full name, given a local context (ISO2 country code).

### Example
```R
library(namsor)

var.full.name <- 'full.name_example' # character | 
var.country.iso2 <- 'country.iso2_example' # character | 

#Infer the likely gender of a full name, given a local context (ISO2 country code).
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderFullGeo(var.full.name, var.country.iso2)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **full.name** | **character**|  | 
 **country.iso2** | **character**|  | 

### Return type

[**FirstLastNameGenderedOut**](FirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GenderFullGeoBatch**
> BatchPersonalNameGenderedOut GenderFullGeoBatch(batch.personal.name.geo.in=var.batch.personal.name.geo.in)

Infer the likely gender of up to 1000 full names, with a given cultural context (country ISO2 code).

### Example
```R
library(namsor)

var.batch.personal.name.geo.in <- BatchPersonalNameGeoIn$new(list(PersonalNameGeoIn$new("id_example", "name_example", "countryIso2_example"))) # BatchPersonalNameGeoIn | A list of personal names, with a country ISO2 code

#Infer the likely gender of up to 1000 full names, with a given cultural context (country ISO2 code).
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderFullGeoBatch(batch.personal.name.geo.in=var.batch.personal.name.geo.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.personal.name.geo.in** | [**BatchPersonalNameGeoIn**](BatchPersonalNameGeoIn.md)| A list of personal names, with a country ISO2 code | [optional] 

### Return type

[**BatchPersonalNameGenderedOut**](BatchPersonalNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **GenderGeo**
> FirstLastNameGenderedOut GenderGeo(first.name, last.name, country.iso2)

Infer the likely gender of a name, given a local context (ISO2 country code).

### Example
```R
library(namsor)

var.first.name <- 'first.name_example' # character | 
var.last.name <- 'last.name_example' # character | 
var.country.iso2 <- 'country.iso2_example' # character | 

#Infer the likely gender of a name, given a local context (ISO2 country code).
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderGeo(var.first.name, var.last.name, var.country.iso2)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first.name** | **character**|  | 
 **last.name** | **character**|  | 
 **country.iso2** | **character**|  | 

### Return type

[**FirstLastNameGenderedOut**](FirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GenderGeoBatch**
> BatchFirstLastNameGenderedOut GenderGeoBatch(batch.first.last.name.geo.in=var.batch.first.last.name.geo.in)

Infer the likely gender of up to 1000 names, each given a local context (ISO2 country code).

### Example
```R
library(namsor)

var.batch.first.last.name.geo.in <- BatchFirstLastNameGeoIn$new(list(FirstLastNameGeoIn$new("id_example", "firstName_example", "lastName_example", "countryIso2_example"))) # BatchFirstLastNameGeoIn | A list of names, with country code.

#Infer the likely gender of up to 1000 names, each given a local context (ISO2 country code).
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GenderGeoBatch(batch.first.last.name.geo.in=var.batch.first.last.name.geo.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.geo.in** | [**BatchFirstLastNameGeoIn**](BatchFirstLastNameGeoIn.md)| A list of names, with country code. | [optional] 

### Return type

[**BatchFirstLastNameGenderedOut**](BatchFirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **Origin**
> FirstLastNameOriginedOut Origin(first.name, last.name)

[USES 10 UNITS] Infer the likely country of origin of a personal name. Assumes names as they are in the country of origin. For US, CA, AU, NZ and other melting-pots : use 'diaspora' instead.

### Example
```R
library(namsor)

var.first.name <- 'first.name_example' # character | 
var.last.name <- 'last.name_example' # character | 

#[USES 10 UNITS] Infer the likely country of origin of a personal name. Assumes names as they are in the country of origin. For US, CA, AU, NZ and other melting-pots : use 'diaspora' instead.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Origin(var.first.name, var.last.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first.name** | **character**|  | 
 **last.name** | **character**|  | 

### Return type

[**FirstLastNameOriginedOut**](FirstLastNameOriginedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **OriginBatch**
> BatchFirstLastNameOriginedOut OriginBatch(batch.first.last.name.in=var.batch.first.last.name.in)

[USES 10 UNITS] Infer the likely country of origin of up to 1000 names, detecting automatically the cultural context.

### Example
```R
library(namsor)

var.batch.first.last.name.in <- BatchFirstLastNameIn$new(list(FirstLastNameIn$new("id_example", "firstName_example", "lastName_example"))) # BatchFirstLastNameIn | A list of personal names

#[USES 10 UNITS] Infer the likely country of origin of up to 1000 names, detecting automatically the cultural context.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$OriginBatch(batch.first.last.name.in=var.batch.first.last.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.in** | [**BatchFirstLastNameIn**](BatchFirstLastNameIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameOriginedOut**](BatchFirstLastNameOriginedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ParseName**
> PersonalNameParsedOut ParseName(name.full)

Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. 

### Example
```R
library(namsor)

var.name.full <- 'name.full_example' # character | 

#Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. 
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ParseName(var.name.full)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name.full** | **character**|  | 

### Return type

[**PersonalNameParsedOut**](PersonalNameParsedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ParseNameBatch**
> BatchPersonalNameParsedOut ParseNameBatch(batch.personal.name.in=var.batch.personal.name.in)

Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John.

### Example
```R
library(namsor)

var.batch.personal.name.in <- BatchPersonalNameIn$new(list(PersonalNameIn$new("id_example", "name_example"))) # BatchPersonalNameIn | A list of personal names

#Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ParseNameBatch(batch.personal.name.in=var.batch.personal.name.in)
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



# **ParseNameGeo**
> PersonalNameParsedOut ParseNameGeo(name.full, country.iso2)

Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. For better accuracy, provide a geographic context.

### Example
```R
library(namsor)

var.name.full <- 'name.full_example' # character | 
var.country.iso2 <- 'country.iso2_example' # character | 

#Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. For better accuracy, provide a geographic context.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ParseNameGeo(var.name.full, var.country.iso2)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name.full** | **character**|  | 
 **country.iso2** | **character**|  | 

### Return type

[**PersonalNameParsedOut**](PersonalNameParsedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ParseNameGeoBatch**
> BatchPersonalNameParsedOut ParseNameGeoBatch(batch.personal.name.geo.in=var.batch.personal.name.geo.in)

Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. Giving a local context improves precision. 

### Example
```R
library(namsor)

var.batch.personal.name.geo.in <- BatchPersonalNameGeoIn$new(list(PersonalNameGeoIn$new("id_example", "name_example", "countryIso2_example"))) # BatchPersonalNameGeoIn | A list of personal names

#Infer the likely first/last name structure of a name, ex. John Smith or SMITH, John or SMITH; John. Giving a local context improves precision. 
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ParseNameGeoBatch(batch.personal.name.geo.in=var.batch.personal.name.geo.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.personal.name.geo.in** | [**BatchPersonalNameGeoIn**](BatchPersonalNameGeoIn.md)| A list of personal names | [optional] 

### Return type

[**BatchPersonalNameParsedOut**](BatchPersonalNameParsedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ParsedGenderBatch**
> BatchFirstLastNameGenderedOut ParsedGenderBatch(batch.parsed.full.name.in=var.batch.parsed.full.name.in)

Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.

### Example
```R
library(namsor)

var.batch.parsed.full.name.in <- BatchParsedFullNameIn$new(list(ParsedFullNameIn$new("id_example", "firstName_example", "lastName_example", "prefixOrTitle_example", "suffix_example", "middleName_example"))) # BatchParsedFullNameIn | A list of personal names

#Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ParsedGenderBatch(batch.parsed.full.name.in=var.batch.parsed.full.name.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.parsed.full.name.in** | [**BatchParsedFullNameIn**](BatchParsedFullNameIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameGenderedOut**](BatchFirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ParsedGenderGeoBatch**
> BatchFirstLastNameGenderedOut ParsedGenderGeoBatch(batch.parsed.full.name.geo.in=var.batch.parsed.full.name.geo.in)

Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.

### Example
```R
library(namsor)

var.batch.parsed.full.name.geo.in <- BatchParsedFullNameGeoIn$new(list(ParsedFullNameGeoIn$new("id_example", "firstName_example", "lastName_example", "prefixOrTitle_example", "suffix_example", "middleName_example", "countryIso2_example"))) # BatchParsedFullNameGeoIn | A list of personal names

#Infer the likely gender of up to 1000 fully parsed names, detecting automatically the cultural context.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ParsedGenderGeoBatch(batch.parsed.full.name.geo.in=var.batch.parsed.full.name.geo.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.parsed.full.name.geo.in** | [**BatchParsedFullNameGeoIn**](BatchParsedFullNameGeoIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameGenderedOut**](BatchFirstLastNameGenderedOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **UsRaceEthnicity**
> FirstLastNameUSRaceEthnicityOut UsRaceEthnicity(first.name, last.name)

[USES 10 UNITS] Infer a US resident's likely race/ethnicity according to US Census taxonomy W_NL (white, non latino), HL (hispano latino),  A (asian, non latino), B_NL (black, non latino).

### Example
```R
library(namsor)

var.first.name <- 'first.name_example' # character | 
var.last.name <- 'last.name_example' # character | 

#[USES 10 UNITS] Infer a US resident's likely race/ethnicity according to US Census taxonomy W_NL (white, non latino), HL (hispano latino),  A (asian, non latino), B_NL (black, non latino).
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UsRaceEthnicity(var.first.name, var.last.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first.name** | **character**|  | 
 **last.name** | **character**|  | 

### Return type

[**FirstLastNameUSRaceEthnicityOut**](FirstLastNameUSRaceEthnicityOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **UsRaceEthnicityBatch**
> BatchFirstLastNameUSRaceEthnicityOut UsRaceEthnicityBatch(batch.first.last.name.geo.in=var.batch.first.last.name.geo.in)

[USES 10 UNITS] Infer up-to 1000 US resident's likely race/ethnicity according to US Census taxonomy.

### Example
```R
library(namsor)

var.batch.first.last.name.geo.in <- BatchFirstLastNameGeoIn$new(list(FirstLastNameGeoIn$new("id_example", "firstName_example", "lastName_example", "countryIso2_example"))) # BatchFirstLastNameGeoIn | A list of personal names

#[USES 10 UNITS] Infer up-to 1000 US resident's likely race/ethnicity according to US Census taxonomy.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UsRaceEthnicityBatch(batch.first.last.name.geo.in=var.batch.first.last.name.geo.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.geo.in** | [**BatchFirstLastNameGeoIn**](BatchFirstLastNameGeoIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameUSRaceEthnicityOut**](BatchFirstLastNameUSRaceEthnicityOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **UsRaceEthnicityZIP5**
> FirstLastNameUSRaceEthnicityOut UsRaceEthnicityZIP5(first.name, last.name, zip5.code)

[USES 10 UNITS] Infer a US resident's likely race/ethnicity according to US Census taxonomy, using (optional) ZIP5 code info. Output is W_NL (white, non latino), HL (hispano latino),  A (asian, non latino), B_NL (black, non latino).

### Example
```R
library(namsor)

var.first.name <- 'first.name_example' # character | 
var.last.name <- 'last.name_example' # character | 
var.zip5.code <- 'zip5.code_example' # character | 

#[USES 10 UNITS] Infer a US resident's likely race/ethnicity according to US Census taxonomy, using (optional) ZIP5 code info. Output is W_NL (white, non latino), HL (hispano latino),  A (asian, non latino), B_NL (black, non latino).
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UsRaceEthnicityZIP5(var.first.name, var.last.name, var.zip5.code)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first.name** | **character**|  | 
 **last.name** | **character**|  | 
 **zip5.code** | **character**|  | 

### Return type

[**FirstLastNameUSRaceEthnicityOut**](FirstLastNameUSRaceEthnicityOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **UsZipRaceEthnicityBatch**
> BatchFirstLastNameUSRaceEthnicityOut UsZipRaceEthnicityBatch(batch.first.last.name.geo.zipped.in=var.batch.first.last.name.geo.zipped.in)

[USES 10 UNITS] Infer up-to 1000 US resident's likely race/ethnicity according to US Census taxonomy, with (optional) ZIP code.

### Example
```R
library(namsor)

var.batch.first.last.name.geo.zipped.in <- BatchFirstLastNameGeoZippedIn$new(list(FirstLastNameGeoZippedIn$new("id_example", "firstName_example", "lastName_example", "countryIso2_example", "zipCode_example"))) # BatchFirstLastNameGeoZippedIn | A list of personal names

#[USES 10 UNITS] Infer up-to 1000 US resident's likely race/ethnicity according to US Census taxonomy, with (optional) ZIP code.
api.instance <- PersonalApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UsZipRaceEthnicityBatch(batch.first.last.name.geo.zipped.in=var.batch.first.last.name.geo.zipped.in)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch.first.last.name.geo.zipped.in** | [**BatchFirstLastNameGeoZippedIn**](BatchFirstLastNameGeoZippedIn.md)| A list of personal names | [optional] 

### Return type

[**BatchFirstLastNameUSRaceEthnicityOut**](BatchFirstLastNameUSRaceEthnicityOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



