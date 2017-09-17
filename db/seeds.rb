# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
seed_file = Rails.root.join('db', 'seeds.yml')
config = YAML::load_file(seed_file)
config=config.to_h
hash = ActiveSupport::HashWithIndifferentAccess.new(config)
hash[:project].each{|x|
projid=Project.create(title:x[:title])
x[:todos].each{|y|

hash_todo = ActiveSupport::HashWithIndifferentAccess.new({text:y[:text],project_id:projid.id,isCompleted:y[:isCompleted]})

todos=Todo.create(hash_todo)
}

}