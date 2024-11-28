using Printf

function main()
    n, k = parseints()
    s = parsestring()

    rle = runlengthencodeing(s)

    result = map(x -> x[2] - 1, rle) |> sum

    result += min(length(rle) - 1, 2k)

    println(result)
end

function runlengthencodeing(arr::Union{Vector{Int},String})::Vector{Vector{}}
    result = []
    n = length(arr)

    i = 1
    while i < n + 1
        j = i

        while j < n + 1 && arr[i] == arr[j]
            j += 1
        end

        push!(result, [arr[i], j - i])
        i = j
    end

    return result
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
