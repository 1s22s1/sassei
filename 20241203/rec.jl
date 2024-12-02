using Printf
using IterTools

function main()
    global n, m, x = parseints()
    global can = [parseints() for _ ∈ 1:n]

    global result = typemax(Int)

    rec([])

    if result == typemax(Int)
        println(-1)
    else
        println(result)
    end
end

function rec(arr)
    if length(arr) == n
        indexes = findall(x -> x == 1, arr)

        if !isempty(indexes)
            sum_arr = sum(can[indexes])

            if all(understand -> understand ≥ x, sum_arr[begin+1:end])
                global result = min(result, sum_arr[begin])
            end
        end

        return
    end

    for i ∈ 0:1
        push!(arr, i)
        rec(arr)
        pop!(arr)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
