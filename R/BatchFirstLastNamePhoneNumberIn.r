# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.10
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' BatchFirstLastNamePhoneNumberIn Class
#'
#' @field personalNamesWithPhoneNumbers 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BatchFirstLastNamePhoneNumberIn <- R6::R6Class(
  'BatchFirstLastNamePhoneNumberIn',
  public = list(
    `personalNamesWithPhoneNumbers` = NULL,
    initialize = function(`personalNamesWithPhoneNumbers`){
      if (!missing(`personalNamesWithPhoneNumbers`)) {
        stopifnot(is.list(`personalNamesWithPhoneNumbers`), length(`personalNamesWithPhoneNumbers`) != 0)
        lapply(`personalNamesWithPhoneNumbers`, function(x) stopifnot(R6::is.R6(x)))
        self$`personalNamesWithPhoneNumbers` <- `personalNamesWithPhoneNumbers`
      }
    },
    toJSON = function() {
      BatchFirstLastNamePhoneNumberInObject <- list()
      if (!is.null(self$`personalNamesWithPhoneNumbers`)) {
        BatchFirstLastNamePhoneNumberInObject[['personalNamesWithPhoneNumbers']] <- lapply(self$`personalNamesWithPhoneNumbers`, function(x) x$toJSON())
      }

      BatchFirstLastNamePhoneNumberInObject
    },
    fromJSON = function(BatchFirstLastNamePhoneNumberInJson) {
      BatchFirstLastNamePhoneNumberInObject <- jsonlite::fromJSON(BatchFirstLastNamePhoneNumberInJson)
      if (!is.null(BatchFirstLastNamePhoneNumberInObject$`personalNamesWithPhoneNumbers`)) {
        self$`personalNamesWithPhoneNumbers` <- lapply(BatchFirstLastNamePhoneNumberInObject$`personalNamesWithPhoneNumbers`, function(x) {
          personalNamesWithPhoneNumbersObject <- FirstLastNamePhoneNumberIn$new()
          personalNamesWithPhoneNumbersObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          personalNamesWithPhoneNumbersObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "personalNamesWithPhoneNumbers": [%s]
        }',
        lapply(self$`personalNamesWithPhoneNumbers`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(BatchFirstLastNamePhoneNumberInJson) {
      BatchFirstLastNamePhoneNumberInObject <- jsonlite::fromJSON(BatchFirstLastNamePhoneNumberInJson)
      self$`personalNamesWithPhoneNumbers` <- lapply(BatchFirstLastNamePhoneNumberInObject$`personalNamesWithPhoneNumbers`, function(x) FirstLastNamePhoneNumberIn$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)