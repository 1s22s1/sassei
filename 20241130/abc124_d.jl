using Printf

function main()
    n, k = parseints()
    s = parsestring()

    arr = runlengthencodeing(s)

    result = -1

    for i ∈ eachindex(arr)
        count = 0
        sum = 0

        j = i
        while j ≤ length(arr)
            if arr[j][1] == '1'
                sum += arr[j][2]
            else
                if count < k
                    sum += arr[j][2]
                    count += 1
                else
                    break
                end
            end

            j += 1
        end

        result = max(result, sum)
    end

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
