# MATPMDB Practical 1 Page 2 -------------------------

if (! "igraph" %in% installed.packages()) install.packages("igraph")
par(oma=c(0,0,0,0), mar = c(0,0,0,0))

library(igraph)

# MATPMDB Practical 1 Page 3 -------------------------

getwd()
# change this to your own file directory
setwd("C:/Users/meno3/OneDrive - University of Stirling/Teaching/25_26/Autumn/MATPMDB/Practicals/Practical 1")

dat = read.csv(file.choose(),
               header = T,
               row.names = 1,
               check.names = F)

# MATPMDB Practical 1 Page 4 -------------------------

g = graph_from_adjacency_matrix(as.matrix(dat),  # UPDATE!!!!!!!!!!!!!!!
                           mode = "undirected",
                           weighted = NULL)
summary(g)

# MATPMDB Practical 1 Page 5 -------------------------

plot.igraph(g)

plot.igraph(g,layout=layout.random)

plot.igraph(g,layout=layout.circle)

plot.igraph(g,layout=layout.circle,
            vertex.label=V(g)$name,vertex.size=30,
            vertex.label.color="red",vertex.label.font=2,
            vertex.color="green",edge.color="black")

# MATPMDB Practical 1 Page 6 -------------------------

dat1 = read.csv(file.choose(),
                header = T,
                row.names = 1,
                check.names = F)

g1 = graph_from_adjacency_matrix(as.matrix(dat1),  # UPDATE!!!!!!!!!!!!!!!
                           mode = "undirected",
                           weighted = NULL)
summary(g1)

plot.igraph(g1)

plot.igraph(g1,layout=layout.random)

plot.igraph(g1,layout=layout.circle)

plot.igraph(g1,layout=layout.circle,
            vertex.label=V(g1)$name,vertex.size=30,
            vertex.label.color="red",vertex.label.font=2,
            vertex.color="green",edge.color="black")

# MATPMDB Practical 1 Page 7 -------------------------

datEL=read.csv(file.choose(),header=TRUE)
el=as.matrix(datEL)
el[,1]=as.character(el[,1])
el[,2]=as.character(el[,2])
g2=graph.edgelist(el,directed=FALSE)
plot.igraph(g2)


# Exercise 3 ------

datEL1=read.csv(file.choose(),header=TRUE)
el=as.matrix(datEL1)
el[,1]=as.character(el[,1])
el[,2]=as.character(el[,2])
g3=graph.edgelist(el,directed=FALSE)

plot(g3,
  layout = layout_with_kk,
  vertex.size = 25,
  vertex.color = "skyblue",
  vertex.label.cex = 0.9,
  edge.arrow.size = 0.5)

