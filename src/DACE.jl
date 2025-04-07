module DACE

using CoolProp
using ModelingToolkit
using ModelingToolkit: t_nounits as t, D_nounits as D

include("stream.jl")
include("pipe.jl")
include("tank.jl")

end # module DACE
