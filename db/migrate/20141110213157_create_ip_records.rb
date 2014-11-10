class CreateIpRecords < ActiveRecord::Migration
  def change
    create_table :ip_records do |t|
      t.string :address

      t.timestamps
    end
  end
end
