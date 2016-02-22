class QueryCondition < ActiveRecord::Base
  belongs_to :query

  enum matcher: ['=', '>=', '<=', '<>']
  enum operator: ['AND', 'OR']
  enum field: [:full_name, :email, :age, :state, :work_role]
end
