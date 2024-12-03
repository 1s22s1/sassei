n = 2

function main()
    println("call main")
    n = 4

    println(n)

    sub()
end

function sub()
    println("call sub")

    println(n)
end

main()
