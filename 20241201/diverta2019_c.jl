using Printf

function main()
    n = parseint()
    sn = [parsestring() for _ ∈ 1:n]

    t, c1, c2, c3 = 0, 0, 0, 0

    for s ∈ sn
        t += count("AB", s)

        if s[begin] == 'B' && s[end] == 'A'
            c1 += 1
        elseif s[end] == 'A'
            c2 += 1
        elseif s[begin] == 'B'
            c3 += 1
        end
    end

    if c2 == c3 == 0
        println(t + max(c1 - 1, 0))
    else
        println(t + c1 + min(c2, c3))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
