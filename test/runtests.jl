using PlutoTeachingTools
using Test
using Markdown

@testset "PlutoTeachingTools.jl" begin
    # Write your tests here.

    @testset "Standard String arguments" begin
        @test_nowarn hint("Test hint")
        @test_nowarn almost("Testing almost")
        @test_nowarn still_missing("Variable xxx is missing.")
        @test_nowarn keep_working("Maybe the hint will help.")
    end;
    @testset "Markdown arguments" begin
        @test_nowarn hint(md"Test hint")
        @test_nowarn almost(md"Testing almost")
        @test_nowarn still_missing(md"Variable xxx is missing.")
        @test_nowarn keep_working(md"Maybe the hint will help.")
    end;

    
    @test_nowarn (x = 5; not_defined(x) )

    @testset "Useful strings" begin
         @test_nowarn TODO()
    end;

end

