using Printf

function main()
    n, k = parseints()
    an = parseints()

    if n ≤ k
        println(1)
    else
        q, r = divrem(n - k, k - 1)

        if r == 0
            println(q + 1)
        else
            println(q + 2)
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
