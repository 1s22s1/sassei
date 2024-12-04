using Printf
using IterTools

function main()
    n, m = parseints()
    ksm = [parseints() for _ ∈ 1:m]
    pm = parseints()

    result = 0

    for pattern ∈ IterTools.subsets(1:n)
        satisfy = true

        for i ∈ 1:m
            if length(pattern ∩ ksm[i][2:end]) % 2 ≠ pm[i]
                satisfy = false
            end
        end

        if satisfy
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
