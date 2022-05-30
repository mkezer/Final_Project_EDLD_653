# Reliability
get_reliability <- function(df, items, var_names){
  
  alphas <- psych::alpha(df[items], check.keys = TRUE)$total$raw_alpha %>% 
    round(., 2) %>% 
    suppressWarnings()
  
  omegas <- psych::omega(df[items], plot = FALSE, nfactors = 1)$omega.tot %>% 
    round(., 2) %>% 
    suppressWarnings() %>% 
    suppressMessages()
  
  data.frame(
    
    vars = var_names,
    Alpha = alphas,
    Omega = omegas
  )
  
}

# Subtract 8 for reverse coding
subtract_8 <- function(x) {8 - x}

# STANDARD ERROR
std <- function(x) sd(x)/sqrt(length(x))

# SUMMARY FUNCTION
get_desc <- list(
  
  N_Valid = function(var) {sum(complete.cases(var))},
  Mean = function(var) {round(mean(var, na.rm = TRUE), 2)},
  SD = function(var) {round(sd(var, na.rm = TRUE), 2)},
  Min = function(var) {round(min(var, na.rm = TRUE), 2)},
  Max = function(var) {round(max(var, na.rm = TRUE), 2)}
  
)

get_desc2 <- 
  function(column) {
    map_df(get_desc, ~.x(column))
  }

get_descriptives <- function(df) {
  map_df(df, get_desc2, .id = "column")
}

# SUMMARY FUNCTION by GROUP
group_means <- function(data, outcome, ...) {
  out <- enquo(outcome)
  
  data %>%
    group_by(...) %>%
    summarize(Mean = mean(!!out, na.rm = TRUE),
              SD = sd(!!out, na.rm = TRUE),
              Min = min(!!out, na.rm = TRUE),
              Max = max(!!out, na.rm = TRUE)
    )
}  

# KABLE STYLING
kable_style <- function(data, title){
  
  data <- as_tibble(data)
  
  knitr::kable(data, digits = 2, align = "c", caption = title) %>% 
    kableExtra::kable_styling(bootstrap_options = c("striped"),
                              full_width = FALSE) %>% 
    kableExtra::row_spec(0, background = "gray", color = "white")  
  
}

# BARPLOT THEME
bp_theme <- function(...) {
  theme_minimal(...) +
    theme(panel.grid.major.y = element_blank(),
          panel.grid.minor.x = element_blank(),
          panel.grid.major.x = element_line(color = "gray80"),
          plot.title.position = "plot")
}
