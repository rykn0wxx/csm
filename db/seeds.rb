# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'mudhead@mudhead.com', username: 'mudhead', password: 'mudhead', password_confirmation: 'mudhead')
# User.create!(email: 'mudhead@mudhead.com', username: 'mudhead', password: 'mudhead', password_confirmation: 'mudhead')
# region_cols = ['name','code','label','is_active']
# region_all = JSON.parse(File.read('db/regions.json'))
# region_all.each do |r|
#   ndata = r.slice(*region_cols)
#   Region.create! ndata.to_hash
# end
#
# client_cols = ['name','is_active']
# client_all = JSON.parse(File.read('db/clients.json'))
# client_all.each do |c|
#   ndata = c.slice(*client_cols)
#   Client.create! ndata.to_hash
# end
#
# project_cols = ['name','client_id','region_id']
# project_all = JSON.parse(File.read('db/projects.json'))
# project_all.each do |c|
#   ndata = c.slice(*project_cols)
#   Project.create! ndata.to_hash
# end
