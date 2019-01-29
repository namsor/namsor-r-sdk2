# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 1000 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.2-beta
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' ParsedFullNameIn Class
#'
#' @field id 
#' @field firstName 
#' @field lastName 
#' @field prefixOrTitle 
#' @field suffix 
#' @field middleName 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ParsedFullNameIn <- R6::R6Class(
  'ParsedFullNameIn',
  public = list(
    `id` = NULL,
    `firstName` = NULL,
    `lastName` = NULL,
    `prefixOrTitle` = NULL,
    `suffix` = NULL,
    `middleName` = NULL,
    initialize = function(`id`, `firstName`, `lastName`, `prefixOrTitle`, `suffix`, `middleName`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`firstName`)) {
        stopifnot(is.character(`firstName`), length(`firstName`) == 1)
        self$`firstName` <- `firstName`
      }
      if (!missing(`lastName`)) {
        stopifnot(is.character(`lastName`), length(`lastName`) == 1)
        self$`lastName` <- `lastName`
      }
      if (!missing(`prefixOrTitle`)) {
        stopifnot(is.character(`prefixOrTitle`), length(`prefixOrTitle`) == 1)
        self$`prefixOrTitle` <- `prefixOrTitle`
      }
      if (!missing(`suffix`)) {
        stopifnot(is.character(`suffix`), length(`suffix`) == 1)
        self$`suffix` <- `suffix`
      }
      if (!missing(`middleName`)) {
        stopifnot(is.character(`middleName`), length(`middleName`) == 1)
        self$`middleName` <- `middleName`
      }
    },
    toJSON = function() {
      ParsedFullNameInObject <- list()
      if (!is.null(self$`id`)) {
        ParsedFullNameInObject[['id']] <- self$`id`
      }
      if (!is.null(self$`firstName`)) {
        ParsedFullNameInObject[['firstName']] <- self$`firstName`
      }
      if (!is.null(self$`lastName`)) {
        ParsedFullNameInObject[['lastName']] <- self$`lastName`
      }
      if (!is.null(self$`prefixOrTitle`)) {
        ParsedFullNameInObject[['prefixOrTitle']] <- self$`prefixOrTitle`
      }
      if (!is.null(self$`suffix`)) {
        ParsedFullNameInObject[['suffix']] <- self$`suffix`
      }
      if (!is.null(self$`middleName`)) {
        ParsedFullNameInObject[['middleName']] <- self$`middleName`
      }

      ParsedFullNameInObject
    },
    fromJSON = function(ParsedFullNameInJson) {
      ParsedFullNameInObject <- jsonlite::fromJSON(ParsedFullNameInJson)
      if (!is.null(ParsedFullNameInObject$`id`)) {
        self$`id` <- ParsedFullNameInObject$`id`
      }
      if (!is.null(ParsedFullNameInObject$`firstName`)) {
        self$`firstName` <- ParsedFullNameInObject$`firstName`
      }
      if (!is.null(ParsedFullNameInObject$`lastName`)) {
        self$`lastName` <- ParsedFullNameInObject$`lastName`
      }
      if (!is.null(ParsedFullNameInObject$`prefixOrTitle`)) {
        self$`prefixOrTitle` <- ParsedFullNameInObject$`prefixOrTitle`
      }
      if (!is.null(ParsedFullNameInObject$`suffix`)) {
        self$`suffix` <- ParsedFullNameInObject$`suffix`
      }
      if (!is.null(ParsedFullNameInObject$`middleName`)) {
        self$`middleName` <- ParsedFullNameInObject$`middleName`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "firstName": %s,
           "lastName": %s,
           "prefixOrTitle": %s,
           "suffix": %s,
           "middleName": %s
        }',
        self$`id`,
        self$`firstName`,
        self$`lastName`,
        self$`prefixOrTitle`,
        self$`suffix`,
        self$`middleName`
      )
    },
    fromJSONString = function(ParsedFullNameInJson) {
      ParsedFullNameInObject <- jsonlite::fromJSON(ParsedFullNameInJson)
      self$`id` <- ParsedFullNameInObject$`id`
      self$`firstName` <- ParsedFullNameInObject$`firstName`
      self$`lastName` <- ParsedFullNameInObject$`lastName`
      self$`prefixOrTitle` <- ParsedFullNameInObject$`prefixOrTitle`
      self$`suffix` <- ParsedFullNameInObject$`suffix`
      self$`middleName` <- ParsedFullNameInObject$`middleName`
    }
  )
)
