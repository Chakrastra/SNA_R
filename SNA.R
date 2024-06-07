# Social network analysis

install.packages("igraph")
library(igraph)


# working of graphs in R
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

g1<- graph(c("Soham","Ram","Ram","Abhi","Abhi","Soham",
             "Soham","Abhi","Vivek","Abhi"))
plot(g1,
     vertex.size = 30,            # Size of the nodes
     vertex.label.cex = 0.8,      # Size of the label text
     vertex.label.dist =0,       # Distance of the label from the node
     vertex.label.color = "blue", # Color of the label
     edge.arrow.size = 0.5,       # Size of the arrow heads
     edge.width = 2,              # Width of the edges
     edge.color = "red",          # Color of the edges
     layout = layout.auto)        # Automatic layout of the graph
g1

#Network measures
degree(g1)
degree(g1,mode = "all")
degree(g1,mode = "in")
degree(g1,mode = "out")

diameter(g1,directed = F,weights = NA)

edge_density(g1,loops = FALSE)
ecount(g1)/(vcount(g1)*(vcount(g1)-1))

reciprocity(g1)
closeness(g1,mode = 'all',weights = NA)
betweenness(g1,directed = T,weights = NA)

edge_betweenness(g1,directed = T,weights = NA)

#Reading Data file

data<- read.csv(file.choose(), header = T)
View(data)

x<-data.frame(data$first,data$second)

#Creating Network

net<-graph.data.frame(x,directed = T)
V(net) # vertices in a network
E(net) # Edges in the network

V(net)$user<-V(net)$name #labels
V(net)$connections<-degree(net) #degree
V(net)$connections
V(net)$user

#Histogram of node degree (also we can say user connections)

hist(V(net)$connections,
     col = 'green',
     main = 'Histogram of Node Degree',
     ylab = 'Users',                #Frequency
     xlab = 'Connections of users') #Degree of vertices

#Network diagram
set.seed(222)
plot(net,
     vertex.color="green",
     vertex.size = 20,            # Size of the nodes
     vertex.label.cex = 0.8,      # Size of the label text
     edge.arrow.size = 0.1,       # Size of the arrow heads
)


## we can use any layouts from the above they all are slightly different 
#whichever shows good layout of network use that then 





