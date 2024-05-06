# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mutations::<%= class_name %>, type: :request do
  let(:query) { '<%= class_name.camelize(:lower) %>' }
  let(:data) { json.dig(:data, :<%= class_name.camelize(:lower).pluralize %>, :change_me) }

  # let(:object) { Fabricate :object }

  let(:variables) do
    {
      input: {
        # objectId: object.to_sgid.to_s
      }
    }
  end

  it_behaves_like 'with standard user' do
    xit '<%= class_name %>' do
      do_graphql_request
      expect(errors).to be_blank
      expect(data).not_to be_empty
    end
  end
end
