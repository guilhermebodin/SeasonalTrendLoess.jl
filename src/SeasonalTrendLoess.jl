module SeasonalTrendLoess

using Statistics

export stl

include("loess.jl")
include("stl.jl")

end # module
