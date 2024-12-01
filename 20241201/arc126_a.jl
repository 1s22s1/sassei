using Printf

function main()
    t = parseint()

    for _ ∈ 1:t
        n2, n3, n4 = parseints()

        result = 0

        # 3+3+4
        stick = min(n3 ÷ 2, n4)
        result += stick
        n3 -= 2stick
        n4 -= stick

        # 2+4+4
        stick = min(n2, n4 ÷ 2)
        result += stick
        n2 -= stick
        n4 -= 2stick

        # 2+2+2+4
        stick = min(n2 ÷ 3, n4)
        result += stick
        n2 -= 3stick
        n4 -= stick

        # 2+2+3+3
        stick = min(n2 ÷ 2, n3 ÷ 2)
        result += stick
        n2 -= 2stick
        n3 -= 2stick

        # 2+2+2+2+2
        stick = n2 ÷ 5
        result += stick
        n2 -= 5stick

        println(result)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
