## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  echo=TRUE,
  message=FALSE,
  warning=FALSE,
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(cartographr)
library(dplyr)
library(ggplot2)
library(sf)

## ----load crime locations, echo=T, message=F, eval = F------------------------
#  data("crime")
#  data("soho_boundary")

## ----convert to sf, eval = F--------------------------------------------------
#  crime |> head()

## ----define bbox, eval = F----------------------------------------------------
#  set_output_size("A4", orientation = "portrait")
#  osm <- get_osmdata(sf = soho_boundary)

## ----create  map, message=FALSE, warning=FALSE, eval = F----------------------
#  p <- osm |>
#    crop(soho_boundary) |>
#    plot_map(palette = "alphabet") +
#    theme_infomap_barlow() +
#  
#    # Add geom with crimes
#    geom_point(data = crime,
#               aes(x = longitude, y = latitude, shape = type), color="#A72424", size=2) +
#  
#    # Set labels
#    labs(title = "CRIME IN SOHO",
#         shape = "TYPE")

## ----plot the map, eval = F, fig.dim=c(5.81,8.3), fig.dpi = 72, out.width="100%"----
#  p

## ----save map, eval=F---------------------------------------------------------
#  save_map(plot = p, filename = "ny_crime.pdf")

## ----save map as png, include = F, eval = F-----------------------------------
#  ggsave("png/plot the map-1.png", plot = p, width = 210, height= 297, units = "mm", dpi = 96)

