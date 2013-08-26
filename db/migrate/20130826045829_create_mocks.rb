class CreateMocks < ActiveRecord::Migration
  def change
    create_table :mocks do |t|
      t.string :word

      t.timestamps
    end
  end
end
