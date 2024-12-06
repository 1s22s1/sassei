using Printf
using IterTools

function main()
    n = parseint()
    an = parseints()

    result = typemax(Int)

    for pattern ∈ IterTools.subsets(1:n-1)
        arr = split_array(an, pattern)
        arr = map(sub -> reduce(|, sub), arr)

        result = min(result, reduce(⊻, arr))
    end

    println(result)
end

"""
    split_array(array::Vector{Int}, indexes::Vector{Int})::Vector{Vector{Int}}

インデックスで指定した位置で配列を分割する。
"""
function split_array(array::Vector{Int}, indexes)::Vector{Vector{Int}}
    result = []

    if isempty(indexes)
        push!(result, array)

        return result
    end

    push!(result, array[begin:indexes[begin]])

    for i in 2:length(indexes)
        push!(result, array[indexes[i-1]+1:indexes[i]])
    end

    push!(result, array[indexes[end]+1:end])

    return result
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
