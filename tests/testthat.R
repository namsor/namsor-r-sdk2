library(testthat)
library(namsor)

httr::set_config(httr::config(ssl_verifypeer = 0L))

if (Sys.getenv("API_KEY") == '') {
  warnings("The environment variable `API_KEY` not setup properly. Tests Skipped")
} else {
  test_check("namsor")
}
