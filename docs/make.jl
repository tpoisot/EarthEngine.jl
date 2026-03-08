push!(LOAD_PATH,"../src/")

using Documenter, GlobeMachine

pages = [
    "Home" => "index.md",
    "Usage" => "usage.md",
    "Examples" => [
        "Landsat 8 Cloud Masking" => "examples/landsat8_cloudmasking.md",
        "Sentinel 1 Composite" => "examples/sentinel1_composite.md",
        "Trendy Lights" => "examples/trendy_lights.md",
        "Classification" => "examples/classification.md",
    ],
    "API" => "api.md",
]

makedocs(;
    modules = [GlobeMachine],
    authors = "Kel Markert",
    repo = "https://github.com/tpoisot/GlobeMachine.jl/blob/{commit}{path}#L{line}",
    sitename = "GlobeMachine.jl",
    # format = Documenter.HTML(;
    #     prettyurls = get(ENV, "CI", "false") == "true",
    #     canonical = "https://deltares.github.io/Wflow.jl",
    #     assets = String[],
    # ),
    pages = pages,
)

deploydocs(;
    deps = Deps.pip("earthengine-api"),
    repo = "github.com/tpoisot/GlobeMachine.jl.git",
    devbranch = "main"
)
