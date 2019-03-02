# AdminApi

All URIs are relative to *https://v2.namsor.com/NamSorAPIv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiUsage**](AdminApi.md#ApiUsage) | **GET** /api2/json/apiUsage | Print current API usage.
[**ApiUsageHistory**](AdminApi.md#ApiUsageHistory) | **GET** /api2/json/apiUsageHistory | Print historical API usage.
[**ApiUsageHistoryAggregate**](AdminApi.md#ApiUsageHistoryAggregate) | **GET** /api2/json/apiUsageHistoryAggregate | Print historical API usage (in an aggregated view, by service, by day/hour/min).
[**AvailablePlans**](AdminApi.md#AvailablePlans) | **GET** /api2/json/availablePlans | List all available plans in the default currency (usd).
[**AvailablePlans1**](AdminApi.md#AvailablePlans1) | **GET** /api2/json/availablePlans/{token} | List all available plans in the user&#39;s preferred currency.
[**AvailableServices**](AdminApi.md#AvailableServices) | **GET** /api2/json/apiServices | List of API services and usage cost in Units (default is 1&#x3D;ONE Unit).
[**BillingCurrencies**](AdminApi.md#BillingCurrencies) | **GET** /api2/json/billingCurrencies | List possible currency options for billing (USD, EUR, GBP, ...)
[**BillingHistory**](AdminApi.md#BillingHistory) | **GET** /api2/json/billingHistory/{token} | Read the history billing information (invoices paid via Stripe or manually).
[**BillingInfo**](AdminApi.md#BillingInfo) | **GET** /api2/json/billingInfo/{token} | Read the billing information (company name, address, phone, vat ID)
[**Charge**](AdminApi.md#Charge) | **POST** /api2/json/charge | Create a Stripe Customer, based on a payment card token (from secure StripeJS) and email.
[**CorporateKey**](AdminApi.md#CorporateKey) | **GET** /api2/json/corporateKey/{apiKey}/{corporate} | Setting an API Key to a corporate status.
[**DebugLevel**](AdminApi.md#DebugLevel) | **GET** /api2/json/debugLevel/{logger}/{level} | Update debug level for a classifier
[**InvalidateCache**](AdminApi.md#InvalidateCache) | **GET** /api2/json/invalidateCache | Invalidate system caches.
[**Learnable**](AdminApi.md#Learnable) | **GET** /api2/json/learnable/{source}/{learnable} | Activate/deactivate learning from a source.
[**NamsorCounter**](AdminApi.md#NamsorCounter) | **GET** /api2/json/namsorCounter | Get the overall API counter
[**PaymentInfo**](AdminApi.md#PaymentInfo) | **GET** /api2/json/paymentInfo/{token} | Get the Stripe payment information associated with the current google auth session token.
[**ProcureKey**](AdminApi.md#ProcureKey) | **GET** /api2/json/procureKey/{token} | Procure an API Key (sent via Email), based on an auth token. Keep your API Key secret.
[**RedeployUI**](AdminApi.md#RedeployUI) | **GET** /api2/json/redeployUI | Redeploy UI from current dev branch.
[**RedeployUI1**](AdminApi.md#RedeployUI1) | **GET** /api2/json/redeployUI/{live} | Redeploy UI from current dev branch.
[**RemoveUserAccount**](AdminApi.md#RemoveUserAccount) | **GET** /api2/json/removeUserAccount/{token} | Subscribe to a give API plan, using the user&#39;s preferred or default currency.
[**Shutdown**](AdminApi.md#Shutdown) | **GET** /api2/json/shutdown | Stop learning and shutdown system.
[**SoftwareVersion**](AdminApi.md#SoftwareVersion) | **GET** /api2/json/softwareVersion | Get the current software version
[**SourceStats**](AdminApi.md#SourceStats) | **GET** /api2/json/sourceStats/{source} | Print basic source statistics.
[**Stats**](AdminApi.md#Stats) | **GET** /api2/json/stats | Print basic system statistics.
[**StripeConnect**](AdminApi.md#StripeConnect) | **GET** /api2/json/stripeConnect | Connects a Stripe Account.
[**SubscribePlan**](AdminApi.md#SubscribePlan) | **GET** /api2/json/subscribePlan/{planName}/{token} | Subscribe to a give API plan, using the user&#39;s preferred or default currency.
[**UpdateBillingInfo**](AdminApi.md#UpdateBillingInfo) | **POST** /api2/json/updateBillingInfo/{token} | Sets or update the billing information (company name, address, phone, vat ID)
[**UpdateLimit**](AdminApi.md#UpdateLimit) | **GET** /api2/json/updateLimit/{usageLimit}/{hardOrSoft}/{token} | Modifies the hard/soft limit on the API plan&#39;s overages (default is 0$ soft limit).
[**UpdatePaymentDefault**](AdminApi.md#UpdatePaymentDefault) | **GET** /api2/json/updatePaymentDefault/{defautSourceId}/{token} | Update the default Stripe card associated with the current google auth session token.
[**UserInfo**](AdminApi.md#UserInfo) | **GET** /api2/json/userInfo/{token} | Get the user profile associated with the current google auth session token.
[**VerifyEmail**](AdminApi.md#VerifyEmail) | **GET** /api2/json/verifyEmail/{emailToken} | Verifies an email, based on token sent to that email
[**VerifyRemoveEmail**](AdminApi.md#VerifyRemoveEmail) | **GET** /api2/json/verifyRemoveEmail/{emailToken} | Verifies an email, based on token sent to that email
[**Vet**](AdminApi.md#Vet) | **GET** /api2/json/vetting/{source}/{vetted} | Vetting of a source.


# **ApiUsage**
> APIPeriodUsageOut ApiUsage()

Print current API usage.

### Example
```R
library(namsor)


#Print current API usage.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiUsage()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIPeriodUsageOut**](APIPeriodUsageOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ApiUsageHistory**
> APIPeriodUsageOut ApiUsageHistory()

Print historical API usage.

### Example
```R
library(namsor)


#Print historical API usage.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiUsageHistory()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIPeriodUsageOut**](APIPeriodUsageOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ApiUsageHistoryAggregate**
> APIPeriodUsageOut ApiUsageHistoryAggregate()

Print historical API usage (in an aggregated view, by service, by day/hour/min).

### Example
```R
library(namsor)


#Print historical API usage (in an aggregated view, by service, by day/hour/min).
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiUsageHistoryAggregate()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIPeriodUsageOut**](APIPeriodUsageOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **AvailablePlans**
> APIPlansOut AvailablePlans()

List all available plans in the default currency (usd).

### Example
```R
library(namsor)


#List all available plans in the default currency (usd).
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$AvailablePlans()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIPlansOut**](APIPlansOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **AvailablePlans1**
> APIPlansOut AvailablePlans1(token)

List all available plans in the user's preferred currency.

### Example
```R
library(namsor)

var.token <- 'token_example' # character | 

#List all available plans in the user's preferred currency.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$AvailablePlans1(var.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **character**|  | 

### Return type

[**APIPlansOut**](APIPlansOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **AvailableServices**
> APIPlansOut AvailableServices()

List of API services and usage cost in Units (default is 1=ONE Unit).

### Example
```R
library(namsor)


#List of API services and usage cost in Units (default is 1=ONE Unit).
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$AvailableServices()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**APIPlansOut**](APIPlansOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **BillingCurrencies**
> CurrenciesOut BillingCurrencies()

List possible currency options for billing (USD, EUR, GBP, ...)

### Example
```R
library(namsor)


#List possible currency options for billing (USD, EUR, GBP, ...)
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$BillingCurrencies()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CurrenciesOut**](CurrenciesOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **BillingHistory**
> BillingHistoryOut BillingHistory(token)

Read the history billing information (invoices paid via Stripe or manually).

### Example
```R
library(namsor)

var.token <- 'token_example' # character | 

#Read the history billing information (invoices paid via Stripe or manually).
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$BillingHistory(var.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **character**|  | 

### Return type

[**BillingHistoryOut**](BillingHistoryOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **BillingInfo**
> BillingInfoInOut BillingInfo(token)

Read the billing information (company name, address, phone, vat ID)

### Example
```R
library(namsor)

var.token <- 'token_example' # character | 

#Read the billing information (company name, address, phone, vat ID)
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$BillingInfo(var.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **character**|  | 

### Return type

[**BillingInfoInOut**](BillingInfoInOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **Charge**
> APIKeyOut Charge(inline.object=var.inline.object)

Create a Stripe Customer, based on a payment card token (from secure StripeJS) and email.

### Example
```R
library(namsor)

var.inline.object <- InlineObject$new() # InlineObject | 

#Create a Stripe Customer, based on a payment card token (from secure StripeJS) and email.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Charge(inline.object=var.inline.object)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline.object** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **CorporateKey**
> CorporateKey(api.key, corporate)

Setting an API Key to a corporate status.

### Example
```R
library(namsor)

var.api.key <- 'api.key_example' # character | 
var.corporate <- 'corporate_example' # character | 

#Setting an API Key to a corporate status.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
api.instance$CorporateKey(var.api.key, var.corporate)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api.key** | **character**|  | 
 **corporate** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **DebugLevel**
> DebugLevel(logger, level)

Update debug level for a classifier

### Example
```R
library(namsor)

var.logger <- 'logger_example' # character | 
var.level <- 'level_example' # character | 

#Update debug level for a classifier
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
api.instance$DebugLevel(var.logger, var.level)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logger** | **character**|  | 
 **level** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **InvalidateCache**
> InvalidateCache()

Invalidate system caches.

### Example
```R
library(namsor)


#Invalidate system caches.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
api.instance$InvalidateCache()
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **Learnable**
> Learnable(source, learnable)

Activate/deactivate learning from a source.

### Example
```R
library(namsor)

var.source <- 'source_example' # character | 
var.learnable <- 'learnable_example' # character | 

#Activate/deactivate learning from a source.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
api.instance$Learnable(var.source, var.learnable)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **character**|  | 
 **learnable** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **NamsorCounter**
> SoftwareVersionOut NamsorCounter()

Get the overall API counter

### Example
```R
library(namsor)


#Get the overall API counter
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$NamsorCounter()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SoftwareVersionOut**](SoftwareVersionOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **PaymentInfo**
> APIKeyOut PaymentInfo(token)

Get the Stripe payment information associated with the current google auth session token.

### Example
```R
library(namsor)

var.token <- 'token_example' # character | 

#Get the Stripe payment information associated with the current google auth session token.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$PaymentInfo(var.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **character**|  | 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ProcureKey**
> APIKeyOut ProcureKey(token)

Procure an API Key (sent via Email), based on an auth token. Keep your API Key secret.

### Example
```R
library(namsor)

var.token <- 'token_example' # character | 

#Procure an API Key (sent via Email), based on an auth token. Keep your API Key secret.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ProcureKey(var.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **character**|  | 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **RedeployUI**
> RedeployUI()

Redeploy UI from current dev branch.

### Example
```R
library(namsor)


#Redeploy UI from current dev branch.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
api.instance$RedeployUI()
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **RedeployUI1**
> RedeployUI1(live)

Redeploy UI from current dev branch.

### Example
```R
library(namsor)

var.live <- 'live_example' # character | 

#Redeploy UI from current dev branch.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
api.instance$RedeployUI1(var.live)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **live** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **RemoveUserAccount**
> APIPlanSubscriptionOut RemoveUserAccount(token)

Subscribe to a give API plan, using the user's preferred or default currency.

### Example
```R
library(namsor)

var.token <- 'token_example' # character | 

#Subscribe to a give API plan, using the user's preferred or default currency.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$RemoveUserAccount(var.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **character**|  | 

### Return type

[**APIPlanSubscriptionOut**](APIPlanSubscriptionOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **Shutdown**
> Shutdown()

Stop learning and shutdown system.

### Example
```R
library(namsor)


#Stop learning and shutdown system.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
api.instance$Shutdown()
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **SoftwareVersion**
> SoftwareVersionOut SoftwareVersion()

Get the current software version

### Example
```R
library(namsor)


#Get the current software version
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SoftwareVersion()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SoftwareVersionOut**](SoftwareVersionOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **SourceStats**
> SystemMetricsOut SourceStats(source)

Print basic source statistics.

### Example
```R
library(namsor)

var.source <- 'source_example' # character | 

#Print basic source statistics.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SourceStats(var.source)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **character**|  | 

### Return type

[**SystemMetricsOut**](SystemMetricsOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **Stats**
> SystemMetricsOut Stats()

Print basic system statistics.

### Example
```R
library(namsor)


#Print basic system statistics.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Stats()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemMetricsOut**](SystemMetricsOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **StripeConnect**
> StripeConnect(scope=var.scope, code=var.code, error=var.error, error.description=var.error.description)

Connects a Stripe Account.

### Example
```R
library(namsor)

var.scope <- 'scope_example' # character | 
var.code <- 'code_example' # character | 
var.error <- 'error_example' # character | 
var.error.description <- 'error.description_example' # character | 

#Connects a Stripe Account.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
api.instance$StripeConnect(scope=var.scope, code=var.code, error=var.error, error.description=var.error.description)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | **character**|  | [optional] 
 **code** | **character**|  | [optional] 
 **error** | **character**|  | [optional] 
 **error.description** | **character**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **SubscribePlan**
> APIPlanSubscriptionOut SubscribePlan(plan.name, token)

Subscribe to a give API plan, using the user's preferred or default currency.

### Example
```R
library(namsor)

var.plan.name <- 'plan.name_example' # character | 
var.token <- 'token_example' # character | 

#Subscribe to a give API plan, using the user's preferred or default currency.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SubscribePlan(var.plan.name, var.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plan.name** | **character**|  | 
 **token** | **character**|  | 

### Return type

[**APIPlanSubscriptionOut**](APIPlanSubscriptionOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **UpdateBillingInfo**
> BillingInfoInOut UpdateBillingInfo(token, billing.info.in.out=var.billing.info.in.out)

Sets or update the billing information (company name, address, phone, vat ID)

### Example
```R
library(namsor)

var.token <- 'token_example' # character | 
var.billing.info.in.out <- BillingInfoInOut$new() # BillingInfoInOut | 

#Sets or update the billing information (company name, address, phone, vat ID)
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateBillingInfo(var.token, billing.info.in.out=var.billing.info.in.out)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **character**|  | 
 **billing.info.in.out** | [**BillingInfoInOut**](BillingInfoInOut.md)|  | [optional] 

### Return type

[**BillingInfoInOut**](BillingInfoInOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/json



# **UpdateLimit**
> APIPeriodUsageOut UpdateLimit(usage.limit, hard.or.soft, token)

Modifies the hard/soft limit on the API plan's overages (default is 0$ soft limit).

### Example
```R
library(namsor)

var.usage.limit <- 56 # integer | 
var.hard.or.soft <- 'hard.or.soft_example' # character | 
var.token <- 'token_example' # character | 

#Modifies the hard/soft limit on the API plan's overages (default is 0$ soft limit).
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateLimit(var.usage.limit, var.hard.or.soft, var.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage.limit** | **integer**|  | 
 **hard.or.soft** | **character**|  | 
 **token** | **character**|  | 

### Return type

[**APIPeriodUsageOut**](APIPeriodUsageOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **UpdatePaymentDefault**
> APIKeyOut UpdatePaymentDefault(defaut.source.id, token)

Update the default Stripe card associated with the current google auth session token.

### Example
```R
library(namsor)

var.defaut.source.id <- 'defaut.source.id_example' # character | 
var.token <- 'token_example' # character | 

#Update the default Stripe card associated with the current google auth session token.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdatePaymentDefault(var.defaut.source.id, var.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **defaut.source.id** | **character**|  | 
 **token** | **character**|  | 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **UserInfo**
> APIKeyOut UserInfo(token)

Get the user profile associated with the current google auth session token.

### Example
```R
library(namsor)

var.token <- 'token_example' # character | 

#Get the user profile associated with the current google auth session token.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UserInfo(var.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **character**|  | 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **VerifyEmail**
> APIKeyOut VerifyEmail(email.token)

Verifies an email, based on token sent to that email

### Example
```R
library(namsor)

var.email.token <- 'email.token_example' # character | 

#Verifies an email, based on token sent to that email
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$VerifyEmail(var.email.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email.token** | **character**|  | 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **VerifyRemoveEmail**
> APIKeyOut VerifyRemoveEmail(email.token)

Verifies an email, based on token sent to that email

### Example
```R
library(namsor)

var.email.token <- 'email.token_example' # character | 

#Verifies an email, based on token sent to that email
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$VerifyRemoveEmail(var.email.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email.token** | **character**|  | 

### Return type

[**APIKeyOut**](APIKeyOut.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **Vet**
> Vet(source, vetted)

Vetting of a source.

### Example
```R
library(namsor)

var.source <- 'source_example' # character | 
var.vetted <- 'vetted_example' # character | 

#Vetting of a source.
api.instance <- AdminApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['X-API-KEY'] <- 'TODO_YOUR_API_KEY';
api.instance$Vet(var.source, var.vetted)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source** | **character**|  | 
 **vetted** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



