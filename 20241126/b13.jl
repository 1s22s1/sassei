using Printf

function main()
    n, k = parseints()
    an = parseints()

    j = 2
    sum = an[begin]
    for i ∈ 1:n
        while j ≤ n && sum + an[j] ≤ k
            j += 1
            sum += an[j]
        end

        @show i, j

        sum -= an[j+1]
        sum -= an[i]
        j -= 1
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
