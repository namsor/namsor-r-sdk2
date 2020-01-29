# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.8
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' APIUsageAggregatedOut Class
#'
#' @field timeUnit 
#' @field periodStart 
#' @field periodEnd 
#' @field totalUsage 
#' @field historyTruncated 
#' @field data 
#' @field colHeaders 
#' @field rowHeaders 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
APIUsageAggregatedOut <- R6::R6Class(
  'APIUsageAggregatedOut',
  public = list(
    `timeUnit` = NULL,
    `periodStart` = NULL,
    `periodEnd` = NULL,
    `totalUsage` = NULL,
    `historyTruncated` = NULL,
    `data` = NULL,
    `colHeaders` = NULL,
    `rowHeaders` = NULL,
    initialize = function(`timeUnit`, `periodStart`, `periodEnd`, `totalUsage`, `historyTruncated`, `data`, `colHeaders`, `rowHeaders`){
      if (!missing(`timeUnit`)) {
        stopifnot(is.character(`timeUnit`), length(`timeUnit`) == 1)
        self$`timeUnit` <- `timeUnit`
      }
      if (!missing(`periodStart`)) {
        stopifnot(is.numeric(`periodStart`), length(`periodStart`) == 1)
        self$`periodStart` <- `periodStart`
      }
      if (!missing(`periodEnd`)) {
        stopifnot(is.numeric(`periodEnd`), length(`periodEnd`) == 1)
        self$`periodEnd` <- `periodEnd`
      }
      if (!missing(`totalUsage`)) {
        stopifnot(is.numeric(`totalUsage`), length(`totalUsage`) == 1)
        self$`totalUsage` <- `totalUsage`
      }
      if (!missing(`historyTruncated`)) {
        self$`historyTruncated` <- `historyTruncated`
      }
      if (!missing(`data`)) {
        stopifnot(is.list(`data`), length(`data`) != 0)
        lapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
      }
      if (!missing(`colHeaders`)) {
        stopifnot(is.list(`colHeaders`), length(`colHeaders`) != 0)
        lapply(`colHeaders`, function(x) stopifnot(is.character(x)))
        self$`colHeaders` <- `colHeaders`
      }
      if (!missing(`rowHeaders`)) {
        stopifnot(is.list(`rowHeaders`), length(`rowHeaders`) != 0)
        lapply(`rowHeaders`, function(x) stopifnot(is.character(x)))
        self$`rowHeaders` <- `rowHeaders`
      }
    },
    toJSON = function() {
      APIUsageAggregatedOutObject <- list()
      if (!is.null(self$`timeUnit`)) {
        APIUsageAggregatedOutObject[['timeUnit']] <- self$`timeUnit`
      }
      if (!is.null(self$`periodStart`)) {
        APIUsageAggregatedOutObject[['periodStart']] <- self$`periodStart`
      }
      if (!is.null(self$`periodEnd`)) {
        APIUsageAggregatedOutObject[['periodEnd']] <- self$`periodEnd`
      }
      if (!is.null(self$`totalUsage`)) {
        APIUsageAggregatedOutObject[['totalUsage']] <- self$`totalUsage`
      }
      if (!is.null(self$`historyTruncated`)) {
        APIUsageAggregatedOutObject[['historyTruncated']] <- self$`historyTruncated`
      }
      if (!is.null(self$`data`)) {
        APIUsageAggregatedOutObject[['data']] <- lapply(self$`data`, function(x) x$toJSON())
      }
      if (!is.null(self$`colHeaders`)) {
        APIUsageAggregatedOutObject[['colHeaders']] <- self$`colHeaders`
      }
      if (!is.null(self$`rowHeaders`)) {
        APIUsageAggregatedOutObject[['rowHeaders']] <- self$`rowHeaders`
      }

      APIUsageAggregatedOutObject
    },
    fromJSON = function(APIUsageAggregatedOutJson) {
      APIUsageAggregatedOutObject <- jsonlite::fromJSON(APIUsageAggregatedOutJson)
      if (!is.null(APIUsageAggregatedOutObject$`timeUnit`)) {
        self$`timeUnit` <- APIUsageAggregatedOutObject$`timeUnit`
      }
      if (!is.null(APIUsageAggregatedOutObject$`periodStart`)) {
        self$`periodStart` <- APIUsageAggregatedOutObject$`periodStart`
      }
      if (!is.null(APIUsageAggregatedOutObject$`periodEnd`)) {
        self$`periodEnd` <- APIUsageAggregatedOutObject$`periodEnd`
      }
      if (!is.null(APIUsageAggregatedOutObject$`totalUsage`)) {
        self$`totalUsage` <- APIUsageAggregatedOutObject$`totalUsage`
      }
      if (!is.null(APIUsageAggregatedOutObject$`historyTruncated`)) {
        self$`historyTruncated` <- APIUsageAggregatedOutObject$`historyTruncated`
      }
      if (!is.null(APIUsageAggregatedOutObject$`data`)) {
        self$`data` <- lapply(APIUsageAggregatedOutObject$`data`, function(x) {
          dataObject <- Integer$new()
          dataObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          dataObject
        })
      }
      if (!is.null(APIUsageAggregatedOutObject$`colHeaders`)) {
        self$`colHeaders` <- APIUsageAggregatedOutObject$`colHeaders`
      }
      if (!is.null(APIUsageAggregatedOutObject$`rowHeaders`)) {
        self$`rowHeaders` <- APIUsageAggregatedOutObject$`rowHeaders`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "timeUnit": %s,
           "periodStart": %d,
           "periodEnd": %d,
           "totalUsage": %d,
           "historyTruncated": %s,
           "data": [%s],
           "colHeaders": [%s],
           "rowHeaders": [%s]
        }',
        self$`timeUnit`,
        self$`periodStart`,
        self$`periodEnd`,
        self$`totalUsage`,
        self$`historyTruncated`,
        lapply(self$`data`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`colHeaders`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`rowHeaders`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(APIUsageAggregatedOutJson) {
      APIUsageAggregatedOutObject <- jsonlite::fromJSON(APIUsageAggregatedOutJson)
      self$`timeUnit` <- APIUsageAggregatedOutObject$`timeUnit`
      self$`periodStart` <- APIUsageAggregatedOutObject$`periodStart`
      self$`periodEnd` <- APIUsageAggregatedOutObject$`periodEnd`
      self$`totalUsage` <- APIUsageAggregatedOutObject$`totalUsage`
      self$`historyTruncated` <- APIUsageAggregatedOutObject$`historyTruncated`
      self$`data` <- lapply(APIUsageAggregatedOutObject$`data`, function(x) Integer$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`colHeaders` <- APIUsageAggregatedOutObject$`colHeaders`
      self$`rowHeaders` <- APIUsageAggregatedOutObject$`rowHeaders`
    }
  )
)
