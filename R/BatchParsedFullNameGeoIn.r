# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.6
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' BatchParsedFullNameGeoIn Class
#'
#' @field personalNames 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BatchParsedFullNameGeoIn <- R6::R6Class(
  'BatchParsedFullNameGeoIn',
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
      BatchParsedFullNameGeoInObject <- list()
      if (!is.null(self$`personalNames`)) {
        BatchParsedFullNameGeoInObject[['personalNames']] <- lapply(self$`personalNames`, function(x) x$toJSON())
      }

      BatchParsedFullNameGeoInObject
    },
    fromJSON = function(BatchParsedFullNameGeoInJson) {
      BatchParsedFullNameGeoInObject <- jsonlite::fromJSON(BatchParsedFullNameGeoInJson)
      if (!is.null(BatchParsedFullNameGeoInObject$`personalNames`)) {
        self$`personalNames` <- lapply(BatchParsedFullNameGeoInObject$`personalNames`, function(x) {
          personalNamesObject <- ParsedFullNameGeoIn$new()
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
    fromJSONString = function(BatchParsedFullNameGeoInJson) {
      BatchParsedFullNameGeoInObject <- jsonlite::fromJSON(BatchParsedFullNameGeoInJson)
      self$`personalNames` <- lapply(BatchParsedFullNameGeoInObject$`personalNames`, function(x) ParsedFullNameGeoIn$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
