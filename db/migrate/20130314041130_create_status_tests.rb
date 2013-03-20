class CreateStatusTests < ActiveRecord::Migration
  def change
    create_table :status_tests do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
