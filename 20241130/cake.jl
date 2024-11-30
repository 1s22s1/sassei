using Printf

function main()
    n, m = parseints()
    an = parseints()
    bn = parseints()

    for b ∈ bn
        notfound = true

        for i ∈ eachindex(an)
            if an[i] ≤ b
                println(i)

                notfound = false

                break
            end
        end

        if notfound
            println(-1)
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
