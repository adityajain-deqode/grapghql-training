# frozen_string_literal: true

Sequel.migration do
  change do
    create_table :links do
      primary_key :id
      String :url
      String :description
    end
  end
end
