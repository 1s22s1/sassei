using Printf

function main()
    x, k, d = parseints()
    x = abs(x)

    if x > k * d
        println(x - k * d)

        return
    end

    q = x ÷ d

    if iseven(k - q)
        println(x - q * d)
    else
        println(abs(x - (q + 1) * d))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(BigInt, x)
parsestrings() = readline() |> split

main()
