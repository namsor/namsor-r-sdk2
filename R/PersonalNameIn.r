# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.9
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' PersonalNameIn Class
#'
#' @field id 
#' @field name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PersonalNameIn <- R6::R6Class(
  'PersonalNameIn',
  public = list(
    `id` = NULL,
    `name` = NULL,
    initialize = function(`id`, `name`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    toJSON = function() {
      PersonalNameInObject <- list()
      if (!is.null(self$`id`)) {
        PersonalNameInObject[['id']] <- self$`id`
      }
      if (!is.null(self$`name`)) {
        PersonalNameInObject[['name']] <- self$`name`
      }

      PersonalNameInObject
    },
    fromJSON = function(PersonalNameInJson) {
      PersonalNameInObject <- jsonlite::fromJSON(PersonalNameInJson)
      if (!is.null(PersonalNameInObject$`id`)) {
        self$`id` <- PersonalNameInObject$`id`
      }
      if (!is.null(PersonalNameInObject$`name`)) {
        self$`name` <- PersonalNameInObject$`name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "name": %s
        }',
        self$`id`,
        self$`name`
      )
    },
    fromJSONString = function(PersonalNameInJson) {
      PersonalNameInObject <- jsonlite::fromJSON(PersonalNameInJson)
      self$`id` <- PersonalNameInObject$`id`
      self$`name` <- PersonalNameInObject$`name`
    }
  )
)
