# class RoomSetsController < ApplicationController

#     get '/room_sets' do
#         RoomSet.order(:name).to_json(include: :rooms)
#     end

#     get '/room_sets/:id' do
#         @room_set = RoomSet.find(params[:id])
#         @room_set.to_json(include: :rooms)
#     end

#     post '/room_sets' do
#         @room_set = MiniatureSet.create(params)
#         @room_set.to_json(include: :rooms)
#     end

#     patch '/room_sets/:id' do
#         @room_set = RoomSet.find(params[:id])
#         @room_set.update(
#             name: params[:name],
#             year: params[:year]
#             )
#         @room_set.to_json(include: :rooms)
#     end

#     delete '/room_sets/:id' do
#         @room_set = RoomSet.find(params[:id])
#         @room_set.destroy
#         @room_set.to_json
#     end

# end