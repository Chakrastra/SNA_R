# Social network analysis

install.packages("igraph")
library(igraph)

g<-graph(c(1,2))
plot(g) #example of plotting graph
plot(g,
     vertex.color="green",
     vertex.size=40,
     edge.color="red"
)
g<-graph(c(1,2,2,3,3,4,4,1,1,3,4,2),
         directed = F,
         n=10)
plot(g,
     vertex.color="green",
     edge.color="red")
g[] #this give sparse matrix of graph

g1<- graph(c("Amy","Ram","Ram","Li","Li","Amy",
             "Amy","Li","Kate","Li"))
plot(g1,
     vertex.color="green",
     edge.color="red")
g1
