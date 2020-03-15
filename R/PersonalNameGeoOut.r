# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.9
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' PersonalNameGeoOut Class
#'
#' @field id 
#' @field name 
#' @field score 
#' @field country 
#' @field countryAlt 
#' @field region 
#' @field topRegion 
#' @field subRegion 
#' @field countriesTop 
#' @field probabilityCalibrated 
#' @field probabilityAltCalibrated 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PersonalNameGeoOut <- R6::R6Class(
  'PersonalNameGeoOut',
  public = list(
    `id` = NULL,
    `name` = NULL,
    `score` = NULL,
    `country` = NULL,
    `countryAlt` = NULL,
    `region` = NULL,
    `topRegion` = NULL,
    `subRegion` = NULL,
    `countriesTop` = NULL,
    `probabilityCalibrated` = NULL,
    `probabilityAltCalibrated` = NULL,
    initialize = function(`id`, `name`, `score`, `country`, `countryAlt`, `region`, `topRegion`, `subRegion`, `countriesTop`, `probabilityCalibrated`, `probabilityAltCalibrated`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`score`)) {
        stopifnot(is.numeric(`score`), length(`score`) == 1)
        self$`score` <- `score`
      }
      if (!missing(`country`)) {
        stopifnot(is.character(`country`), length(`country`) == 1)
        self$`country` <- `country`
      }
      if (!missing(`countryAlt`)) {
        stopifnot(is.character(`countryAlt`), length(`countryAlt`) == 1)
        self$`countryAlt` <- `countryAlt`
      }
      if (!missing(`region`)) {
        stopifnot(is.character(`region`), length(`region`) == 1)
        self$`region` <- `region`
      }
      if (!missing(`topRegion`)) {
        stopifnot(is.character(`topRegion`), length(`topRegion`) == 1)
        self$`topRegion` <- `topRegion`
      }
      if (!missing(`subRegion`)) {
        stopifnot(is.character(`subRegion`), length(`subRegion`) == 1)
        self$`subRegion` <- `subRegion`
      }
      if (!missing(`countriesTop`)) {
        stopifnot(is.list(`countriesTop`), length(`countriesTop`) != 0)
        lapply(`countriesTop`, function(x) stopifnot(is.character(x)))
        self$`countriesTop` <- `countriesTop`
      }
      if (!missing(`probabilityCalibrated`)) {
        stopifnot(is.numeric(`probabilityCalibrated`), length(`probabilityCalibrated`) == 1)
        self$`probabilityCalibrated` <- `probabilityCalibrated`
      }
      if (!missing(`probabilityAltCalibrated`)) {
        stopifnot(is.numeric(`probabilityAltCalibrated`), length(`probabilityAltCalibrated`) == 1)
        self$`probabilityAltCalibrated` <- `probabilityAltCalibrated`
      }
    },
    toJSON = function() {
      PersonalNameGeoOutObject <- list()
      if (!is.null(self$`id`)) {
        PersonalNameGeoOutObject[['id']] <- self$`id`
      }
      if (!is.null(self$`name`)) {
        PersonalNameGeoOutObject[['name']] <- self$`name`
      }
      if (!is.null(self$`score`)) {
        PersonalNameGeoOutObject[['score']] <- self$`score`
      }
      if (!is.null(self$`country`)) {
        PersonalNameGeoOutObject[['country']] <- self$`country`
      }
      if (!is.null(self$`countryAlt`)) {
        PersonalNameGeoOutObject[['countryAlt']] <- self$`countryAlt`
      }
      if (!is.null(self$`region`)) {
        PersonalNameGeoOutObject[['region']] <- self$`region`
      }
      if (!is.null(self$`topRegion`)) {
        PersonalNameGeoOutObject[['topRegion']] <- self$`topRegion`
      }
      if (!is.null(self$`subRegion`)) {
        PersonalNameGeoOutObject[['subRegion']] <- self$`subRegion`
      }
      if (!is.null(self$`countriesTop`)) {
        PersonalNameGeoOutObject[['countriesTop']] <- self$`countriesTop`
      }
      if (!is.null(self$`probabilityCalibrated`)) {
        PersonalNameGeoOutObject[['probabilityCalibrated']] <- self$`probabilityCalibrated`
      }
      if (!is.null(self$`probabilityAltCalibrated`)) {
        PersonalNameGeoOutObject[['probabilityAltCalibrated']] <- self$`probabilityAltCalibrated`
      }

      PersonalNameGeoOutObject
    },
    fromJSON = function(PersonalNameGeoOutJson) {
      PersonalNameGeoOutObject <- jsonlite::fromJSON(PersonalNameGeoOutJson)
      if (!is.null(PersonalNameGeoOutObject$`id`)) {
        self$`id` <- PersonalNameGeoOutObject$`id`
      }
      if (!is.null(PersonalNameGeoOutObject$`name`)) {
        self$`name` <- PersonalNameGeoOutObject$`name`
      }
      if (!is.null(PersonalNameGeoOutObject$`score`)) {
        self$`score` <- PersonalNameGeoOutObject$`score`
      }
      if (!is.null(PersonalNameGeoOutObject$`country`)) {
        self$`country` <- PersonalNameGeoOutObject$`country`
      }
      if (!is.null(PersonalNameGeoOutObject$`countryAlt`)) {
        self$`countryAlt` <- PersonalNameGeoOutObject$`countryAlt`
      }
      if (!is.null(PersonalNameGeoOutObject$`region`)) {
        self$`region` <- PersonalNameGeoOutObject$`region`
      }
      if (!is.null(PersonalNameGeoOutObject$`topRegion`)) {
        self$`topRegion` <- PersonalNameGeoOutObject$`topRegion`
      }
      if (!is.null(PersonalNameGeoOutObject$`subRegion`)) {
        self$`subRegion` <- PersonalNameGeoOutObject$`subRegion`
      }
      if (!is.null(PersonalNameGeoOutObject$`countriesTop`)) {
        self$`countriesTop` <- PersonalNameGeoOutObject$`countriesTop`
      }
      if (!is.null(PersonalNameGeoOutObject$`probabilityCalibrated`)) {
        self$`probabilityCalibrated` <- PersonalNameGeoOutObject$`probabilityCalibrated`
      }
      if (!is.null(PersonalNameGeoOutObject$`probabilityAltCalibrated`)) {
        self$`probabilityAltCalibrated` <- PersonalNameGeoOutObject$`probabilityAltCalibrated`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "name": %s,
           "score": %d,
           "country": %s,
           "countryAlt": %s,
           "region": %s,
           "topRegion": %s,
           "subRegion": %s,
           "countriesTop": [%s],
           "probabilityCalibrated": %d,
           "probabilityAltCalibrated": %d
        }',
        self$`id`,
        self$`name`,
        self$`score`,
        self$`country`,
        self$`countryAlt`,
        self$`region`,
        self$`topRegion`,
        self$`subRegion`,
        lapply(self$`countriesTop`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`probabilityCalibrated`,
        self$`probabilityAltCalibrated`
      )
    },
    fromJSONString = function(PersonalNameGeoOutJson) {
      PersonalNameGeoOutObject <- jsonlite::fromJSON(PersonalNameGeoOutJson)
      self$`id` <- PersonalNameGeoOutObject$`id`
      self$`name` <- PersonalNameGeoOutObject$`name`
      self$`score` <- PersonalNameGeoOutObject$`score`
      self$`country` <- PersonalNameGeoOutObject$`country`
      self$`countryAlt` <- PersonalNameGeoOutObject$`countryAlt`
      self$`region` <- PersonalNameGeoOutObject$`region`
      self$`topRegion` <- PersonalNameGeoOutObject$`topRegion`
      self$`subRegion` <- PersonalNameGeoOutObject$`subRegion`
      self$`countriesTop` <- PersonalNameGeoOutObject$`countriesTop`
      self$`probabilityCalibrated` <- PersonalNameGeoOutObject$`probabilityCalibrated`
      self$`probabilityAltCalibrated` <- PersonalNameGeoOutObject$`probabilityAltCalibrated`
    }
  )
)
