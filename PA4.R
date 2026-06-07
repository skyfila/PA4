# PA4
# Kensea Jordan
# 6/7/2026
# Module 4 Visualizing Data



# Create an R script which reproduces steps 1-10 in "Section 7.3 - ADDING POINTS, LINES, AND TEXT TO
# AN EXISTING PLOT" of your textbook to generate the plot shown in Figure 7.6

x <- 1:20
y <- c(-1.49,3.37,2.59,-2.78,-3.94,-0.92,6.43,8.51,3.41,-8.23,
       -12.01,-6.58,2.87,14.12,9.63,-4.58,-14.78,-11.67,1.17,15.62)

# 1. create the base plot
plot <- plot(x,y,type="n",main="")

# 2. add the 'sweet spot' red dash marks
abline(h=c(-5,5), col="red", lty=2, lwd=2)

# 3. add vertical red dash marks, the 'extra sweet spot'
segments(x0=c(5,15),y0=c(-5,-5), x1=c(5, 15), y1=c(5,5), col="red", lty=3, lwd=2)

# 4. add points above the sweet spot zone in a dark magenta color
points(x[y>=5], y[y>=5], pch=4, col="darkmagenta", cex=2)

# 5. add points below the sweet spot in a dark green color
points(x[y<=-5], y[y<=-5], pch=3, col="darkgreen", cex=2)

# 6. add points within the sweet spot using a blue color
points(x[(x>=5&x<=15)&(y>-5&y<5)], y[(x>=5&x<=15)&(y>-5&y<5)], pch=19, col="blue")

# 7. points within the horizontal sweet spot but not in the vertical lines
points(x[(x<5|x>15)&(y>-5&y<5)], y[(x<5|x>15)&(y>-5&y<5)])

# 8. connect the dots with lines
lines(x,y,lty=4)

# 9. add an arrow to point to the sweet spot, I adjusted it bc it was too close to a point on the plot
arrows(x0=8, y0=12, x1=11, y1=2.5)

# 10. add a sweet spot label
text(x=8, y=15, labels="sweet spot")

# add the legend, I added the overall cex scaling of .7 to bring down the size
legend("bottomleft",
       legend=c("overall process", "sweet", "standard", "too big", "too small", "sweet y range", "sweet x range"),
       pch=c(NA,19,1,4,3,NA,NA), lty=c(4,NA,NA,NA,NA,2,3),
       col=c("black", "blue", "black", "darkmagenta", "darkgreen","red", "red"),
       lwd=c(1,NA,NA,NA,NA, 2,2), pt.cex=c(NA,1,1,1,1,NA,NA), cex=c(.7)
       )
