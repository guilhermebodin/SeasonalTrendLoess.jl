using CSV
using DataFrames
using SeasonalTrendLoess
using Test

airp = CSV.File("airpassengers.csv") |> DataFrame

@testset "Test errors" begin
    @test_throws AssertionError stl(rand(100),10; ns=5)
    @test_throws AssertionError stl(rand(100),10; ns=8)
end

@testset "Air passengers" begin
    # TODO
    # no proper tests yet
    s = stl(float(airp.passengers), 12; ns = 7, no = 3)
    s = stl(float(airp.passengers), 12; ns = 7, robust = true, spm = true)
end