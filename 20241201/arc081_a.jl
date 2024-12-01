using Printf

function main()
    n = parseint()
    an = parseints()

    edges = []

    sort!(an, rev = true)

    i = 1
    while i ≤ n - 1
        if an[i] == an[i+1] && length(edges) ≤ 1
            push!(edges, an[i])

            i += 1
        end

        if length(edges) == 2
            println(edges[begin] * edges[end])

            return
        end

        i += 1
    end

    println(0)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
