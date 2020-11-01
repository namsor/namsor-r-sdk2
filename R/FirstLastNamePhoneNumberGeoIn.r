# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.11
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' FirstLastNamePhoneNumberGeoIn Class
#'
#' @field id 
#' @field firstName 
#' @field lastName 
#' @field phoneNumber 
#' @field FirstLastNameOriginedOut 
#' @field countryIso2 
#' @field countryIso2Alt 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FirstLastNamePhoneNumberGeoIn <- R6::R6Class(
  'FirstLastNamePhoneNumberGeoIn',
  public = list(
    `id` = NULL,
    `firstName` = NULL,
    `lastName` = NULL,
    `phoneNumber` = NULL,
    `FirstLastNameOriginedOut` = NULL,
    `countryIso2` = NULL,
    `countryIso2Alt` = NULL,
    initialize = function(`id`, `firstName`, `lastName`, `phoneNumber`, `FirstLastNameOriginedOut`, `countryIso2`, `countryIso2Alt`){
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
      if (!missing(`phoneNumber`)) {
        stopifnot(is.character(`phoneNumber`), length(`phoneNumber`) == 1)
        self$`phoneNumber` <- `phoneNumber`
      }
      if (!missing(`FirstLastNameOriginedOut`)) {
        stopifnot(R6::is.R6(`FirstLastNameOriginedOut`))
        self$`FirstLastNameOriginedOut` <- `FirstLastNameOriginedOut`
      }
      if (!missing(`countryIso2`)) {
        stopifnot(is.character(`countryIso2`), length(`countryIso2`) == 1)
        self$`countryIso2` <- `countryIso2`
      }
      if (!missing(`countryIso2Alt`)) {
        stopifnot(is.character(`countryIso2Alt`), length(`countryIso2Alt`) == 1)
        self$`countryIso2Alt` <- `countryIso2Alt`
      }
    },
    toJSON = function() {
      FirstLastNamePhoneNumberGeoInObject <- list()
      if (!is.null(self$`id`)) {
        FirstLastNamePhoneNumberGeoInObject[['id']] <- self$`id`
      }
      if (!is.null(self$`firstName`)) {
        FirstLastNamePhoneNumberGeoInObject[['firstName']] <- self$`firstName`
      }
      if (!is.null(self$`lastName`)) {
        FirstLastNamePhoneNumberGeoInObject[['lastName']] <- self$`lastName`
      }
      if (!is.null(self$`phoneNumber`)) {
        FirstLastNamePhoneNumberGeoInObject[['phoneNumber']] <- self$`phoneNumber`
      }
      if (!is.null(self$`FirstLastNameOriginedOut`)) {
        FirstLastNamePhoneNumberGeoInObject[['FirstLastNameOriginedOut']] <- self$`FirstLastNameOriginedOut`$toJSON()
      }
      if (!is.null(self$`countryIso2`)) {
        FirstLastNamePhoneNumberGeoInObject[['countryIso2']] <- self$`countryIso2`
      }
      if (!is.null(self$`countryIso2Alt`)) {
        FirstLastNamePhoneNumberGeoInObject[['countryIso2Alt']] <- self$`countryIso2Alt`
      }

      FirstLastNamePhoneNumberGeoInObject
    },
    fromJSON = function(FirstLastNamePhoneNumberGeoInJson) {
      FirstLastNamePhoneNumberGeoInObject <- jsonlite::fromJSON(FirstLastNamePhoneNumberGeoInJson)
      if (!is.null(FirstLastNamePhoneNumberGeoInObject$`id`)) {
        self$`id` <- FirstLastNamePhoneNumberGeoInObject$`id`
      }
      if (!is.null(FirstLastNamePhoneNumberGeoInObject$`firstName`)) {
        self$`firstName` <- FirstLastNamePhoneNumberGeoInObject$`firstName`
      }
      if (!is.null(FirstLastNamePhoneNumberGeoInObject$`lastName`)) {
        self$`lastName` <- FirstLastNamePhoneNumberGeoInObject$`lastName`
      }
      if (!is.null(FirstLastNamePhoneNumberGeoInObject$`phoneNumber`)) {
        self$`phoneNumber` <- FirstLastNamePhoneNumberGeoInObject$`phoneNumber`
      }
      if (!is.null(FirstLastNamePhoneNumberGeoInObject$`FirstLastNameOriginedOut`)) {
        FirstLastNameOriginedOutObject <- FirstLastNameOriginedOut$new()
        FirstLastNameOriginedOutObject$fromJSON(jsonlite::toJSON(FirstLastNamePhoneNumberGeoInObject$FirstLastNameOriginedOut, auto_unbox = TRUE))
        self$`FirstLastNameOriginedOut` <- FirstLastNameOriginedOutObject
      }
      if (!is.null(FirstLastNamePhoneNumberGeoInObject$`countryIso2`)) {
        self$`countryIso2` <- FirstLastNamePhoneNumberGeoInObject$`countryIso2`
      }
      if (!is.null(FirstLastNamePhoneNumberGeoInObject$`countryIso2Alt`)) {
        self$`countryIso2Alt` <- FirstLastNamePhoneNumberGeoInObject$`countryIso2Alt`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "firstName": %s,
           "lastName": %s,
           "phoneNumber": %s,
           "FirstLastNameOriginedOut": %s,
           "countryIso2": %s,
           "countryIso2Alt": %s
        }',
        self$`id`,
        self$`firstName`,
        self$`lastName`,
        self$`phoneNumber`,
        self$`FirstLastNameOriginedOut`$toJSON(),
        self$`countryIso2`,
        self$`countryIso2Alt`
      )
    },
    fromJSONString = function(FirstLastNamePhoneNumberGeoInJson) {
      FirstLastNamePhoneNumberGeoInObject <- jsonlite::fromJSON(FirstLastNamePhoneNumberGeoInJson)
      self$`id` <- FirstLastNamePhoneNumberGeoInObject$`id`
      self$`firstName` <- FirstLastNamePhoneNumberGeoInObject$`firstName`
      self$`lastName` <- FirstLastNamePhoneNumberGeoInObject$`lastName`
      self$`phoneNumber` <- FirstLastNamePhoneNumberGeoInObject$`phoneNumber`
      FirstLastNameOriginedOutObject <- FirstLastNameOriginedOut$new()
      self$`FirstLastNameOriginedOut` <- FirstLastNameOriginedOutObject$fromJSON(jsonlite::toJSON(FirstLastNamePhoneNumberGeoInObject$FirstLastNameOriginedOut, auto_unbox = TRUE))
      self$`countryIso2` <- FirstLastNamePhoneNumberGeoInObject$`countryIso2`
      self$`countryIso2Alt` <- FirstLastNamePhoneNumberGeoInObject$`countryIso2Alt`
    }
  )
)
