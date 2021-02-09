require 'pry'
require_relative './backer'
require_relative './project_backer'
require_relative './project'

project1 = Project.new("Ticket to Ride")
project2 = Project.new("Settlers of Catan")
project3 = Project.new("Feast for Odin")

backer1 = Backer.new("Bob")
backer2 = Backer.new("Kelly")

proback1 = ProjectBacker.new(project1, backer1)
proback2 = ProjectBacker.new(project2, backer1)
proback3 = ProjectBacker.new(project1, backer2)

binding.pry
"fin"