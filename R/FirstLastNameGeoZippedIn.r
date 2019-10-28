# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.6
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' FirstLastNameGeoZippedIn Class
#'
#' @field id 
#' @field firstName 
#' @field lastName 
#' @field countryIso2 
#' @field zipCode 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FirstLastNameGeoZippedIn <- R6::R6Class(
  'FirstLastNameGeoZippedIn',
  public = list(
    `id` = NULL,
    `firstName` = NULL,
    `lastName` = NULL,
    `countryIso2` = NULL,
    `zipCode` = NULL,
    initialize = function(`id`, `firstName`, `lastName`, `countryIso2`, `zipCode`){
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
      if (!missing(`countryIso2`)) {
        stopifnot(is.character(`countryIso2`), length(`countryIso2`) == 1)
        self$`countryIso2` <- `countryIso2`
      }
      if (!missing(`zipCode`)) {
        stopifnot(is.character(`zipCode`), length(`zipCode`) == 1)
        self$`zipCode` <- `zipCode`
      }
    },
    toJSON = function() {
      FirstLastNameGeoZippedInObject <- list()
      if (!is.null(self$`id`)) {
        FirstLastNameGeoZippedInObject[['id']] <- self$`id`
      }
      if (!is.null(self$`firstName`)) {
        FirstLastNameGeoZippedInObject[['firstName']] <- self$`firstName`
      }
      if (!is.null(self$`lastName`)) {
        FirstLastNameGeoZippedInObject[['lastName']] <- self$`lastName`
      }
      if (!is.null(self$`countryIso2`)) {
        FirstLastNameGeoZippedInObject[['countryIso2']] <- self$`countryIso2`
      }
      if (!is.null(self$`zipCode`)) {
        FirstLastNameGeoZippedInObject[['zipCode']] <- self$`zipCode`
      }

      FirstLastNameGeoZippedInObject
    },
    fromJSON = function(FirstLastNameGeoZippedInJson) {
      FirstLastNameGeoZippedInObject <- jsonlite::fromJSON(FirstLastNameGeoZippedInJson)
      if (!is.null(FirstLastNameGeoZippedInObject$`id`)) {
        self$`id` <- FirstLastNameGeoZippedInObject$`id`
      }
      if (!is.null(FirstLastNameGeoZippedInObject$`firstName`)) {
        self$`firstName` <- FirstLastNameGeoZippedInObject$`firstName`
      }
      if (!is.null(FirstLastNameGeoZippedInObject$`lastName`)) {
        self$`lastName` <- FirstLastNameGeoZippedInObject$`lastName`
      }
      if (!is.null(FirstLastNameGeoZippedInObject$`countryIso2`)) {
        self$`countryIso2` <- FirstLastNameGeoZippedInObject$`countryIso2`
      }
      if (!is.null(FirstLastNameGeoZippedInObject$`zipCode`)) {
        self$`zipCode` <- FirstLastNameGeoZippedInObject$`zipCode`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "firstName": %s,
           "lastName": %s,
           "countryIso2": %s,
           "zipCode": %s
        }',
        self$`id`,
        self$`firstName`,
        self$`lastName`,
        self$`countryIso2`,
        self$`zipCode`
      )
    },
    fromJSONString = function(FirstLastNameGeoZippedInJson) {
      FirstLastNameGeoZippedInObject <- jsonlite::fromJSON(FirstLastNameGeoZippedInJson)
      self$`id` <- FirstLastNameGeoZippedInObject$`id`
      self$`firstName` <- FirstLastNameGeoZippedInObject$`firstName`
      self$`lastName` <- FirstLastNameGeoZippedInObject$`lastName`
      self$`countryIso2` <- FirstLastNameGeoZippedInObject$`countryIso2`
      self$`zipCode` <- FirstLastNameGeoZippedInObject$`zipCode`
    }
  )
)
