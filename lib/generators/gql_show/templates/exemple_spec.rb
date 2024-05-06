# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Types::QueryType, type: :request do
  let(:query) { '<%= class_name.camelize(:lower) %>' }
  let(:data) { json.dig(:data, :<%= class_name.camelize(:lower) %>) }
  let(:<%= class_name.underscore %>) { Fabricate(:<%= class_name.underscore %>) }
  let(:id) { id_from_object(<%= class_name.underscore %>) }
  let(:variables) { { id:  } }

  describe '<%= class_name.underscore %>' do
    it_behaves_like 'with standard user' do
      before do
        do_graphql_request
      end

      it 'get a <%= class_name.underscore %>' do
        raise "Change me or adopt me in #{__FILE__}"
        expect(errors).to be_blank
        expect(data[:id]).to eq(id)
      end
    end
  end

  include_examples 'when unauthenticated'
end
