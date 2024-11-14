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

ActiveRecord::Schema.define(version: 2024_11_08_131542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "control_forms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "curriculums", force: :cascade do |t|
    t.bigint "discipline_id"
    t.bigint "group_id"
    t.integer "semester"
    t.integer "hours"
    t.bigint "control_form_id"
    t.bigint "class_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "teacher_id"
    t.index ["class_type_id"], name: "index_curriculums_on_class_type_id"
    t.index ["control_form_id"], name: "index_curriculums_on_control_form_id"
    t.index ["discipline_id"], name: "index_curriculums_on_discipline_id"
    t.index ["group_id"], name: "index_curriculums_on_group_id"
    t.index ["teacher_id"], name: "index_curriculums_on_teacher_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.bigint "faculty_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["faculty_id"], name: "index_departments_on_faculty_id"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "department_id"
    t.index ["department_id"], name: "index_disciplines_on_department_id"
  end

  create_table "exams", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "discipline_id"
    t.integer "grade"
    t.integer "semester"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "teacher_id"
    t.integer "course"
    t.date "pass_date"
    t.index ["discipline_id"], name: "index_exams_on_discipline_id"
    t.index ["student_id"], name: "index_exams_on_student_id"
    t.index ["teacher_id"], name: "index_exams_on_teacher_id"
  end

  create_table "faculties", force: :cascade do |t|
    t.string "name"
    t.string "dean"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.bigint "faculty_id"
    t.integer "enrollment_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "course"
    t.bigint "department_id"
    t.boolean "graduated", default: false
    t.integer "semester"
    t.index ["department_id"], name: "index_groups_on_department_id"
    t.index ["faculty_id"], name: "index_groups_on_faculty_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "discipline_id", null: false
    t.bigint "teacher_id", null: false
    t.bigint "group_id", null: false
    t.bigint "class_type_id", null: false
    t.datetime "start_time", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["class_type_id"], name: "index_schedules_on_class_type_id"
    t.index ["discipline_id"], name: "index_schedules_on_discipline_id"
    t.index ["group_id"], name: "index_schedules_on_group_id"
    t.index ["teacher_id"], name: "index_schedules_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.date "birth_date"
    t.boolean "has_children"
    t.decimal "scholarship_amount", precision: 10, scale: 2
    t.bigint "group_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "patronymic"
    t.index ["group_id"], name: "index_students_on_group_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.date "birth_date"
    t.boolean "has_children"
    t.decimal "salary", precision: 10, scale: 2
    t.boolean "has_phd"
    t.bigint "department_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "patronymic"
    t.integer "number_of_children", default: 0
    t.integer "kind", default: 0
    t.index ["department_id"], name: "index_teachers_on_department_id"
  end

  create_table "theses", force: :cascade do |t|
    t.string "title"
    t.bigint "student_id"
    t.bigint "teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "pass_date"
    t.index ["student_id"], name: "index_theses_on_student_id"
    t.index ["teacher_id"], name: "index_theses_on_teacher_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.bigint "teacher_id"
    t.bigint "department_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "pass_date"
    t.integer "kind", default: 0
    t.index ["department_id"], name: "index_topics_on_department_id"
    t.index ["teacher_id"], name: "index_topics_on_teacher_id"
  end

  add_foreign_key "curriculums", "class_types"
  add_foreign_key "curriculums", "control_forms"
  add_foreign_key "curriculums", "disciplines"
  add_foreign_key "curriculums", "groups"
  add_foreign_key "curriculums", "teachers"
  add_foreign_key "departments", "faculties"
  add_foreign_key "disciplines", "departments"
  add_foreign_key "exams", "disciplines"
  add_foreign_key "exams", "students"
  add_foreign_key "exams", "teachers"
  add_foreign_key "groups", "departments"
  add_foreign_key "groups", "faculties"
  add_foreign_key "schedules", "class_types"
  add_foreign_key "schedules", "disciplines"
  add_foreign_key "schedules", "groups"
  add_foreign_key "schedules", "teachers"
  add_foreign_key "students", "groups"
  add_foreign_key "teachers", "departments"
  add_foreign_key "theses", "students"
  add_foreign_key "theses", "teachers"
  add_foreign_key "topics", "departments"
  add_foreign_key "topics", "teachers"
end
