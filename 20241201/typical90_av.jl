using Printf

function main()
    n, k = parseints()
    abn = [parseints() for _ ∈ 1:n]

    arr = []
    for ab ∈ abn
        push!(arr, ab[1] - ab[2])
        push!(arr, ab[2])
    end

    sort!(arr, rev = true)
    result = sum(arr[begin:k])

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
