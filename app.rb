require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/item')
require('pry')

get('/') do
  @list = Item.all()
  erb(:items)
end


post('/') do
  name = params["name"]
  rank = params["rank"]
  item = Item.new(name, rank)
  # item = Item.new(params["name"])
  item.save()
  @list = Item.all()
  # @list.sort()
  item.save_rank()
  @list_of_rank = Item.all_rank()

  # @list_sort = Item.all()
  erb(:items)
  binding.pry
end
