# create_table "comments", force: :cascade do |t|
#   t.text "content"
#   t.integer "pitch_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "pitches", force: :cascade do |t|
#   t.string "title"
#   t.text "content"
#   t.integer "student_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "projects", force: :cascade do |t|
#   t.string "name"
#   t.string "url_link"
#   t.integer "student_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
#
# create_table "students", force: :cascade do |t|
#   t.string "name"
#   t.text "bio"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.string "password_digest"
#   t.string "email"
# end
# ---------------------------------------------------------------------------------------------------

require 'faker'

Student.destroy_all
Pitch.destroy_all
Comment.destroy_all
Project.destroy_all

#
#
#
#
10.times do
  Student.create(
    name: Faker::Artist.unique.name,
    bio: Faker::Color.rgb_color,
    email: Faker::Internet.email,
    password_digest: Faker::Internet.password
  )
end

10.times do
  Pitch.create(
    title: Faker::Beer.name,
    content: Faker::Company.catch_phrase,
    student: Student.all.sample
  )
end

10.times do
  Comment.create(
    content: Faker::FamilyGuy.quote,
    pitch: Pitch.all.sample
  )
end

10.times do
  Project.create(
    name: Faker::Friends.character,
    url_link: Faker::Avatar.image,
    student: Student.all.sample
  )
end
