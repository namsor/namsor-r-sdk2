# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.11
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' DeployUIOut Class
#'
#' @field errorMessage 
#' @field succeeded 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeployUIOut <- R6::R6Class(
  'DeployUIOut',
  public = list(
    `errorMessage` = NULL,
    `succeeded` = NULL,
    initialize = function(`errorMessage`, `succeeded`){
      if (!missing(`errorMessage`)) {
        stopifnot(is.character(`errorMessage`), length(`errorMessage`) == 1)
        self$`errorMessage` <- `errorMessage`
      }
      if (!missing(`succeeded`)) {
        self$`succeeded` <- `succeeded`
      }
    },
    toJSON = function() {
      DeployUIOutObject <- list()
      if (!is.null(self$`errorMessage`)) {
        DeployUIOutObject[['errorMessage']] <- self$`errorMessage`
      }
      if (!is.null(self$`succeeded`)) {
        DeployUIOutObject[['succeeded']] <- self$`succeeded`
      }

      DeployUIOutObject
    },
    fromJSON = function(DeployUIOutJson) {
      DeployUIOutObject <- jsonlite::fromJSON(DeployUIOutJson)
      if (!is.null(DeployUIOutObject$`errorMessage`)) {
        self$`errorMessage` <- DeployUIOutObject$`errorMessage`
      }
      if (!is.null(DeployUIOutObject$`succeeded`)) {
        self$`succeeded` <- DeployUIOutObject$`succeeded`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "errorMessage": %s,
           "succeeded": %s
        }',
        self$`errorMessage`,
        self$`succeeded`
      )
    },
    fromJSONString = function(DeployUIOutJson) {
      DeployUIOutObject <- jsonlite::fromJSON(DeployUIOutJson)
      self$`errorMessage` <- DeployUIOutObject$`errorMessage`
      self$`succeeded` <- DeployUIOutObject$`succeeded`
    }
  )
)
