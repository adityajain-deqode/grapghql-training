# frozen_string_literal: true
class Contract < Dry::Validation::Contract
  config.messages.load_paths << './config/errors.yml'
end

module Pathway
  class Operation

    plugin :dry_validation

    contract Contract
  end
end

