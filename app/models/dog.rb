#   create_table "dogs", force: :cascade do |t|
#     t.string "name", null: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

class Dog < ApplicationRecord
    # in order to avoid a 500 level error, before save a model to database, validates it
    validates :name, presence: true
    validate :check_name_length
    
    def check_name_length
        unless self.name.length >= 4
            errors[:name] << 'is too short'
        end
    end
    
end
