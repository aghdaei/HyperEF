using Statistics
using SparseArrays
using Random
using LinearAlgebra

include("HyperEF.jl")
include("Functions.jl")


filename = "ibm01.hgr"
cd("../data/")
ar = ReadInp(filename)
cd("../src/")

## L: the number of coarsening levels, e.g. 1, 2, 3, 4, ...
L = 1

## R: Effective resistance threshold tor growing the clusters (0<R<=1)
R = 1

## Generates an output file that shows the cluster that each node belongs to it
HyperEF(ar, L, R)
