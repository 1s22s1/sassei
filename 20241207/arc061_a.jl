using Printf
using IterTools

function main()
    s = parsestring()

    result = 0

    for pattern ∈ IterTools.subsets(1:length(s)-1)
        formula_string = ""

        for i ∈ 1:length(s)
            formula_string *= s[i]

            if i ∈ pattern
                formula_string *= '+'
            end
        end

        result += eval(Meta.parse(formula_string))
    end


    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
