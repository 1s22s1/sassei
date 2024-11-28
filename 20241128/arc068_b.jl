using Printf

function main()
    n = parseint()
    an = parseints()

    dict = tally(an)
    kind_number = dict |> keys |> collect |> unique |> length

    if iseven(kind_number)
        println(kind_number - 1)
    else
        println(kind_number)
    end
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
