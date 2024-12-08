using IterTools

for elem ∈ product(fill(0:1, 3)...)
    println(elem)
end
