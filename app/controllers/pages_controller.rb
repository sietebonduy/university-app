class PagesController < ApplicationController
  def homepage
    @tables = [
      ['Студенты', students_path],
      ['Преподаватели', teachers_path],
      ['Группы', groups_path],
      ['Дипломы', theses_path],
      ['Научные работы', topics_path],
      ['Предметы', disciplines_path],
      ['Типы занятий', class_types_path],
      ['Оценки', exams_path],
      ['Учебный план', curriculums_path],
      ['Кафедры', departments_path],
      ['Расписание', schedules_path],
      ['Факультеты', faculties_path],
      ['Пользователи', users_path]
    ].sort
  end

  def maintainer_info
  end
end
