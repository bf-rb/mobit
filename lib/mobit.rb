# encoding: utf-8
require 'mobit/version'
require 'mobit/engine'

autoload :CountryPhoneInput, 'mobit/helpers/simple_form/country_phone_input'

module Formtastic
  autoload :CountryPhone, 'mobit/helpers/formtastic/country_phone'
end

module Mobit

  CONFIG_FILE = 'mobit_config.rb'

  module Config
    autoload :SelectConfig, 'mobit/core/select_config'
  end

  module Core
    autoload :IpCountryCode, 'mobit/core/ip_country_code'
    autoload :Country, 'mobit/core/country'
  end

  module Helpers
    autoload :ViewHelper, 'mobit/helpers/view_helper'
    autoload :FormBuilder, 'mobit/helpers/form_builder'
  end

end