# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

text_blob = 'Donec id elit non mi porta gravida at eget metus. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.'
level_array = ['beginner', 'intermediate', 'expert', 'DHH']

def generate_description(text)
  text.split('.').sample(rand(1..3))
end

topics_array = [
    {title: 'Rails for NodeJS Fanatics', description: generate_description(text_blob), level:level_array.sample},
    {title: 'Why Not Switch to Python?', description: generate_description(text_blob), level:level_array.sample},
    {title: 'Your Tests Are Bad and You Should Feel Bad', description: generate_description(text_blob), level:level_array.sample},
    {title: 'Sinatra for Dean Martin Fans', description: generate_description(text_blob), level:level_array.sample},
    {title: 'Docker - Is It Right for Your Dog?', description: generate_description(text_blob), level:level_array.sample},
    {title: 'PHP - How Is This Still a Thing', description: generate_description(text_blob), level:level_array.sample}
]

Topic.create(topics_array)