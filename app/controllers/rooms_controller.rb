class RoomsController < ApplicationController

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