using Printf

function main()
    n, m = parseints()
    an = parseints()
    bm = parseints()

    result = fill(-1, m)
    min_value = typemax(Int)

    for i ∈ 1:n
        if an[i] ≤ min_value
            for j ∈ 1:m
                if an[i] ≤ bm[j] && result[j] == -1
                    result[j] = i
                end
            end
        end
    end

    for elem ∈ result
        println(elem)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
