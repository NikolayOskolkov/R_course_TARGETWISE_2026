####################################################################################################
#######                                     Daniel Rivas                                     #######
####################################################################################################

# installing a package
# use the 'cluster' package
# install & load library
install.packages("cluster") # if successful, do it only once
library(cluster)

####################################################################################################

# check and prepare the data
# data exist in the workspace
print(iris)

# show features
colnames(iris)

# check the number of species
specs <- iris$Species                   # select last column
specsLevs <- levels(specs)              # select levels of variables (levels works only with Factor)
specsNum <- length(specsLevs)           # how many = length

# how many flowers per species?
table(iris$Species)

# try summary function
summary(iris)

# structure of the object iris$Species
str(iris$Species)

# choose two features for the analysis, e.g.
f1 <- "Sepal.Length"
f2 <- "Petal.Length"
features <- c(f1, f2)
selectedIris <- iris[,features]         # or just iris[features]

####################################################################################################

# perform k-means clustering
specsNum <- 10000
fitKmeans <- kmeans(selectedIris, specsNum, iter.max = 100)

# plot the result of k-means clustering
clusplot(selectedIris, fitKmeans$cluster, color = TRUE, shade = TRUE, labels = 0, lines = 0, main = "k-means clustering")

####################################################################################################

# perform hierarchical clustering
d <- dist(selectedIris) # estimate distance
fitHier <- hclust(d, method = "ward.D")
clusterCut <- cutree(fitHier, specsNum)

# plot result of hierarchical clustering
clusplot(selectedIris, clusterCut, color = TRUE, shade = TRUE, labels = 0, lines = 0, main = "hierarchical clustering")

# add dengrogram
dend <- as.dendrogram(fitHier)
nodeParams <- list(pch = c(NA, 18), cex = 0.5, col = "darkgray")
plot(dend, type = "rectangle", nodePar = nodeParams, leaflab = "none", main = "hierarchical clustering")
rect.hclust(fitHier, k = 3, border = "darkorange")

####################################################################################################

# compare k-means & hierarchical clustering

# calculate centroids for the hierarchical clustering
# use `aggregate` function
# read more about how it works using `?aggregate`
hierCentr <- aggregate(data.frame(clusterCut, selectedIris), by = list(clusterCut), FUN = mean)

# display both clustering methods on single plot
opar2 <- par(mfrow = c(1,2))

# k-means
plot(selectedIris, type = "n", main = "k-means clustering")
text(selectedIris, labels = iris$Species, col = c("orangered", "limegreen", "dodgerblue")[fitKmeans$cluster])
points(fitKmeans$centers[, features], col = "yellow", pch = 15, cex = 1.5)

# hierarchical
plot(selectedIris, type = "n", main = "hierarchical clustering")
text(selectedIris, labels = iris$Species, col = c("darkviolet", "darkorange", "seagreen4")[clusterCut])
points(hierCentr[, features], col = "yellow", pch = 15, cex = 1.5)
par(opar2)

####################################################################################################
#######                                         END                                          #######
####################################################################################################
