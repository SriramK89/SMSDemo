class CreateSms < ActiveRecord::Migration
  def change
    create_table :sms do |t|
      t.integer :number
      t.text :message

      t.timestamps
    end
  end
end
