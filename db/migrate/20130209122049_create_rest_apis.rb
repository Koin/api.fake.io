class CreateRestApis < ActiveRecord::Migration
  def change
    create_table :rest_apis do |t|
      t.string :name
      t.string :request
      t.text :response
      t.string :method
      t.integer :http_status_code
      t.references :webservice, index: true

      t.timestamps
    end
  end
end
