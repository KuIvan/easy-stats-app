module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    # NOTE: we may will want to split it to field groups (assets, users, etc...)

    # Users

  end
end
