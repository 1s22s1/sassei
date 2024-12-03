using Printf
using IterTools

function main()
    global n, m, x = parseints()
    global can = [parseints() for _ ∈ 1:n]

    global result = typemax(Int)

    rec([], 0)

    if result == typemax(Int)
        println(-1)
    else
        println(result)
    end
end

function rec(arr, count)
    if count == n
        # indexes = findall(x -> x == 1, arr)
        indexes = arr

        if !isempty(indexes)
            sum_arr = sum(can[indexes])

            if all(understand -> understand ≥ x, sum_arr[begin+1:end])
                global result = min(result, sum_arr[begin])
            end
        end

        return
    end

    push!(arr, can[count+1])
    rec(arr, count + 1)
    pop!(arr)

    rec(arr, count + 1)

    # for i ∈ 0:1
    #     push!(arr, i)
    #     rec(arr, count + 1)
    #     pop!(arr)
    # end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
