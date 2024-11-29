using Printf

function main()
    n = parseint()
    an = parseints()

    arr = []

    count = 1

    for a ∈ an
        if a == count
            push!(arr, a)
            count += 1
        end
    end

    if isempty(arr)
        println(-1)
    else
        println(n - length(arr))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
