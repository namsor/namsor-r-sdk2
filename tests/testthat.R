library(testthat)
library(namsor)

httr::set_config(config(ssl_verifypeer = 0L))

test_check("namsor")
