class AddColorToToy < ActiveRecord::Migration[5.2]
  def change
    add_column :toys, :color, :string
  end
end
