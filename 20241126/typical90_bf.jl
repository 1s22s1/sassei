using Printf

function main()
    n, k = parseints()

    arr = [n]
    first_length = -1
    loop_length = -1

    while true
        value = arr[end]
        value = value + sum(parse.(Int, split(string(value), "")))
        value %= 10^5

        if value ∈ arr
            first_length = findfirst(x -> x == value, arr) - 1
            loop_length = length(arr) - first_length

            break
        else
            push!(arr, value)
        end
    end

    if k ≤ first_length - 1
        println(arr[k+1])

        return
    end

    cur = (k - first_length) % loop_length

    if cur == 0
        println(arr[first_length+1])
    else
        println(arr[first_length+cur+1])
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
