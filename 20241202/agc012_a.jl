using Printf

function main()
    n = parseint()
    an = parseints()

    result = 0

    sort!(an, rev = true)

    cur = 2
    for i ∈ 1:n
        result += an[cur]

        cur += 2
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
