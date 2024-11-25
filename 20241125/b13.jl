using Printf

function main()
    n, k = parseints()
    an = parseints()

    result = 0
    total = an[begin]
    push!(an, 0)
    r = 1

    for l ∈ 1:n
        while r ≤ n && total ≤ k
            r += 1
            total += an[r]
        end

        total -= an[l]
        result += r - l
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
