using Printf

function main()
    n = parseint()
    an = parseints()

    count = 0
    for a ∈ an
        if isodd(a)
            count += 1
        end
    end

    if iseven(count)
        println("YES")
    else
        println("NO")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
