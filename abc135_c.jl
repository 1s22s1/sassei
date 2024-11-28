using Printf

function main()
    n = parseint()
    an = parseints()
    bn = parseints()

    result = 0

    for i ∈ 1:n
        monster = min(an[i], bn[i])

        result += monster
        an[i] -= monster
        bn[i] -= monster

        monster = min(an[i+1], bn[i])

        result += monster
        an[i+1] -= monster
        bn[i] -= monster
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
