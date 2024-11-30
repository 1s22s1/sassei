using Printf

function main()
    n, m = parseints()
    an = parseints()
    bn = parseints()

    arr = []
    for i ∈ eachindex(an)
        push!(arr, [an[i], i])
    end

    sort!(arr, by = x -> x[1])

    for b ∈ bn
        target_index = searchsortedlast(arr, b, by = x -> x[1])

        if target_index == 0
            println(-1)
        else
            println(minimum(map(x -> x[2], arr[begin:target_index])))
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
