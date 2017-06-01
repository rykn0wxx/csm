# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'mudhdead@mudhdead.com', username: 'mudhdead', password: 'mudhdead', password_confirmation: 'mudhdead')
region_cols = ['name','code','label','svg_path','is_active']
region_all = JSON.parse(File.read('db/region.json'))
region_all.each do |r|
  ndata = r.slice(*region_cols)
  Region.create! ndata.to_hash
end
