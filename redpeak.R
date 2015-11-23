# Draws the Red Peak flag and saves as png file

library(ggplot2)

red_peak <- data.frame(
	shapes = factor(rep(c(1,2,3), each = 3)),
	x = c(1,3,2,0,0,2,4,4,2),
	y = c(0,0,1,0,2,2,0,2,2),
	stringsAsFactors = FALSE)
cols = c("#901919", "#000000", "#192F88")

png(filename = "redpeak.png", width = 800, height = 400)

ggplot(red_peak, aes(x=x, y=y)) +
	geom_polygon(aes(fill=shapes, group=shapes)) +
	scale_fill_manual(values = cols) +
	theme(panel.grid.major = element_blank(),
	legend.position = "none",
	panel.grid.minor = element_blank(),
	panel.background = element_rect(fill = 'white'))

dev.off()
