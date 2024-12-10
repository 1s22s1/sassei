function func(arr::Union{Vector{SubString{String}}, Vector{Char}})
    @show arr
end

arr1 = split("abc", "")

func(arr1)

arr2 = collect("abc")

func(arr2)
