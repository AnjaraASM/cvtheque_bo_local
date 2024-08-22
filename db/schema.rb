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

ActiveRecord::Schema[7.0].define(version: 2024_08_06_081004) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categorie_cvs", force: :cascade do |t|
    t.string "categorie"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "commentaire"
    t.bigint "user_id"
    t.bigint "cv_id"
    t.string "lu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cvs", force: :cascade do |t|
    t.string "nomPrenom"
    t.string "nom"
    t.string "prenom"
    t.string "email"
    t.string "telephone"
    t.string "age"
    t.string "adresse"
    t.string "facebook"
    t.string "linkedin"
    t.string "aExperience"
    t.string "nationalite"
    t.text "descriptionProfile"
    t.text "contrat"
    t.text "national"
    t.string "pretention"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "categorie_cv_id"
    t.text "photo"
    t.string "disponibility"
    t.integer "sous_category_id"
    t.text "resume"
    t.string "telephone1"
    t.string "telephone2"
    t.string "datedispo"
  end

  create_table "demand_logins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "object"
    t.string "numero"
    t.text "description"
    t.text "pays"
    t.text "adresse"
    t.text "ip"
    t.string "prenom"
    t.string "site"
    t.string "priorisation"
    t.string "post"
    t.boolean "lu", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diplomes", force: :cascade do |t|
    t.string "ecole"
    t.string "datecole"
    t.string "datefinecole"
    t.text "descriptionecole"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cv_id"
  end

  create_table "entretiens", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cv_id"
    t.string "drdv"
    t.string "hrdv"
    t.boolean "lu", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string "societe"
    t.string "datexp"
    t.string "datefin"
    t.text "descriptionexp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cv_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "cv_id"
    t.boolean "lu", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "profil_ideals", force: :cascade do |t|
    t.text "description"
    t.integer "user_id"
    t.boolean "lu", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rate"
    t.integer "user_id"
    t.integer "cv_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sous_categories", force: :cascade do |t|
    t.string "categorie"
    t.integer "categorie_cv_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_categorie_cvs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "categorie_cv_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "prenom"
    t.boolean "notifier", default: true
    t.string "email"
    t.string "role"
    t.string "phone"
    t.string "societe"
    t.string "site"
    t.string "post"
    t.string "priorisation"
    t.string "pass"
    t.date "expire"
    t.string "pays"
    t.text "adresse"
    t.boolean "account", default: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "authentication_token"
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
  end

  create_table "views", force: :cascade do |t|
    t.integer "cv_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
