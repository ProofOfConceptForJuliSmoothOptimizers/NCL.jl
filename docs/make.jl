using Documenter, NCL

makedocs(
  modules = [NCL],
  doctest = true,
  # linkcheck = true,
  strict = true,
  format = Documenter.HTML(assets = ["assets/style.css"], prettyurls = get(ENV, "CI", nothing) == "true"),
  sitename = "NCL.jl",
  pages = Any["Home" => "index.md",
              "Tutorial" => "tutorial.md",
              "Reference" => "reference.md"]
)

deploydocs(repo = "github.com/JuliaSmoothOptimizers/NCL.jl.git", devbranch = "main")
