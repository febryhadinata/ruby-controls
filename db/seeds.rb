# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

brands = Brand.create([
  { name: "Sunstrand" },
  { name: "Rehau" },
  { name: "Rehau (P. Narto)" },
  { name: "Viro" },
  { name: "Toyo" },
  { name: "Local" },
  { name: "Local, P.Rum" },
  { name: "Local, Malang" },
  { name: "Local, RRT" },
  { name: "Ecolene" },
  { name: "Quadra Plast" },
  { name: "Rehau Shakespeare" },
  { name: "Rehau Peel (Shakespeare)" },
  { name: "Rehau 3mm (Shakespeare)" },
  { name: "Rehau 4mm (Shakespeare)" }])

users = User.create([
  { first_name: "Febry", last_name: "Hadinata", email: "febry.hadinata@gmail.com", role: "admin", password_digest: "$2a$10$tboyUqUL9oEEJgFu565K3.JNxYhJohMk64bV6rsc4rPlITpU1NhhG" },
  { first_name: "Lilian", last_name: "Wibowo", email: "lilian.wibowo@gmail.com", role: "admin", password_digest: "$2a$10$xcPO0jYSqBAXijhFkmshreOWoYcBsY7ng84sJq4xm80FZmKtnwgwi" }])