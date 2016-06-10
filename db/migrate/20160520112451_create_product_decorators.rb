class CreateProductDecorators < ActiveRecord::Migration
  def change
    create_table :product_decorators do |t|

      t.timestamps null: false
    end
  end
end
