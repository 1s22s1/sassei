using Printf

function main()
    h, w = parseints()
    a = [parseints() for _ ∈ 1:h]

    result = []

    for i ∈ 1:h
        for j ∈ 1:w-1
            if isodd(a[i][j])
                push!(result, [i, j, i, j+1])

                a[i][j] -= 1
                a[i][j+1] += 1
            end
        end

        if isodd(a[i][w]) && i ≠ h
            push!(result, [i, w, i+1, w])

            a[i][w] -= 1
            a[i+1][w] += 1
        end
    end

    println(length(result))

    for elem ∈ result
        println(join(elem, " "))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
