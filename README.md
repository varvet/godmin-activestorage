# Godmin Activestorage

[![Gem Version](http://img.shields.io/gem/v/godmin-activestorage.svg)](https://rubygems.org/gems/godmin-activestorage)

Godmin Activestorage is a file upload component for [Godmin](https://github.com/varvet/godmin) that uses [Active Storage](https://edgeguides.rubyonrails.org/active_storage_overview.html) for uploads.

## Installation

Add the gem to the application's `Gemfile`:

```ruby
gem "godmin-activestorage"
```

Or to the admin engine's `gemspec`:

```ruby
s.add_dependency "godmin-activestorage", "~> x.x.x"
```

Require the gem's stylesheet and javascript:

```css
 *= require godmin
 *= require godmin-activestorage
```

```javascript
//= require godmin
//= require godmin-activestorage
```

## Usage

See the [Active Storage](https://edgeguides.rubyonrails.org/active_storage_overview.html) documentation for info on how to configure storage location, set up your model etc. Once that is done, require `godmin-activestorage` in your application.js and application.css.

Then, simply use the `uploader` in your form like so:

```erb
<%= form_for(@resource) do |f| %>
  <%= f.input_field :title %>
  <%= f.text_field :body %>

  <%= f.uploader :attachment, preview: true, remove: false %>
<% end %>
```

The `preview` option should only be used for image attachments.

By setting `remove: false` the uploader's remove image action is hidden.

## (Lack of) Direct uploads

This gem is supposed to be a drop-in replacement for [godmin-uploads](https://github.com/varvet/godmin-uploads) which uses [refile](https://github.com/refile/refile). But unlike that gem, godmin-activestorage does not yet support direct uploads. Image files can be previewed but the actual upload won't happen until the form is submitted. There's great support for direct uploads inside Active Storage, we just haven't been able to make them work within the Godmin engine yet.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/varvet/godmin-activestorage. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Godmin::Activestorage project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/varvet/godmin-activestorage/blob/master/CODE_OF_CONDUCT.md).

## Contributors

https://github.com/varvet/godmin-activestorage/graphs/contributors
