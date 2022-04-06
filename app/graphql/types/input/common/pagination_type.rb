module Types
  module Input
    module Common
      class PaginationType < Types::BaseInputObject
        description 'Pagination object type'

        argument :page, Int, 'page param', required: true
        argument :per, Int, 'per page param', required: true
      end
    end
  end
end
