# encoding: utf-8
module RailsPhoneInput

  class Engine < ::Rails::Engine

    isolate_namespace RailsPhoneInput

    initializer 'rails_phone_input.helpers' do

      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, RailsPhoneInput::Helpers::ViewHelper
        ActionView::Helpers::FormBuilder.send :include, RailsPhoneInput::Helpers::FormBuilder
      end

    end

    initializer 'formtastic.helpers' do
      ActiveSupport.on_load :action_view do
        Formtastic::FormBuilder.send :include, Formtastic::CountryPhone
      end
    end

  end

end