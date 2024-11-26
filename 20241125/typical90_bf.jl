using Printf

function main()
    n, k = parseints()
    arr = [n]
    first_length = -1

    while true
        value = arr[end]
        value += sum(parse.(Int, split(string(value), "")))
        value %= 10^5

        if value ∈ arr
            first_length = findfirst(x -> x == value, arr) - 1

            break
        else
            push!(arr, value)
        end
    end

    loop_length = length(arr) - first_length

    if k ≤ first_length - 1
        println(arr[k+1])

        return
    end

    r = (k - first_length + 1) % loop_length

    if r == 0
        println(arr[end])
    else
        println(arr[r+first_length+1])
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
