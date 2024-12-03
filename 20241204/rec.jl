n = nothing
an = [1, 2, 3, 4, 5, 6]
pattern1 = []

function main()
    # for i ∈ 1:6
    #     global n = i

    #     @show i

    #     rec([], 0)
    # end

    global n = 3
    rec([], 0)
    @show pattern1
end

function rec(pattern, len)
    if n == len
        @show pattern, len
        push!(pattern1, pattern)
        @show pattern1
        return
    end

    rec(pattern, len + 1)

    push!(pattern, an[len+1])
    rec(pattern, len + 1)
    pop!(pattern)
end

main()
