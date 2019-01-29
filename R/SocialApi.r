# NamSor API v2
#
# NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 1000 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 
#
# OpenAPI spec version: 2.0.2-beta
# Contact: contact@namsor.com
# Generated by: https://openapi-generator.tech

#' @title Social operations
#' @description openapi.Social
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' phone_prefix [USES 11 UNITS] Infer the likely country and phone prefix, given a personal name and formatted / unformatted phone number.
#'
#'
#' phone_prefix_batch [USES 11 UNITS] Infer the likely country and phone prefix, of up to 1000 personal names, detecting automatically the local context given a name and formatted / unformatted phone number.
#'
#' }
#'
#' @export
SocialApi <- R6::R6Class(
  'SocialApi',
  public = list(
    userAgent = "OpenAPI-Generator/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    phone_prefix = function(first_name, last_name, phone_number, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/api2/json/phoneCode/{firstName}/{lastName}/{phoneNumber}"
      if (!missing(`first_name`)) {
        urlPath <- gsub(paste0("\\{", "firstName", "\\}"), `first_name`, urlPath)
      }

      if (!missing(`last_name`)) {
        urlPath <- gsub(paste0("\\{", "lastName", "\\}"), `last_name`, urlPath)
      }

      if (!missing(`phone_number`)) {
        urlPath <- gsub(paste0("\\{", "phoneNumber", "\\}"), `phone_number`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- FirstLastNamePhoneCodedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    phone_prefix_batch = function(batch_first_last_name_phone_number_in, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`batch_first_last_name_phone_number_in`)) {
        body <- `batch_first_last_name_phone_number_in`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/api2/json/phoneCodeBatch"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- BatchFirstLastNamePhoneCodedOut$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
