require 'dm-core'
require 'dm-migrations'

class Usuario
  include DataMapper::Resource
  property :id, Serial
  property :username, String
  property :partidas_ganadas, Integer
  property :partidas_jugadas, Integer
end

DataMapper.finalize

get '/usuario' do
  @usuario = Usuario.all
  haml :listar
end
