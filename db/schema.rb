# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_10_150829) do
  create_table "categorie_cvs", force: :cascade do |t|
    t.string "categorie"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "commentaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cvs", force: :cascade do |t|
    t.string "nomPrenom"
    t.string "email"
    t.string "telephone"
    t.string "age"
    t.string "adresse"
    t.string "facebook"
    t.string "linkedin"
    t.string "aExperience"
    t.string "nationalite"
    t.text "descriptionProfile"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "categorie_cv_id"
    t.text "photo"
    t.string "disponibility"
  end

  create_table "demand_logins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "object"
    t.text "description"
    t.boolean "lu", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diplomes", force: :cascade do |t|
    t.string "ecole"
    t.string "datecole"
    t.text "descriptionecole"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cv_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "societe"
    t.string "datexp"
    t.text "descriptionexp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cv_id"
  end

  create_table "informatiques", force: :cascade do |t|
    t.string "logiciel"
    t.integer "progressinfo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cv_id"
  end

  create_table "langages", force: :cascade do |t|
    t.string "langue"
    t.integer "progresslangue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cv_id"
  end

  create_table "loisirs", force: :cascade do |t|
    t.string "loisir"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cv_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "role"
    t.string "pass"
    t.date "expire"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "authentication_token", limit: 5
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
  end

end
