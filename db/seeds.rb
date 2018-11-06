# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
5.times do |num|
    num += 1
    Categoria.create!(
        nombre: "Test Categoria #{num}"
    )
end
=end
categorias = Categoria.all
categorias.each do |categoria|
    5.times do |num|
        num += 1
        Articulo.create!(
            categoria_id: categoria.id,
            nombre: "Articulo #{num}",
            descripcion: "descripction for this article #{num}",
            precio: 1000,
            cantidad: 5
        )
    end
end