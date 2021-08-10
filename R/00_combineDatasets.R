library(tidyverse)

results_stableIsotopes <- read.csv( file.path("data_raw", "results_stableIsotopes.csv"))

geographic_metadata <- read.csv (file.path("data_raw", "geographicMetadata.csv"))

allResults <- dplyr::full_join(
  results_stableIsotopes, geographic_metadata,
  by = c("SAMPLE_ID", "OurLabID")
  )
write.csv(allResults, file.path("SI2_Updated.csv"))
