# Shipped

Shipped is a Ruby on Rails plugin for managing application release notes within your application. It provides a simple admin interface for creating releases.

## Installation

Add this line to your application's Gemfile:

`gem "shipped"`

And then execute:

`bundle`

Or install it yourself as:

`gem install shipped`

Run the generator:

`rails generate shipped:install`

## Usage

Mount the engine in your routes file:

```ruby
# config/routes.rb
mount Shipped::Engine => "/admin/shipped"
```

If you use [Devise](https://github.com/heartcombo/devise), you can make access to the admin interface conditional:

```ruby
# config/routes.rb
authenticate :user, ->(user) { user.super_admin? } do
  mount Shipped::Engine, at: "/admin/shipped"
end
```

If you want to build a publicly accessible release page, simply loop over the releases in your view. Note: This example uses the [Optics Design System](https://optics.rolemodel.design/) for styles, but you can use any CSS framework or custom styles.

```erb
<% - Shipped::Release.order(released_at: :desc).each do |release| %>
  <div class="card card--padded" id="<%= dom_id(release) %>">
    <div class="flex flex-col gap-md">
      <div class="flex items-center justify-between">
        <div class="text-pair text-pair--inline">
          <div class="text-pair__title"><%= release.released_at.to_fs(:full_date) %></div>
          <div class="text-pair__subtitle">
            <% if Shipped.sha_link.present? %>
              <%= link_to "(#{release.release_identifier})", "#{Shipped.sha_link}/#{release.release_identifier}", target: '_blank' %>
            <% else %>
              (#{release.release_identifier})
            <% end %>
          </div>
        </div>
      </div>

      <p><%= release.notes.html_safe %></p>
    </div>
  </div>
<% end %>
```

## Contributing

Contribution directions go here.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## TODO: Things needing development

- [ ] Add a way to generate release notes automatically
  - [ ] Configurable template that gets prefilled.
  - [ ] From commit messages. Configurable access to Github API
  - [ ] From Linear cards (done column?). Configurable access to Linear API
  - [ ] From Trello cards (done column?). Configurable access to Trello API
