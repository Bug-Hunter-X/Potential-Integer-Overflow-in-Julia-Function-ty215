```julia
function myfunction(x::Int64)
  if x > 0
    return x^2
  else
    return -x
  end
end

x = -5
println(myfunction(x))

x = typemax(Int64) +1
println(myfunction(x))
```