using Printf

function main()
    n = parseint()
    an = parseints()

    dict = tally(an)
    arr = sort(collect(values(dict)), rev=true)

    result = arr[begin] + arr[begin+1]

    println(result)
end

function tally(array::Union{Vector{Int},String})::Dict
    dict = Dict()

    for e ∈ array
        dict[e] = get(dict, e, 0) + 1
    end

    return dict
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
