using Printf
using IterTools

function main()
    h, w, k = parseints()
    c = [split(parsestring(), "") for _ ∈ 1:h]

    result = 0

    for pattern1 ∈ IterTools.subsets(1:h)
        for pattern2 ∈ IterTools.subsets(1:w)
            count_black = 0

            for i ∈ 1:h
                for j ∈ 1:w
                    if c[i][j] == "#" && i ∉ pattern1 && j ∉ pattern2
                        count_black += 1
                    end
                end
            end

            if count_black == k
                result += 1
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
