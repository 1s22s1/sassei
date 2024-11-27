using Printf

function main()
    a, b, c = parseints()
    arr = [a, b, c]

    result = 0

    max_value = max(a, b, c)
    rs = []

    for value ∈ arr
        result += (max_value - value) ÷ 2
        push!(rs, (max_value - value) % 2)
    end

    sort!(rs)

    if rs == [0, 1, 1]
        result += 1
    end

    if rs == [0, 0, 1]
        result += 2
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
