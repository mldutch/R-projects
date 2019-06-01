hotdogs = read.csv( "http://datasets.flowingdata.com/hot-dog-contest-winners.csv" )
hotdogs$Dogs.eaten
fill_colors <-c()
for (i in 1:length(hotdogs$Country)) {
  if(hotdogs$Country[i] == "United States") {
    fill_colors <-c(fill_colors, "#821122")
  }else{
    fill_colors<-c(fill_colors, "#cccccc")
  }
}
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, xlab="Year",  ylab="Hot Dogs and Buns(HDB) eaten")

