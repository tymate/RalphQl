# RalphQl

RalphQL an useful gem for generating GraphQL queries and mutations in Rails applications. With RalphQL, you can quickly and easily create queries and mutations based on your application's data model, freeing up your time to focus on more complex development tasks.

By using RalphQL, you can reduce the likelihood of typos and other errors that can occur when writing GraphQL queries and mutations by hand. Instead, you can generate the necessary code with a few simple commands and then customize it as needed to fit your specific requirements.

RalphQL's name is a playful reference to the lovable yet dimwitted character from The Simpsons, Ralph Wiggum. By leaving the simple tasks to Ralph, you can focus on the parts of your application that truly require your expertise and creativity.

![ralph computing](https://media.giphy.com/media/xT5LMI5WLGkftxKJeE/giphy.gif)

## Installation
Add this line to your application's Gemfile:
```ruby
gem  'ralphql'
```
And then execute:
```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install ralphql
```
 
## Usage
### Queries Generators
```bash
$ rails generate gql YourModel
```
And it will create base files:
 - `app/graphql/types/your_model_type.rb`
 - `app/graphql/resolvers/your_model_resolver.rb`
-  `app/policies/your_model_policy.rb` 
 - `spec/fixtures/graphql/your_models.graphql`
 - `spec/graphql/queries/your_models_spec.rb` 
 and it  add  `your_models_field` into `app/graphql/types/query_type.rb`

Then now you just have to update  `your_model_policy.rb` and update or remove `xit`  in `your_models_spec.rb` to have a base type fetchable

### Mutations Generators
```bash
$ rails generate gql_mutation YourMutation
```
And it will create base files:
      - `app/graphql/mutations/your_mutation.rb`
      - `spec/graphql/mutations/your_mutation_spec.rb`
      - `spec/fixtures/graphql/mutations/your_mutations.graphql`
There is no magical here, juste generate base files, you have to create your own business logic inside 

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

  

## Contributing
## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ralphql project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/tymate/ralphql/blob/main/CODE_OF_CONDUCT.md).
