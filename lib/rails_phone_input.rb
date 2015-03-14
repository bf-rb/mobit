# encoding: utf-8
require 'rails_phone_input/version'
require 'rails_phone_input/engine'

autoload :CountryPhoneInput, 'rails_phone_input/helpers/simple_form/country_phone_input'

module RailsPhoneInput

  module Core
    autoload :IpCountryCode, 'rails_phone_input/core/ip_country_code'
    autoload :CountryCode, 'rails_phone_input/core/country_code'
  end

  module Helpers
    autoload :ViewHelper, 'rails_phone_input/helpers/view_helper'
    autoload :FormBuilder, 'rails_phone_input/helpers/form_builder'
  end

end