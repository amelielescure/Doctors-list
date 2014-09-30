class CreateHealthProfessionals < ActiveRecord::Migration
  def change
    create_table :health_professionals do |t|
      t.string :firstname
      t.string :lastname
      t.string :speciality
      t.string :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
