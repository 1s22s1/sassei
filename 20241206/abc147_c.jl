using Printf
using IterTools

function main()
    n = parseint()
    says = []

    for _ ∈ 1:n
        a = parseint()

        arr = []

        for _ ∈ 1:a
            push!(arr, parseints())
        end

        push!(says, arr)
    end

    result = 0

    for pattern ∈ IterTools.subsets(1:n)
        satisfy = true

        for i ∈ 1:n
            for say ∈ says[i]
                if i ∈ pattern
                    if say[end] == 1
                        if say[begin] ∉ pattern
                            satisfy = false
                        end
                    else
                        if say[begin] ∈ pattern
                            satisfy = false
                        end
                    end
                else
                    # Do nothing

                    # if say[end] == 1
                    #     if say[begin] ∈ pattern
                    #         satisfy = false
                    #     end
                    # else
                    #     if say[begin] ∉ pattern
                    #         satisfy = false
                    #     end
                    # end
                end
            end
        end

        if satisfy
            result = max(result, length(pattern))
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
