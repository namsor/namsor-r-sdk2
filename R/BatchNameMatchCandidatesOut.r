# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.9
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' BatchNameMatchCandidatesOut Class
#'
#' @field namesAndMatchCandidates 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BatchNameMatchCandidatesOut <- R6::R6Class(
  'BatchNameMatchCandidatesOut',
  public = list(
    `namesAndMatchCandidates` = NULL,
    initialize = function(`namesAndMatchCandidates`){
      if (!missing(`namesAndMatchCandidates`)) {
        stopifnot(is.list(`namesAndMatchCandidates`), length(`namesAndMatchCandidates`) != 0)
        lapply(`namesAndMatchCandidates`, function(x) stopifnot(R6::is.R6(x)))
        self$`namesAndMatchCandidates` <- `namesAndMatchCandidates`
      }
    },
    toJSON = function() {
      BatchNameMatchCandidatesOutObject <- list()
      if (!is.null(self$`namesAndMatchCandidates`)) {
        BatchNameMatchCandidatesOutObject[['namesAndMatchCandidates']] <- lapply(self$`namesAndMatchCandidates`, function(x) x$toJSON())
      }

      BatchNameMatchCandidatesOutObject
    },
    fromJSON = function(BatchNameMatchCandidatesOutJson) {
      BatchNameMatchCandidatesOutObject <- jsonlite::fromJSON(BatchNameMatchCandidatesOutJson)
      if (!is.null(BatchNameMatchCandidatesOutObject$`namesAndMatchCandidates`)) {
        self$`namesAndMatchCandidates` <- lapply(BatchNameMatchCandidatesOutObject$`namesAndMatchCandidates`, function(x) {
          namesAndMatchCandidatesObject <- NameMatchCandidatesOut$new()
          namesAndMatchCandidatesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          namesAndMatchCandidatesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "namesAndMatchCandidates": [%s]
        }',
        lapply(self$`namesAndMatchCandidates`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(BatchNameMatchCandidatesOutJson) {
      BatchNameMatchCandidatesOutObject <- jsonlite::fromJSON(BatchNameMatchCandidatesOutJson)
      self$`namesAndMatchCandidates` <- lapply(BatchNameMatchCandidatesOutObject$`namesAndMatchCandidates`, function(x) NameMatchCandidatesOut$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
