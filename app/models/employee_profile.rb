# == Schema Information
#
# Table name: employee_profiles
#
#  id            :bigint           not null, primary key
#  name          :string           default(""), not null
#  employee_id   :bigint           not null
#  department_id :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_employee_profiles_on_department_id  (department_id)
#  index_employee_profiles_on_employee_id    (employee_id)
#
# Foreign Keys
#
#  fk_rails_...  (department_id => departments.id)
#  fk_rails_...  (employee_id => employees.id)
#
class EmployeeProfile < ApplicationRecord

  # Relations
  belongs_to :employee
  belongs_to :department

  # Validations

  # Callbacks

  # Delegates

  # Scopes

  # Methods
end
