# Load packages
library(tidyverse)
library(httr2)
library(janitor)
library(lubridate)
library(jsonlite)

# Source your Census key
source("_census-key.R")

# Step 2: Download Census population data
census_url <- "https://api.census.gov/data/2021/pep/population"

population_response <- request(census_url) |>
  req_url_query(
    get = "POP_2020,POP_2021,NAME",
    "for" = "state:*",
    key = census_key
  ) |>
  req_perform()

# Step 3: Check the response
population_response |> resp_status()       # should be 200
population_response |> resp_content_type() # should be "application/json"

# Step 3: Extract JSON content
population_raw <- population_response |> resp_body_json()

# Step 3: Tidy population data
population_list <- lapply(population_raw, function(x) {
  data.frame(
    state_name = x[["NAME"]],
    state = x[["state"]],
    POP_2020 = x[["POP_2020"]],
    POP_2021 = x[["POP_2021"]],
    stringsAsFactors = FALSE
  )
})

population_df <- do.call(rbind, population_list)

population <- population_df |>
  pivot_longer(
    cols = matches("POP_\\d{4}", ignore.case = TRUE),
    names_to = "year",
    values_to = "population"
  ) |>
  mutate(
    year = as.numeric(sub("POP_", "", toupper(year))),
    population = as.numeric(population),
    # Handle DC and PR codes
    state = ifelse(state == "11", "DC", state),
    state = ifelse(state == "72", "PR", state)
  ) |>
  select(state_name, state, year, population)

# Quick check
head(population)
