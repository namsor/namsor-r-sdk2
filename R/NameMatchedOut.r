# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.8
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' NameMatchedOut Class
#'
#' @field id 
#' @field matchStatus 
#' @field score 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NameMatchedOut <- R6::R6Class(
  'NameMatchedOut',
  public = list(
    `id` = NULL,
    `matchStatus` = NULL,
    `score` = NULL,
    initialize = function(`id`, `matchStatus`, `score`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`matchStatus`)) {
        stopifnot(is.character(`matchStatus`), length(`matchStatus`) == 1)
        self$`matchStatus` <- `matchStatus`
      }
      if (!missing(`score`)) {
        stopifnot(is.numeric(`score`), length(`score`) == 1)
        self$`score` <- `score`
      }
    },
    toJSON = function() {
      NameMatchedOutObject <- list()
      if (!is.null(self$`id`)) {
        NameMatchedOutObject[['id']] <- self$`id`
      }
      if (!is.null(self$`matchStatus`)) {
        NameMatchedOutObject[['matchStatus']] <- self$`matchStatus`
      }
      if (!is.null(self$`score`)) {
        NameMatchedOutObject[['score']] <- self$`score`
      }

      NameMatchedOutObject
    },
    fromJSON = function(NameMatchedOutJson) {
      NameMatchedOutObject <- jsonlite::fromJSON(NameMatchedOutJson)
      if (!is.null(NameMatchedOutObject$`id`)) {
        self$`id` <- NameMatchedOutObject$`id`
      }
      if (!is.null(NameMatchedOutObject$`matchStatus`)) {
        self$`matchStatus` <- NameMatchedOutObject$`matchStatus`
      }
      if (!is.null(NameMatchedOutObject$`score`)) {
        self$`score` <- NameMatchedOutObject$`score`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "matchStatus": %s,
           "score": %d
        }',
        self$`id`,
        self$`matchStatus`,
        self$`score`
      )
    },
    fromJSONString = function(NameMatchedOutJson) {
      NameMatchedOutObject <- jsonlite::fromJSON(NameMatchedOutJson)
      self$`id` <- NameMatchedOutObject$`id`
      self$`matchStatus` <- NameMatchedOutObject$`matchStatus`
      self$`score` <- NameMatchedOutObject$`score`
    }
  )
)
