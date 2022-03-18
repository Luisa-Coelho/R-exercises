#### Creating Matrices
x = seq(5, 10)
y = seq(11, 16)
z = seq(17, 22)
#matrix(), rbind(), cbind()
m <- matrix(x, 3,2)
m


mr <- matrix(rbind(x,y,z), 6)
mr

r <- rbind(x, y, z)
r

c <- cbind(x, y, z)
c


mc <- matrix(cbind(x,y,z), 6)
mc

colnames(mc) <- c("a", "b", "c")
rownames(mc) <- c("how", "are", "you","my","friend", "?")
mc

###################################
## matplot
