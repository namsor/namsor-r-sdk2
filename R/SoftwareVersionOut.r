# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.8
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' SoftwareVersionOut Class
#'
#' @field softwareNameAndVersion 
#' @field softwareVersion 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SoftwareVersionOut <- R6::R6Class(
  'SoftwareVersionOut',
  public = list(
    `softwareNameAndVersion` = NULL,
    `softwareVersion` = NULL,
    initialize = function(`softwareNameAndVersion`, `softwareVersion`){
      if (!missing(`softwareNameAndVersion`)) {
        stopifnot(is.character(`softwareNameAndVersion`), length(`softwareNameAndVersion`) == 1)
        self$`softwareNameAndVersion` <- `softwareNameAndVersion`
      }
      if (!missing(`softwareVersion`)) {
        stopifnot(is.list(`softwareVersion`), length(`softwareVersion`) != 0)
        lapply(`softwareVersion`, function(x) stopifnot(is.character(x)))
        self$`softwareVersion` <- `softwareVersion`
      }
    },
    toJSON = function() {
      SoftwareVersionOutObject <- list()
      if (!is.null(self$`softwareNameAndVersion`)) {
        SoftwareVersionOutObject[['softwareNameAndVersion']] <- self$`softwareNameAndVersion`
      }
      if (!is.null(self$`softwareVersion`)) {
        SoftwareVersionOutObject[['softwareVersion']] <- self$`softwareVersion`
      }

      SoftwareVersionOutObject
    },
    fromJSON = function(SoftwareVersionOutJson) {
      SoftwareVersionOutObject <- jsonlite::fromJSON(SoftwareVersionOutJson)
      if (!is.null(SoftwareVersionOutObject$`softwareNameAndVersion`)) {
        self$`softwareNameAndVersion` <- SoftwareVersionOutObject$`softwareNameAndVersion`
      }
      if (!is.null(SoftwareVersionOutObject$`softwareVersion`)) {
        self$`softwareVersion` <- SoftwareVersionOutObject$`softwareVersion`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "softwareNameAndVersion": %s,
           "softwareVersion": [%s]
        }',
        self$`softwareNameAndVersion`,
        lapply(self$`softwareVersion`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(SoftwareVersionOutJson) {
      SoftwareVersionOutObject <- jsonlite::fromJSON(SoftwareVersionOutJson)
      self$`softwareNameAndVersion` <- SoftwareVersionOutObject$`softwareNameAndVersion`
      self$`softwareVersion` <- SoftwareVersionOutObject$`softwareVersion`
    }
  )
)
