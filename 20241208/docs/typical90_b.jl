using Printf
using IterTools

function main()
    n = parseint()

    result = []

    for pattern ∈ product(fill(1:-1:0, n)...)
        if valid_parenthese(pattern)
            push!(result, replace(join(pattern), "0" => "(", "1" => ")"))
        end
    end

    sort!(result)

    for elem ∈ result
        println(elem)
    end
end

function valid_parenthese(pattern)
    count_zero = 0
    count_one = 0

    for elem ∈ pattern
        if elem == 0
            count_zero += 1
        else
            count_one += 1
        end

        if count_zero < count_one
            return false
        end
    end

    if count_zero == count_one
        return true
    else
        return false
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
