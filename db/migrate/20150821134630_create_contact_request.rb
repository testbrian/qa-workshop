class CreateContactRequest < ActiveRecord::Migration
  def change
    create_table :contact_requests do |t|
      t.text :text
    end
  end
end
