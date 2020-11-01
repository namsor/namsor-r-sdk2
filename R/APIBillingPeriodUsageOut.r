# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 100 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.11
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech


#' APIBillingPeriodUsageOut Class
#'
#' @field apiKey 
#' @field subscriptionStarted 
#' @field periodStarted 
#' @field periodEnded 
#' @field stripeCurrentPeriodEnd 
#' @field stripeCurrentPeriodStart 
#' @field billingStatus 
#' @field usage 
#' @field softLimit 
#' @field hardLimit 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
APIBillingPeriodUsageOut <- R6::R6Class(
  'APIBillingPeriodUsageOut',
  public = list(
    `apiKey` = NULL,
    `subscriptionStarted` = NULL,
    `periodStarted` = NULL,
    `periodEnded` = NULL,
    `stripeCurrentPeriodEnd` = NULL,
    `stripeCurrentPeriodStart` = NULL,
    `billingStatus` = NULL,
    `usage` = NULL,
    `softLimit` = NULL,
    `hardLimit` = NULL,
    initialize = function(`apiKey`, `subscriptionStarted`, `periodStarted`, `periodEnded`, `stripeCurrentPeriodEnd`, `stripeCurrentPeriodStart`, `billingStatus`, `usage`, `softLimit`, `hardLimit`){
      if (!missing(`apiKey`)) {
        stopifnot(is.character(`apiKey`), length(`apiKey`) == 1)
        self$`apiKey` <- `apiKey`
      }
      if (!missing(`subscriptionStarted`)) {
        stopifnot(is.numeric(`subscriptionStarted`), length(`subscriptionStarted`) == 1)
        self$`subscriptionStarted` <- `subscriptionStarted`
      }
      if (!missing(`periodStarted`)) {
        stopifnot(is.numeric(`periodStarted`), length(`periodStarted`) == 1)
        self$`periodStarted` <- `periodStarted`
      }
      if (!missing(`periodEnded`)) {
        stopifnot(is.numeric(`periodEnded`), length(`periodEnded`) == 1)
        self$`periodEnded` <- `periodEnded`
      }
      if (!missing(`stripeCurrentPeriodEnd`)) {
        stopifnot(is.numeric(`stripeCurrentPeriodEnd`), length(`stripeCurrentPeriodEnd`) == 1)
        self$`stripeCurrentPeriodEnd` <- `stripeCurrentPeriodEnd`
      }
      if (!missing(`stripeCurrentPeriodStart`)) {
        stopifnot(is.numeric(`stripeCurrentPeriodStart`), length(`stripeCurrentPeriodStart`) == 1)
        self$`stripeCurrentPeriodStart` <- `stripeCurrentPeriodStart`
      }
      if (!missing(`billingStatus`)) {
        stopifnot(is.character(`billingStatus`), length(`billingStatus`) == 1)
        self$`billingStatus` <- `billingStatus`
      }
      if (!missing(`usage`)) {
        stopifnot(is.numeric(`usage`), length(`usage`) == 1)
        self$`usage` <- `usage`
      }
      if (!missing(`softLimit`)) {
        stopifnot(is.numeric(`softLimit`), length(`softLimit`) == 1)
        self$`softLimit` <- `softLimit`
      }
      if (!missing(`hardLimit`)) {
        stopifnot(is.numeric(`hardLimit`), length(`hardLimit`) == 1)
        self$`hardLimit` <- `hardLimit`
      }
    },
    toJSON = function() {
      APIBillingPeriodUsageOutObject <- list()
      if (!is.null(self$`apiKey`)) {
        APIBillingPeriodUsageOutObject[['apiKey']] <- self$`apiKey`
      }
      if (!is.null(self$`subscriptionStarted`)) {
        APIBillingPeriodUsageOutObject[['subscriptionStarted']] <- self$`subscriptionStarted`
      }
      if (!is.null(self$`periodStarted`)) {
        APIBillingPeriodUsageOutObject[['periodStarted']] <- self$`periodStarted`
      }
      if (!is.null(self$`periodEnded`)) {
        APIBillingPeriodUsageOutObject[['periodEnded']] <- self$`periodEnded`
      }
      if (!is.null(self$`stripeCurrentPeriodEnd`)) {
        APIBillingPeriodUsageOutObject[['stripeCurrentPeriodEnd']] <- self$`stripeCurrentPeriodEnd`
      }
      if (!is.null(self$`stripeCurrentPeriodStart`)) {
        APIBillingPeriodUsageOutObject[['stripeCurrentPeriodStart']] <- self$`stripeCurrentPeriodStart`
      }
      if (!is.null(self$`billingStatus`)) {
        APIBillingPeriodUsageOutObject[['billingStatus']] <- self$`billingStatus`
      }
      if (!is.null(self$`usage`)) {
        APIBillingPeriodUsageOutObject[['usage']] <- self$`usage`
      }
      if (!is.null(self$`softLimit`)) {
        APIBillingPeriodUsageOutObject[['softLimit']] <- self$`softLimit`
      }
      if (!is.null(self$`hardLimit`)) {
        APIBillingPeriodUsageOutObject[['hardLimit']] <- self$`hardLimit`
      }

      APIBillingPeriodUsageOutObject
    },
    fromJSON = function(APIBillingPeriodUsageOutJson) {
      APIBillingPeriodUsageOutObject <- jsonlite::fromJSON(APIBillingPeriodUsageOutJson)
      if (!is.null(APIBillingPeriodUsageOutObject$`apiKey`)) {
        self$`apiKey` <- APIBillingPeriodUsageOutObject$`apiKey`
      }
      if (!is.null(APIBillingPeriodUsageOutObject$`subscriptionStarted`)) {
        self$`subscriptionStarted` <- APIBillingPeriodUsageOutObject$`subscriptionStarted`
      }
      if (!is.null(APIBillingPeriodUsageOutObject$`periodStarted`)) {
        self$`periodStarted` <- APIBillingPeriodUsageOutObject$`periodStarted`
      }
      if (!is.null(APIBillingPeriodUsageOutObject$`periodEnded`)) {
        self$`periodEnded` <- APIBillingPeriodUsageOutObject$`periodEnded`
      }
      if (!is.null(APIBillingPeriodUsageOutObject$`stripeCurrentPeriodEnd`)) {
        self$`stripeCurrentPeriodEnd` <- APIBillingPeriodUsageOutObject$`stripeCurrentPeriodEnd`
      }
      if (!is.null(APIBillingPeriodUsageOutObject$`stripeCurrentPeriodStart`)) {
        self$`stripeCurrentPeriodStart` <- APIBillingPeriodUsageOutObject$`stripeCurrentPeriodStart`
      }
      if (!is.null(APIBillingPeriodUsageOutObject$`billingStatus`)) {
        self$`billingStatus` <- APIBillingPeriodUsageOutObject$`billingStatus`
      }
      if (!is.null(APIBillingPeriodUsageOutObject$`usage`)) {
        self$`usage` <- APIBillingPeriodUsageOutObject$`usage`
      }
      if (!is.null(APIBillingPeriodUsageOutObject$`softLimit`)) {
        self$`softLimit` <- APIBillingPeriodUsageOutObject$`softLimit`
      }
      if (!is.null(APIBillingPeriodUsageOutObject$`hardLimit`)) {
        self$`hardLimit` <- APIBillingPeriodUsageOutObject$`hardLimit`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "apiKey": %s,
           "subscriptionStarted": %d,
           "periodStarted": %d,
           "periodEnded": %d,
           "stripeCurrentPeriodEnd": %d,
           "stripeCurrentPeriodStart": %d,
           "billingStatus": %s,
           "usage": %d,
           "softLimit": %d,
           "hardLimit": %d
        }',
        self$`apiKey`,
        self$`subscriptionStarted`,
        self$`periodStarted`,
        self$`periodEnded`,
        self$`stripeCurrentPeriodEnd`,
        self$`stripeCurrentPeriodStart`,
        self$`billingStatus`,
        self$`usage`,
        self$`softLimit`,
        self$`hardLimit`
      )
    },
    fromJSONString = function(APIBillingPeriodUsageOutJson) {
      APIBillingPeriodUsageOutObject <- jsonlite::fromJSON(APIBillingPeriodUsageOutJson)
      self$`apiKey` <- APIBillingPeriodUsageOutObject$`apiKey`
      self$`subscriptionStarted` <- APIBillingPeriodUsageOutObject$`subscriptionStarted`
      self$`periodStarted` <- APIBillingPeriodUsageOutObject$`periodStarted`
      self$`periodEnded` <- APIBillingPeriodUsageOutObject$`periodEnded`
      self$`stripeCurrentPeriodEnd` <- APIBillingPeriodUsageOutObject$`stripeCurrentPeriodEnd`
      self$`stripeCurrentPeriodStart` <- APIBillingPeriodUsageOutObject$`stripeCurrentPeriodStart`
      self$`billingStatus` <- APIBillingPeriodUsageOutObject$`billingStatus`
      self$`usage` <- APIBillingPeriodUsageOutObject$`usage`
      self$`softLimit` <- APIBillingPeriodUsageOutObject$`softLimit`
      self$`hardLimit` <- APIBillingPeriodUsageOutObject$`hardLimit`
    }
  )
)
