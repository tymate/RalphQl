# frozen_string_literal: true

class GqlShowGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def create_gql_file
    template 'exemple_spec.rb', File.join('spec/graphql/queries/types', "query_type_#{file_name.underscore}_spec.rb")
    template 'exemple.graphql.rb', File.join('spec/fixtures/graphql', "#{file_name.underscore}.graphql")
    insert_into_query_type
  end

  private

  def insert_into_query_type
    inject_into_file 'app/graphql/types/query_type.rb', after: "SHOW_QUERIES_FOR_SINGLE_RECORDS = %w[" do 
    "#{file_name.camelize(:lower)} "
    end
  end
end
