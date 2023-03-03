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
        img_url: "https://images.app.goo.gl/LhgC8SVUcZxLFZf37"
    },
    {
        name: "Double",
        size: "Medium",
        units: 4,
        room_set_id: 27,
        img_url: "https://images.app.goo.gl/A46PBSjL7EARnJ4t5"
    },
    {
        name: "Tripple",
        size: "Medium",
        units: 1,
        room_set_id: 46,
        img_url: "https://images.app.goo.gl/zn7V5JtQPaFQ5xZYA"
    }
])

puts "✅ Done seeding!"
