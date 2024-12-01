using Printf

function main()
    n, k = parseints()
    abn = [parseints() for _ ∈ 1:n]

    sort!(abn, by= x-> x[1] - x[2], rev=true)

    result = 0
    i = 1

    @show abn

    while k ≥ 0
        if k ≤ 1
             result += abn[i][2]

             k -= 1
        else
            # Solve all
            if (abn[i][1] - abn[i][2]) ≥ abn[i][2]
                result += abn[i][1]

                k -= 2
            # Solve part
            else
                result += abn[i][2]

                k -= 1
            end
        end

        i += 1
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
