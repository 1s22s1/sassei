using Printf

function main()
    n = parseint()
    abn = [parseints() for _ ∈ 1:n]

    result = 0

    for ab ∈ reverse(abn)
        while (ab[1] + result) % ab[2] ≠ 0
            result += 1
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
