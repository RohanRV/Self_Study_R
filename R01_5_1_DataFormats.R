# File:   DataFormats.R; Course: R: An Introduction (with RStudio)

# DATA OBJ = DATA TYPES + DATA STRUCTURES
# DATA TYPES:- numeric (int, single, double), char, logical, complex, raw
# DATA STRUCTURES:- vector, matrix, array, data frame, list


####################################################################################
# DATA TYPES #######################################################################
# Numeric
n1 <- 1.5; n1; typeof(n1)       # <- means gets; its array of 1 # thus [1] in o/p
n2 <- 15;  n2; typeof(n2)       # Double by default
n3 <- 1L;  n3; typeof(n3)       # Integer
pacman::p_load(float)
n4 <- fl(1.5); n4; typeof(n4)   # Single or float32, unlike 1.5f in Java or C++

# Character
c1 <- "c";                c1; typeof(c1)        # single & double quotes are same
c2 <- 'a string of text'; c2; typeof(c2)        # string is not a diff dtype in R

# Logical
l1 <- TRUE; l1; typeof(l1)
l2 <- F;    l2; typeof(l2)

# Complex
c3 <- 1+2i; c3; typeof(c3)                      # i = sqrt(-1)

# Raw
r1 <- raw(5);                   r1; typeof(r1)  # Raw bytes, not text
r2 <- as.raw(5);                r2; typeof(r2)
r3 <- as.raw(c(1, 2, 3, 4, 5)); r3; typeof(r3)
r4 <- utf8ToInt("abcd");        r4; typeof(r4)  # to ascii (Integer)
r5 <- charToRaw("abcd");        r5; typeof(r5)  # r4's ascii to hex


####################################################################################
# DATA STRUCTURES ##################################################################
# Vector (1D; any len; same dtype; cols not named)
v1 <- c(1, 2, 3, 4, 5); v1;   is.vector(v1)
v2 <- c("a", "b", "c"); v2;   is.vector(v2)
v3 <- c("a", T, F, F, T); v3; is.vector(v3)            # notice conversion of Tto"T"

# Matrix (2D; same len; same dtype; cols not named)
m1 <- matrix(c(T, T, F, F, T, F), nrow = 2);        m1 # notice col-wise filling
m2 <- matrix(c("a", 2, 3, 4), nrow = 2, byrow = T); m2 # notice conversion of 2to"2"
is.matrix(m1); is.matrix(m2)

# Array (3D+; same len; same dtype; cols not named)
a1 <- array(c( 1:24), c(4, 3, 2));                        a1 # data, dim (r,c,table)
a2 <- array(c("a", "b", "c", "d", "e", "f"), c(2, 3, 2)); a2 # dupes if insufficient
is.array(a1); is.array(a2)

# Data frame (2D; 2+ vert vect; same len; intrasame but interdiff dtype; cols named)
vNum  <- c(1, 2, 3); vChar <- c("a", "b", "c"); vLogi <- c(T, F, T) # same length
dfa   <- rbind(vNum, vChar, vLogi);                dfa # Row-wise Matrix
dfb   <- cbind(vNum, vChar, vLogi);                dfb # Col-wise Matrix
dfc   <- as.data.frame(cbind(vNum, vChar, vLogi)); dfc # DF with 3 dtype, cols named
dfd   <- data.frame(vNum, vChar, vLogi);           dfd # DF with 3 dtype, cols named
typeof(dfa); class(dfa); typeof(dfb); class(dfb)
typeof(dfc); class(dfc); typeof(dfd); class(dfd)
is.data.frame(dfa); is.data.frame(dfb); is.data.frame(dfc); is.data.frame(dfd)

# List (1D but can be nested, so nested = 2D+; any len; any data type)
o1 <- c(1, 2, 3); o2 <- c("a", "b", "c", "d"); o3 <- c(T, F, T, T, F)
l1 <- list(o1, o2, o3); l1; typeof(l1); class(l1)       # List of vectors
l2 <- list(o1, o2, o3, l1); l2; typeof(l2); class(l2)   # Lists within lists
is.list(l1); is.list(l2)


####################################################################################
# COERCING TYPES (changing data obj from one to another) ###########################
coerce1 <- c(1, "b", TRUE);                  typeof(coerce1) # broadest dtype
coerce2 <- 5;                                typeof(coerce2) # Double vector
coerce3 <- as.integer(5);                    typeof(coerce3) # COERCE double to int
coerce4 <- c("1", "2", "3");                 typeof(coerce4) # Char vector
coerce5 <- as.numeric(c("1", "2", "3"));     typeof(coerce5) # COERCE char to double
coerce6 <- matrix(1:9, nrow = 3);             class(coerce6) # Matrix
coerce7 <- data.frame(matrix(1:9, nrow = 3)); class(coerce7) # COERCE matrix to DF


# CLEAN UP #########################################################################
# Clear environment
rm(list = ls())
# Clear console
cat("\014")  # ctrl+L
# Clear mind :)