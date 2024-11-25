using Printf

function main()
    n, k = parseints()
    an = parseints()

    result = 0
    r = 1

    for l ∈ 1:n
        while r ≤ n && an[r] - an[l] ≤ k
            r += 1
        end

        result += r - l - 1
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
