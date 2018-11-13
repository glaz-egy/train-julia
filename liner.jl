using LinearAlgebra
using Statistics

A = [28 18 204 15
    30 16 300 14
    28 17 320 19
    27 19 240 18
    31 17 440 16]
Amean = mean(A, dims=1)
Avar = var(A, dims=1)
Asum = sum(A, dims=1)

vA = vcat(Amean, Amean, Amean, Amean, Amean)
println("vA:$vA")
sqAvar = hcat(sqrt(Avar[1]), sqrt(Avar[2]), sqrt(Avar[3]), sqrt(Avar[4]))
sqAvar = vcat(sqAvar, sqAvar, sqAvar, sqAvar, sqAvar)
println("sqAvar:$sqAvar")
B = (A - vA) ./ sqAvar
println("B:$B")
C = cov(B, dims=1)
println("C:$C")
a1, a2, a3 = inv(C[2:4, 2:4])*C[2:4, 1:1]
println("$a1, $a2, $a3")