using Printf

function main()
    n = parseint()
    an = parseints()

    result = 0

    r = 2

    for l ∈ 1:n
        while r ≤ n && an[r-1] < an[r]
            r += 1
        end

        result += r - l

        @show l, r

        if r == l
            r += 1
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
