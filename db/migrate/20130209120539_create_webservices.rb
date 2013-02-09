class CreateWebservices < ActiveRecord::Migration
  def change
    create_table :webservices do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
