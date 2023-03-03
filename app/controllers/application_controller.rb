class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/room_sets' do
    RoomSet.order(:name).to_json(include: :rooms)
end

get '/room_sets/:id' do
    @room_set = RoomSet.find(params[:id])
    @room_set.to_json(include: :rooms)
end

post '/room_sets' do
    @room_set = MiniatureSet.create(params)
    @room_set.to_json(include: :rooms)
end

patch '/room_sets/:id' do
    @room_set = RoomSet.find(params[:id])
    @room_set.update(
        name: params[:name],
        year: params[:year]
        )
    @room_set.to_json(include: :rooms)
end

delete '/room_sets/:id' do
    @room_set = RoomSet.find(params[:id])
    @room_set.destroy
    @room_set.to_json
end

get '/rooms' do
  Room.order(:name).to_json(include: :room_set)
end

get '/rooms/new' do
  Room.last(6).to_json(include: :room_set)
end

get '/rooms/:id' do
  @room = Room.find(params[:id])
  @room.to_json(include: :room_set)
end

get '/room_sets/:room_set_id/rooms' do
  @room_set = RoomSet.find(params["room_set_id"])
  @room_set.rooms.to_json(include: room_set)
end

post '/room_sets/:room_set_id/rooms' do
  @room_set = RoomSet.find(params["room_set_id"])
  @room = @room_set.rooms.build(params)
  @room.save
  @room.to_json
end

patch '/rooms/:id' do
  @room = Room.find(params[:id])
  @room.update(
      name: params[:name],
      size: params[:size],
      units: params[:units],
      img_url: params[:img_url]
      )
  @room.to_json
end

delete '/rooms/:id' do
  @room = Room.find(params[:id])
  @room.destroy
  @room.to_json
end
 

end
