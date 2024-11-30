using Printf

function main()
    n, d = parseints()
    s = parsestring()

    cookie_indexes = findall('@', s)[begin:end-d]

    for i ∈ 1:n
        if i ∈ cookie_indexes
            print("@")
        else
            print(".")
        end
    end

    println("")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
