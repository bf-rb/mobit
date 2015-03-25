# Mobit [![Gem Version](https://badge.fury.io/rb/mobit.svg)](http://badge.fury.io/rb/mobit)

```html
<div>
  <select name="phone_country_code">
    <option value="93" data-trunk-code="0">Afghanistan (+93)</option>
    <option value="355" data-trunk-code="0">Albania (+355)</option>
    <option value="213" data-trunk-code="0">Algeria (+213)</option>
      ...
    <option value="263" data-trunk-code="0">Zimbabwe (+263)</option>
  </select>
  <input type="phone" name="phone" required="required">
</div>
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mobit'
```

or

```ruby
gem 'mobit', :git => 'git://github.com/rubybeast/mobit.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mobit

## Usage

Simple Helper 'rails_phone_tag'

```erb
<%= rails_phone_tag :phone, '', required: true %>
```

Form For 'form.rails_phone_field'

```erb
<%= form_for @example do |f|%>
  <%= f.rails_phone_field :phone, required: true %>
  <%= f.submit %>
<% end %>
```

Simple_Form_For 'form.rails_phone'

```erb
<%= simple_form_for @example do |f|%>
  <%= f.input :phone, as: :country_phone, required: true %>
  <%= f.submit %>
<% end %>
```


Formtastic  'form.country_phone'

```erb
<%= semantic_form_for @example do |form| %>
  <%= form.country_phone :phone, required: true %>
  <%= form.submit %>
<% end %>
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mobit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request