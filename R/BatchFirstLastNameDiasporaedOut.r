# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.11
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' BatchFirstLastNameDiasporaedOut Class
#'
#' @field personalNames 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BatchFirstLastNameDiasporaedOut <- R6::R6Class(
  'BatchFirstLastNameDiasporaedOut',
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
      BatchFirstLastNameDiasporaedOutObject <- list()
      if (!is.null(self$`personalNames`)) {
        BatchFirstLastNameDiasporaedOutObject[['personalNames']] <- lapply(self$`personalNames`, function(x) x$toJSON())
      }

      BatchFirstLastNameDiasporaedOutObject
    },
    fromJSON = function(BatchFirstLastNameDiasporaedOutJson) {
      BatchFirstLastNameDiasporaedOutObject <- jsonlite::fromJSON(BatchFirstLastNameDiasporaedOutJson)
      if (!is.null(BatchFirstLastNameDiasporaedOutObject$`personalNames`)) {
        self$`personalNames` <- lapply(BatchFirstLastNameDiasporaedOutObject$`personalNames`, function(x) {
          personalNamesObject <- FirstLastNameDiasporaedOut$new()
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
    fromJSONString = function(BatchFirstLastNameDiasporaedOutJson) {
      BatchFirstLastNameDiasporaedOutObject <- jsonlite::fromJSON(BatchFirstLastNameDiasporaedOutJson)
      self$`personalNames` <- lapply(BatchFirstLastNameDiasporaedOutObject$`personalNames`, function(x) FirstLastNameDiasporaedOut$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
