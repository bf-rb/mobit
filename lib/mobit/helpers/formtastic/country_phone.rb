module Formtastic::CountryPhone

  def country_phone(method, options = {})
    rails_phone_field(method, options)
  end

end