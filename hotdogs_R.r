hotdogs <-
    read.csv( "http://datasets.flowingdata.com/hot-dog-contest-winners.csv",sep=",",header=TRUE" )

hotdogs$Dogs.eaten
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col="red", border=NA, xlab="Year",  ylab="Hot Dogs and Buns(HDB) eaten")

fill_colors <-c()
for (i in 1:lenght(hotdogs$Country)) {
    if(hotdogs$Country[i] == "United States") {
        fill_colors <-c(fill_colors, "#821122")
    }else{
        fill_colors<-c(fill_colors, "#cccccc")
    }
}