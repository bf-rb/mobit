# encoding: utf-8
module Mobit
  module Helpers
    module ViewHelper
      extend ActiveSupport::Concern

      def rails_phone_tag(name, content = nil, options = {})

        # ip = request.remote_ip # Rails => Get User IP address
        # cc = Mobit::Core::IpCountryCode.cc_from_ip(ip) # Get country code from IP address

        html = '<div>'

        html += '<select name="' + name.to_s + '_country_code">'

        Mobit::Core::Country::all_codes.each do |c|
          html += "<option value='#{c.code}' data-trunk-code='#{c.trunk_code}'>"
          # html += " #{'selected="selected"' if c.iso_a2 == cc}>"
          html += "#{c.name} (+#{c.code})</option>"
        end

        html += '</select>'

        html += '<input type="phone" name="' + name.to_s + '" ' + "#{'required="required"' if options.key?(:required) or options.key?('required')}" + '/>'


        html += '</div>'

        html.html_safe
      end

    end
  end
end