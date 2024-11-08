## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  results = FALSE,
  message = FALSE,
  warning = FALSE,
  fig.align = "center",
  fig.width = 5,
  fig.height = 2.6,
  dpi = 300
)

## ----eval=FALSE---------------------------------------------------------------
#  install.packages("tidyverse")
#  install.packages("devtools")
#  devtools::install_github("jbengler/tidyplots")

## ----message=TRUE, results='markup'-------------------------------------------
library(tidyplots)
study

## ----eval=FALSE---------------------------------------------------------------
#  library(tidyplots)

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score)

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score) %>% 
  add_data_points()

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score) %>% 
  add_data_points() %>% 
  add_mean_bar(alpha = 0.4)

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score) %>% 
  add_data_points() %>% 
  add_mean_dash() %>% 
  add_sem_errorbar()

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = group, y = score, color = dose) %>% 
  add_data_points() %>% 
  add_mean_dash() %>% 
  add_sem_errorbar()

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = group, y = score, color = dose) %>% 
  add_data_points() %>% 
  add_mean_dash() %>% 
  add_sem_errorbar() %>% 
  remove_legend_title() %>% 
  remove_y_axis()

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score, color = treatment) %>% 
  add_data_points() %>% 
  add_mean_bar(alpha = 0.4) %>% 
  add_sem_errorbar()

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score, color = treatment) %>% 
  add_data_points_beeswarm(shape = 1) %>%
  add_mean_bar(alpha = 0.4) %>% 
  add_sem_errorbar() %>% 
  adjust_size(width = 20, height = 20)

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score, color = treatment) %>% 
  add_data_points() %>% 
  add_mean_bar(alpha = 0.4) %>% 
  add_sem_errorbar() %>% 
  adjust_title("This is my fantastic plot title") %>%
  adjust_x_axis_title("Treatment group") %>%
  adjust_y_axis_title("Disease score") %>%
  adjust_legend_title("") %>%
  adjust_caption("Here goes the caption")

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score, color = treatment) %>% 
  add_data_points() %>% 
  add_mean_bar(alpha = 0.4) %>% 
  add_sem_errorbar() %>% 
  adjust_colors(new_colors = c("#644296","#F08533","#3B78B0", "#D1352C"))

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score, color = treatment) %>% 
  add_data_points() %>% 
  add_mean_bar(alpha = 0.4) %>% 
  add_sem_errorbar() %>% 
  adjust_colors(new_colors = colors_discrete_seaside)

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score, color = treatment) %>% 
  add_data_points() %>% 
  add_mean_bar(alpha = 0.4) %>% 
  add_sem_errorbar() %>% 
  rename_x_axis_labels(new_names = c("A" = "This",
                                     "B" = "is",
                                     "C" = "totally",
                                     "D" = "new"))

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score, color = treatment) %>% 
  add_data_points() %>% 
  add_mean_bar(alpha = 0.4) %>% 
  add_sem_errorbar() %>% 
  reorder_x_axis_labels("D", "C")

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score, color = treatment) %>% 
  add_data_points() %>% 
  add_mean_bar(alpha = 0.4) %>% 
  add_sem_errorbar() %>% 
  sort_x_axis_labels()

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score, color = treatment) %>% 
  add_data_points() %>% 
  add_mean_bar(alpha = 0.4) %>% 
  add_sem_errorbar() %>% 
  reverse_x_axis_labels()

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score, color = treatment) %>% 
  add_data_points() %>% 
  add_sem_errorbar() %>% 
  add_mean_dash() %>% 
  theme_tidyplot()

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score, color = treatment) %>% 
  add_data_points() %>% 
  add_sem_errorbar() %>% 
  add_mean_dash() %>% 
  theme_ggplot2()

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = treatment, y = score, color = treatment) %>% 
  add_data_points() %>% 
  add_sem_errorbar() %>% 
  add_mean_dash() %>% 
  theme_minimal_y() %>% 
  remove_x_axis_line()

## -----------------------------------------------------------------------------
study %>% 
  tidyplot(x = group, y = score, color = group) %>% 
  add_data_points() %>% 
  add_sem_errorbar() %>% 
  add_mean_dash() %>% 
  split_plot(by = dose)

## ----eval=FALSE---------------------------------------------------------------
#  study %>%
#    tidyplot(x = group, y = score, color = group) %>%
#    add_data_points() %>%
#    add_sem_errorbar() %>%
#    add_mean_dash() %>%
#    save_plot("my_plot.pdf")

