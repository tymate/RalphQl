# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Types::QueryType, type: :request do

  let(:query) { '<%= class_name.camelize(:lower).pluralize %>' }
  let(:data) { json.dig(:data, :<%= class_name.camelize(:lower).pluralize %>, :nodes) }

  describe '<%= class_name.underscore %>' do
    it_behaves_like 'with standard user' do
      before do
        5.times do
          Fabricate(:<%= class_name.underscore %>)
        end
        do_graphql_request
      end

      it 'get a <%= class_name.underscore.pluralize %> list' do
        raise "Change me or adopt me in #{__FILE__}"
        expect(errors).to be_blank
        expect(data.size).to eq(5)
      end
    end
  end

  include_examples 'when unauthenticated'
end
