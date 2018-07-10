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

# Student.destroy_all
# Project.destroy_all
# Pitch.destroy_all
require 'faker'

eric = Student.new(name: "Eric", bio: "be who be with")
