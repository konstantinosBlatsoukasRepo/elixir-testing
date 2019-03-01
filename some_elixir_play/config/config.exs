use Mix.Config

app = Mix.Project.config()[:app]

config app, :calculator, Calculators.NormalCalculator

### Imports ###

if File.exists?("#{__DIR__}/#{Mix.env()}.exs") do
  import_config "./#{Mix.env()}.exs"
end
