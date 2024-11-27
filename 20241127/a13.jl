using Printf

function main()
    n, k = parseints()
    an = parseints()

    result = 0

    j = 1
    for i ∈ 1:n-1
        while j < n && an[j+1] - an[i] ≤ k
            j += 1
        end

        result += j - i
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
