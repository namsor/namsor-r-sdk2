# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.8
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' APICounterV2Out Class
#'
#' @field apiKey 
#' @field apiService 
#' @field createdDateTime 
#' @field totalUsage 
#' @field lastFlushedDateTime 
#' @field lastUsedDateTime 
#' @field serviceFeaturesUsage 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
APICounterV2Out <- R6::R6Class(
  'APICounterV2Out',
  public = list(
    `apiKey` = NULL,
    `apiService` = NULL,
    `createdDateTime` = NULL,
    `totalUsage` = NULL,
    `lastFlushedDateTime` = NULL,
    `lastUsedDateTime` = NULL,
    `serviceFeaturesUsage` = NULL,
    initialize = function(`apiKey`, `apiService`, `createdDateTime`, `totalUsage`, `lastFlushedDateTime`, `lastUsedDateTime`, `serviceFeaturesUsage`){
      if (!missing(`apiKey`)) {
        stopifnot(R6::is.R6(`apiKey`))
        self$`apiKey` <- `apiKey`
      }
      if (!missing(`apiService`)) {
        stopifnot(is.character(`apiService`), length(`apiService`) == 1)
        self$`apiService` <- `apiService`
      }
      if (!missing(`createdDateTime`)) {
        stopifnot(is.numeric(`createdDateTime`), length(`createdDateTime`) == 1)
        self$`createdDateTime` <- `createdDateTime`
      }
      if (!missing(`totalUsage`)) {
        stopifnot(is.numeric(`totalUsage`), length(`totalUsage`) == 1)
        self$`totalUsage` <- `totalUsage`
      }
      if (!missing(`lastFlushedDateTime`)) {
        stopifnot(is.numeric(`lastFlushedDateTime`), length(`lastFlushedDateTime`) == 1)
        self$`lastFlushedDateTime` <- `lastFlushedDateTime`
      }
      if (!missing(`lastUsedDateTime`)) {
        stopifnot(is.numeric(`lastUsedDateTime`), length(`lastUsedDateTime`) == 1)
        self$`lastUsedDateTime` <- `lastUsedDateTime`
      }
      if (!missing(`serviceFeaturesUsage`)) {
        self$`serviceFeaturesUsage` <- `serviceFeaturesUsage`
      }
    },
    toJSON = function() {
      APICounterV2OutObject <- list()
      if (!is.null(self$`apiKey`)) {
        APICounterV2OutObject[['apiKey']] <- self$`apiKey`$toJSON()
      }
      if (!is.null(self$`apiService`)) {
        APICounterV2OutObject[['apiService']] <- self$`apiService`
      }
      if (!is.null(self$`createdDateTime`)) {
        APICounterV2OutObject[['createdDateTime']] <- self$`createdDateTime`
      }
      if (!is.null(self$`totalUsage`)) {
        APICounterV2OutObject[['totalUsage']] <- self$`totalUsage`
      }
      if (!is.null(self$`lastFlushedDateTime`)) {
        APICounterV2OutObject[['lastFlushedDateTime']] <- self$`lastFlushedDateTime`
      }
      if (!is.null(self$`lastUsedDateTime`)) {
        APICounterV2OutObject[['lastUsedDateTime']] <- self$`lastUsedDateTime`
      }
      if (!is.null(self$`serviceFeaturesUsage`)) {
        APICounterV2OutObject[['serviceFeaturesUsage']] <- self$`serviceFeaturesUsage`
      }

      APICounterV2OutObject
    },
    fromJSON = function(APICounterV2OutJson) {
      APICounterV2OutObject <- jsonlite::fromJSON(APICounterV2OutJson)
      if (!is.null(APICounterV2OutObject$`apiKey`)) {
        apiKeyObject <- APIKeyOut$new()
        apiKeyObject$fromJSON(jsonlite::toJSON(APICounterV2OutObject$apiKey, auto_unbox = TRUE))
        self$`apiKey` <- apiKeyObject
      }
      if (!is.null(APICounterV2OutObject$`apiService`)) {
        self$`apiService` <- APICounterV2OutObject$`apiService`
      }
      if (!is.null(APICounterV2OutObject$`createdDateTime`)) {
        self$`createdDateTime` <- APICounterV2OutObject$`createdDateTime`
      }
      if (!is.null(APICounterV2OutObject$`totalUsage`)) {
        self$`totalUsage` <- APICounterV2OutObject$`totalUsage`
      }
      if (!is.null(APICounterV2OutObject$`lastFlushedDateTime`)) {
        self$`lastFlushedDateTime` <- APICounterV2OutObject$`lastFlushedDateTime`
      }
      if (!is.null(APICounterV2OutObject$`lastUsedDateTime`)) {
        self$`lastUsedDateTime` <- APICounterV2OutObject$`lastUsedDateTime`
      }
      if (!is.null(APICounterV2OutObject$`serviceFeaturesUsage`)) {
        self$`serviceFeaturesUsage` <- APICounterV2OutObject$`serviceFeaturesUsage`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "apiKey": %s,
           "apiService": %s,
           "createdDateTime": %d,
           "totalUsage": %d,
           "lastFlushedDateTime": %d,
           "lastUsedDateTime": %d,
           "serviceFeaturesUsage": %s
        }',
        self$`apiKey`$toJSON(),
        self$`apiService`,
        self$`createdDateTime`,
        self$`totalUsage`,
        self$`lastFlushedDateTime`,
        self$`lastUsedDateTime`,
        self$`serviceFeaturesUsage`
      )
    },
    fromJSONString = function(APICounterV2OutJson) {
      APICounterV2OutObject <- jsonlite::fromJSON(APICounterV2OutJson)
      APIKeyOutObject <- APIKeyOut$new()
      self$`apiKey` <- APIKeyOutObject$fromJSON(jsonlite::toJSON(APICounterV2OutObject$apiKey, auto_unbox = TRUE))
      self$`apiService` <- APICounterV2OutObject$`apiService`
      self$`createdDateTime` <- APICounterV2OutObject$`createdDateTime`
      self$`totalUsage` <- APICounterV2OutObject$`totalUsage`
      self$`lastFlushedDateTime` <- APICounterV2OutObject$`lastFlushedDateTime`
      self$`lastUsedDateTime` <- APICounterV2OutObject$`lastUsedDateTime`
      self$`serviceFeaturesUsage` <- APICounterV2OutObject$`serviceFeaturesUsage`
    }
  )
)
