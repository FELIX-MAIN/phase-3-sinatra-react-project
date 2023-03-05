puts "🌱 Seeding spices..."


RoomSet.create([
    {
        name: "Bedroom_Furniture",
        year: 2021
    },
    {
        name: "Bedroom_Interior",
        year: 2021
    },
    {
        name: "Living_Room_Partition",
        year: 2021
    }
   
])


Room.create([
    {
        name: "Single",
        size: "small",
        units: 3,
        room_set_id: 29,
        img_url: "https://photos.google.com/photo/AF1QipPd8zOdg8LU3psBE7hYISklFwDjU9fOuwwhcDn9"
    },
    {
        name: "Double",
        size: "Medium",
        units: 4,
        room_set_id: 27,
        img_url: "https://photos.google.com/photo/AF1QipOseohOwo2YU4aB1t9fEnDEGqyaP3pjOhyGjaXo"
    },
    {
        name: "Tripple",
        size: "Medium",
        units: 1,
        room_set_id: 46,
        img_url: "https://photos.google.com/photo/AF1QipMQQof-UGiTiB4GwHIPzey0rSdTj45StBjgE9Q2"
    }
])

puts "✅ Done seeding!"
