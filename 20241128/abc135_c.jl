using Printf

function main()
    n = parseint()
    an = parseints()
    bn = parseints()

    result = 0

    for i ∈ 1:n
        # 街にいるモンスターの数が勇者未満の数の場合
        if bn[i] ≥ an[i] + an[i+1]
            result += (an[i] + an[i + 1])

            an[i] = 0
            an[i + 1] = 0

        # 街にいるモンスターの数が勇者以上の数の場合
        else
            result += bn[i]

            if bn[i] ≥ an[i]
                an[i] = 0
                bn[i] -= an[i]
            else
                bn[i] = 0
                an[i] -= bn[i]
            end

            if bn[i] ≥ an[i+1]
                an[i+1] = 0
                bn[i] -= an[i]
            else
                bn[i] = 0
                an[i+1] -= bn[i]
            end
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
