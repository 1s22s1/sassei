using Printf

function main()
    n = parseint()
    vn = parseints()

    sort!(vn)

    result = vn[begin]

    for i ∈ 2:n
        result = (result + vn[i]) / 2
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
