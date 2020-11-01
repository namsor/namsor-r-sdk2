# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.11
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' ParsedFullNameGeoIn Class
#'
#' @field id 
#' @field firstName 
#' @field lastName 
#' @field prefixOrTitle 
#' @field suffix 
#' @field middleName 
#' @field countryIso2 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ParsedFullNameGeoIn <- R6::R6Class(
  'ParsedFullNameGeoIn',
  public = list(
    `id` = NULL,
    `firstName` = NULL,
    `lastName` = NULL,
    `prefixOrTitle` = NULL,
    `suffix` = NULL,
    `middleName` = NULL,
    `countryIso2` = NULL,
    initialize = function(`id`, `firstName`, `lastName`, `prefixOrTitle`, `suffix`, `middleName`, `countryIso2`){
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
      if (!missing(`countryIso2`)) {
        stopifnot(is.character(`countryIso2`), length(`countryIso2`) == 1)
        self$`countryIso2` <- `countryIso2`
      }
    },
    toJSON = function() {
      ParsedFullNameGeoInObject <- list()
      if (!is.null(self$`id`)) {
        ParsedFullNameGeoInObject[['id']] <- self$`id`
      }
      if (!is.null(self$`firstName`)) {
        ParsedFullNameGeoInObject[['firstName']] <- self$`firstName`
      }
      if (!is.null(self$`lastName`)) {
        ParsedFullNameGeoInObject[['lastName']] <- self$`lastName`
      }
      if (!is.null(self$`prefixOrTitle`)) {
        ParsedFullNameGeoInObject[['prefixOrTitle']] <- self$`prefixOrTitle`
      }
      if (!is.null(self$`suffix`)) {
        ParsedFullNameGeoInObject[['suffix']] <- self$`suffix`
      }
      if (!is.null(self$`middleName`)) {
        ParsedFullNameGeoInObject[['middleName']] <- self$`middleName`
      }
      if (!is.null(self$`countryIso2`)) {
        ParsedFullNameGeoInObject[['countryIso2']] <- self$`countryIso2`
      }

      ParsedFullNameGeoInObject
    },
    fromJSON = function(ParsedFullNameGeoInJson) {
      ParsedFullNameGeoInObject <- jsonlite::fromJSON(ParsedFullNameGeoInJson)
      if (!is.null(ParsedFullNameGeoInObject$`id`)) {
        self$`id` <- ParsedFullNameGeoInObject$`id`
      }
      if (!is.null(ParsedFullNameGeoInObject$`firstName`)) {
        self$`firstName` <- ParsedFullNameGeoInObject$`firstName`
      }
      if (!is.null(ParsedFullNameGeoInObject$`lastName`)) {
        self$`lastName` <- ParsedFullNameGeoInObject$`lastName`
      }
      if (!is.null(ParsedFullNameGeoInObject$`prefixOrTitle`)) {
        self$`prefixOrTitle` <- ParsedFullNameGeoInObject$`prefixOrTitle`
      }
      if (!is.null(ParsedFullNameGeoInObject$`suffix`)) {
        self$`suffix` <- ParsedFullNameGeoInObject$`suffix`
      }
      if (!is.null(ParsedFullNameGeoInObject$`middleName`)) {
        self$`middleName` <- ParsedFullNameGeoInObject$`middleName`
      }
      if (!is.null(ParsedFullNameGeoInObject$`countryIso2`)) {
        self$`countryIso2` <- ParsedFullNameGeoInObject$`countryIso2`
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
           "middleName": %s,
           "countryIso2": %s
        }',
        self$`id`,
        self$`firstName`,
        self$`lastName`,
        self$`prefixOrTitle`,
        self$`suffix`,
        self$`middleName`,
        self$`countryIso2`
      )
    },
    fromJSONString = function(ParsedFullNameGeoInJson) {
      ParsedFullNameGeoInObject <- jsonlite::fromJSON(ParsedFullNameGeoInJson)
      self$`id` <- ParsedFullNameGeoInObject$`id`
      self$`firstName` <- ParsedFullNameGeoInObject$`firstName`
      self$`lastName` <- ParsedFullNameGeoInObject$`lastName`
      self$`prefixOrTitle` <- ParsedFullNameGeoInObject$`prefixOrTitle`
      self$`suffix` <- ParsedFullNameGeoInObject$`suffix`
      self$`middleName` <- ParsedFullNameGeoInObject$`middleName`
      self$`countryIso2` <- ParsedFullNameGeoInObject$`countryIso2`
    }
  )
)
