class AddCoordinatesToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :latitude, :float
    add_column :characters, :longitude, :float
    add_column :characters, :address, :string
    remove_column :characters, :location, :float
  end
end
