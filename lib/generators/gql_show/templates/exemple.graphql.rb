query <%= class_name.camelize(:lower) %>($id: ID!) {
  <%= class_name.camelize(:lower) %>(id: $id) {
    <%- class_name.constantize.columns.each do |column| -%>
    <%- next if class_name.constantize.reflect_on_all_associations.map(&:foreign_key).include?(column.name) -%>
      <%= column.name.camelize(:lower)%>
    <%- end -%>
  }
}
