# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.6
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' ExpectedClassMetricsOut Class
#'
#' @field classifierName 
#' @field expectedClass 
#' @field aiEstimateTotal 
#' @field aiEstimatePrecision 
#' @field aiEstimateRecall 
#' @field aiLearnTotal 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ExpectedClassMetricsOut <- R6::R6Class(
  'ExpectedClassMetricsOut',
  public = list(
    `classifierName` = NULL,
    `expectedClass` = NULL,
    `aiEstimateTotal` = NULL,
    `aiEstimatePrecision` = NULL,
    `aiEstimateRecall` = NULL,
    `aiLearnTotal` = NULL,
    initialize = function(`classifierName`, `expectedClass`, `aiEstimateTotal`, `aiEstimatePrecision`, `aiEstimateRecall`, `aiLearnTotal`){
      if (!missing(`classifierName`)) {
        stopifnot(is.character(`classifierName`), length(`classifierName`) == 1)
        self$`classifierName` <- `classifierName`
      }
      if (!missing(`expectedClass`)) {
        stopifnot(is.character(`expectedClass`), length(`expectedClass`) == 1)
        self$`expectedClass` <- `expectedClass`
      }
      if (!missing(`aiEstimateTotal`)) {
        stopifnot(is.numeric(`aiEstimateTotal`), length(`aiEstimateTotal`) == 1)
        self$`aiEstimateTotal` <- `aiEstimateTotal`
      }
      if (!missing(`aiEstimatePrecision`)) {
        stopifnot(is.numeric(`aiEstimatePrecision`), length(`aiEstimatePrecision`) == 1)
        self$`aiEstimatePrecision` <- `aiEstimatePrecision`
      }
      if (!missing(`aiEstimateRecall`)) {
        stopifnot(is.numeric(`aiEstimateRecall`), length(`aiEstimateRecall`) == 1)
        self$`aiEstimateRecall` <- `aiEstimateRecall`
      }
      if (!missing(`aiLearnTotal`)) {
        stopifnot(is.numeric(`aiLearnTotal`), length(`aiLearnTotal`) == 1)
        self$`aiLearnTotal` <- `aiLearnTotal`
      }
    },
    toJSON = function() {
      ExpectedClassMetricsOutObject <- list()
      if (!is.null(self$`classifierName`)) {
        ExpectedClassMetricsOutObject[['classifierName']] <- self$`classifierName`
      }
      if (!is.null(self$`expectedClass`)) {
        ExpectedClassMetricsOutObject[['expectedClass']] <- self$`expectedClass`
      }
      if (!is.null(self$`aiEstimateTotal`)) {
        ExpectedClassMetricsOutObject[['aiEstimateTotal']] <- self$`aiEstimateTotal`
      }
      if (!is.null(self$`aiEstimatePrecision`)) {
        ExpectedClassMetricsOutObject[['aiEstimatePrecision']] <- self$`aiEstimatePrecision`
      }
      if (!is.null(self$`aiEstimateRecall`)) {
        ExpectedClassMetricsOutObject[['aiEstimateRecall']] <- self$`aiEstimateRecall`
      }
      if (!is.null(self$`aiLearnTotal`)) {
        ExpectedClassMetricsOutObject[['aiLearnTotal']] <- self$`aiLearnTotal`
      }

      ExpectedClassMetricsOutObject
    },
    fromJSON = function(ExpectedClassMetricsOutJson) {
      ExpectedClassMetricsOutObject <- jsonlite::fromJSON(ExpectedClassMetricsOutJson)
      if (!is.null(ExpectedClassMetricsOutObject$`classifierName`)) {
        self$`classifierName` <- ExpectedClassMetricsOutObject$`classifierName`
      }
      if (!is.null(ExpectedClassMetricsOutObject$`expectedClass`)) {
        self$`expectedClass` <- ExpectedClassMetricsOutObject$`expectedClass`
      }
      if (!is.null(ExpectedClassMetricsOutObject$`aiEstimateTotal`)) {
        self$`aiEstimateTotal` <- ExpectedClassMetricsOutObject$`aiEstimateTotal`
      }
      if (!is.null(ExpectedClassMetricsOutObject$`aiEstimatePrecision`)) {
        self$`aiEstimatePrecision` <- ExpectedClassMetricsOutObject$`aiEstimatePrecision`
      }
      if (!is.null(ExpectedClassMetricsOutObject$`aiEstimateRecall`)) {
        self$`aiEstimateRecall` <- ExpectedClassMetricsOutObject$`aiEstimateRecall`
      }
      if (!is.null(ExpectedClassMetricsOutObject$`aiLearnTotal`)) {
        self$`aiLearnTotal` <- ExpectedClassMetricsOutObject$`aiLearnTotal`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "classifierName": %s,
           "expectedClass": %s,
           "aiEstimateTotal": %d,
           "aiEstimatePrecision": %d,
           "aiEstimateRecall": %d,
           "aiLearnTotal": %d
        }',
        self$`classifierName`,
        self$`expectedClass`,
        self$`aiEstimateTotal`,
        self$`aiEstimatePrecision`,
        self$`aiEstimateRecall`,
        self$`aiLearnTotal`
      )
    },
    fromJSONString = function(ExpectedClassMetricsOutJson) {
      ExpectedClassMetricsOutObject <- jsonlite::fromJSON(ExpectedClassMetricsOutJson)
      self$`classifierName` <- ExpectedClassMetricsOutObject$`classifierName`
      self$`expectedClass` <- ExpectedClassMetricsOutObject$`expectedClass`
      self$`aiEstimateTotal` <- ExpectedClassMetricsOutObject$`aiEstimateTotal`
      self$`aiEstimatePrecision` <- ExpectedClassMetricsOutObject$`aiEstimatePrecision`
      self$`aiEstimateRecall` <- ExpectedClassMetricsOutObject$`aiEstimateRecall`
      self$`aiLearnTotal` <- ExpectedClassMetricsOutObject$`aiLearnTotal`
    }
  )
)
