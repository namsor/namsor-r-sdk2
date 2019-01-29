# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 1000 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.2-beta
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' BatchFirstLastNameOriginedOut Class
#'
#' @field personalNames 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BatchFirstLastNameOriginedOut <- R6::R6Class(
  'BatchFirstLastNameOriginedOut',
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
      BatchFirstLastNameOriginedOutObject <- list()
      if (!is.null(self$`personalNames`)) {
        BatchFirstLastNameOriginedOutObject[['personalNames']] <- lapply(self$`personalNames`, function(x) x$toJSON())
      }

      BatchFirstLastNameOriginedOutObject
    },
    fromJSON = function(BatchFirstLastNameOriginedOutJson) {
      BatchFirstLastNameOriginedOutObject <- jsonlite::fromJSON(BatchFirstLastNameOriginedOutJson)
      if (!is.null(BatchFirstLastNameOriginedOutObject$`personalNames`)) {
        self$`personalNames` <- lapply(BatchFirstLastNameOriginedOutObject$`personalNames`, function(x) {
          personalNamesObject <- FirstLastNameOriginedOut$new()
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
    fromJSONString = function(BatchFirstLastNameOriginedOutJson) {
      BatchFirstLastNameOriginedOutObject <- jsonlite::fromJSON(BatchFirstLastNameOriginedOutJson)
      self$`personalNames` <- lapply(BatchFirstLastNameOriginedOutObject$`personalNames`, function(x) FirstLastNameOriginedOut$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
