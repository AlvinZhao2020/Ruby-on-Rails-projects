#  create_table "toys", force: :cascade do |t|
#     t.string "name", null: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.integer "dog_id", null: false
#     t.string 'color'
#   end

class Toy < ApplicationRecord
    validates :name, :dog_id, presence: true
    belongs_to(:dog,{
        primary_key: :id,
        foreign_key: :dog_id,
        class_name: :Dog
    })
end
