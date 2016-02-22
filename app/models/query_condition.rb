class QueryCondition < ActiveRecord::Base
  belongs_to :query

  enum matcher: ['=', '>=', '<=', '<>']
  enum operator: ['AND', 'OR']
end
