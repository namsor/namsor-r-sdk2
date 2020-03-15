# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.9
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' RomanizedNameOut Class
#'
#' @field id 
#' @field latinName 
#' @field originalName 
#' @field sourceLanguage 
#' @field targetLanguage 
#' @field sourceScript 
#' @field targetScript 
#' @field score 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RomanizedNameOut <- R6::R6Class(
  'RomanizedNameOut',
  public = list(
    `id` = NULL,
    `latinName` = NULL,
    `originalName` = NULL,
    `sourceLanguage` = NULL,
    `targetLanguage` = NULL,
    `sourceScript` = NULL,
    `targetScript` = NULL,
    `score` = NULL,
    initialize = function(`id`, `latinName`, `originalName`, `sourceLanguage`, `targetLanguage`, `sourceScript`, `targetScript`, `score`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`latinName`)) {
        stopifnot(is.character(`latinName`), length(`latinName`) == 1)
        self$`latinName` <- `latinName`
      }
      if (!missing(`originalName`)) {
        stopifnot(is.character(`originalName`), length(`originalName`) == 1)
        self$`originalName` <- `originalName`
      }
      if (!missing(`sourceLanguage`)) {
        stopifnot(is.character(`sourceLanguage`), length(`sourceLanguage`) == 1)
        self$`sourceLanguage` <- `sourceLanguage`
      }
      if (!missing(`targetLanguage`)) {
        stopifnot(is.character(`targetLanguage`), length(`targetLanguage`) == 1)
        self$`targetLanguage` <- `targetLanguage`
      }
      if (!missing(`sourceScript`)) {
        stopifnot(is.character(`sourceScript`), length(`sourceScript`) == 1)
        self$`sourceScript` <- `sourceScript`
      }
      if (!missing(`targetScript`)) {
        stopifnot(is.character(`targetScript`), length(`targetScript`) == 1)
        self$`targetScript` <- `targetScript`
      }
      if (!missing(`score`)) {
        stopifnot(is.numeric(`score`), length(`score`) == 1)
        self$`score` <- `score`
      }
    },
    toJSON = function() {
      RomanizedNameOutObject <- list()
      if (!is.null(self$`id`)) {
        RomanizedNameOutObject[['id']] <- self$`id`
      }
      if (!is.null(self$`latinName`)) {
        RomanizedNameOutObject[['latinName']] <- self$`latinName`
      }
      if (!is.null(self$`originalName`)) {
        RomanizedNameOutObject[['originalName']] <- self$`originalName`
      }
      if (!is.null(self$`sourceLanguage`)) {
        RomanizedNameOutObject[['sourceLanguage']] <- self$`sourceLanguage`
      }
      if (!is.null(self$`targetLanguage`)) {
        RomanizedNameOutObject[['targetLanguage']] <- self$`targetLanguage`
      }
      if (!is.null(self$`sourceScript`)) {
        RomanizedNameOutObject[['sourceScript']] <- self$`sourceScript`
      }
      if (!is.null(self$`targetScript`)) {
        RomanizedNameOutObject[['targetScript']] <- self$`targetScript`
      }
      if (!is.null(self$`score`)) {
        RomanizedNameOutObject[['score']] <- self$`score`
      }

      RomanizedNameOutObject
    },
    fromJSON = function(RomanizedNameOutJson) {
      RomanizedNameOutObject <- jsonlite::fromJSON(RomanizedNameOutJson)
      if (!is.null(RomanizedNameOutObject$`id`)) {
        self$`id` <- RomanizedNameOutObject$`id`
      }
      if (!is.null(RomanizedNameOutObject$`latinName`)) {
        self$`latinName` <- RomanizedNameOutObject$`latinName`
      }
      if (!is.null(RomanizedNameOutObject$`originalName`)) {
        self$`originalName` <- RomanizedNameOutObject$`originalName`
      }
      if (!is.null(RomanizedNameOutObject$`sourceLanguage`)) {
        self$`sourceLanguage` <- RomanizedNameOutObject$`sourceLanguage`
      }
      if (!is.null(RomanizedNameOutObject$`targetLanguage`)) {
        self$`targetLanguage` <- RomanizedNameOutObject$`targetLanguage`
      }
      if (!is.null(RomanizedNameOutObject$`sourceScript`)) {
        self$`sourceScript` <- RomanizedNameOutObject$`sourceScript`
      }
      if (!is.null(RomanizedNameOutObject$`targetScript`)) {
        self$`targetScript` <- RomanizedNameOutObject$`targetScript`
      }
      if (!is.null(RomanizedNameOutObject$`score`)) {
        self$`score` <- RomanizedNameOutObject$`score`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "latinName": %s,
           "originalName": %s,
           "sourceLanguage": %s,
           "targetLanguage": %s,
           "sourceScript": %s,
           "targetScript": %s,
           "score": %d
        }',
        self$`id`,
        self$`latinName`,
        self$`originalName`,
        self$`sourceLanguage`,
        self$`targetLanguage`,
        self$`sourceScript`,
        self$`targetScript`,
        self$`score`
      )
    },
    fromJSONString = function(RomanizedNameOutJson) {
      RomanizedNameOutObject <- jsonlite::fromJSON(RomanizedNameOutJson)
      self$`id` <- RomanizedNameOutObject$`id`
      self$`latinName` <- RomanizedNameOutObject$`latinName`
      self$`originalName` <- RomanizedNameOutObject$`originalName`
      self$`sourceLanguage` <- RomanizedNameOutObject$`sourceLanguage`
      self$`targetLanguage` <- RomanizedNameOutObject$`targetLanguage`
      self$`sourceScript` <- RomanizedNameOutObject$`sourceScript`
      self$`targetScript` <- RomanizedNameOutObject$`targetScript`
      self$`score` <- RomanizedNameOutObject$`score`
    }
  )
)
