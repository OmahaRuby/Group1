class AddInitialModels < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :auth_key
      t.text    :auth_data # serialized
      t.timestamps
    end

    create_table :meetups do |t|
      t.datetime  :scheduled_at
      t.string    :location
      t.text      :description
      t.boolean   :food
      t.boolean   :beer
      t.timestamps
    end

    create_table :topics do |t|
      t.string  :title
      t.text    :description
      t.string  :level
      t.timestamps
    end

    create_table :topic_votes do |t|
      t.references :user
      t.references :topic
      t.timestamps
    end

    create_table :topic_speakers do |t|
      t.references :user
      t.references :topic
      t.text       :notes
      t.timestamps
    end

    create_table :meetups_topics do |t|
      t.references :meetup
      t.references :topic
    end
  end
end
