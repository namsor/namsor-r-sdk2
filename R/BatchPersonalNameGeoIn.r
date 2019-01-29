# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 1000 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.2-beta
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' BatchPersonalNameGeoIn Class
#'
#' @field personalNames 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BatchPersonalNameGeoIn <- R6::R6Class(
  'BatchPersonalNameGeoIn',
  public = list(
    `personalNames` = NULL,
    initialize = function(`personalNames`){
      if (!missing(`personalNames`)) {
        stopifnot(is.list(`personalNames`), length(`personalNames`) != 0)
        lapply(`personalNames`, function(x) stopifnot(R6::is.R6(x)))
        self$`personalNames` <- `personalNames`
      }
    },
    toJSON = function() {
      BatchPersonalNameGeoInObject <- list()
      if (!is.null(self$`personalNames`)) {
        BatchPersonalNameGeoInObject[['personalNames']] <- lapply(self$`personalNames`, function(x) x$toJSON())
      }

      BatchPersonalNameGeoInObject
    },
    fromJSON = function(BatchPersonalNameGeoInJson) {
      BatchPersonalNameGeoInObject <- jsonlite::fromJSON(BatchPersonalNameGeoInJson)
      if (!is.null(BatchPersonalNameGeoInObject$`personalNames`)) {
        self$`personalNames` <- lapply(BatchPersonalNameGeoInObject$`personalNames`, function(x) {
          personalNamesObject <- PersonalNameGeoIn$new()
          personalNamesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          personalNamesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "personalNames": [%s]
        }',
        lapply(self$`personalNames`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(BatchPersonalNameGeoInJson) {
      BatchPersonalNameGeoInObject <- jsonlite::fromJSON(BatchPersonalNameGeoInJson)
      self$`personalNames` <- lapply(BatchPersonalNameGeoInObject$`personalNames`, function(x) PersonalNameGeoIn$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
