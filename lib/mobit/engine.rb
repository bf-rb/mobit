# encoding: utf-8
module Mobit

  class Engine < ::Rails::Engine

    isolate_namespace Mobit

    initializer 'mobit.helpers' do

      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, Mobit::Helpers::ViewHelper
        ActionView::Helpers::FormBuilder.send :include, Mobit::Helpers::FormBuilder
      end

    end

    initializer 'formtastic.helpers' do
      ActiveSupport.on_load :action_view do
        Formtastic::FormBuilder.send :include, Formtastic::CountryPhone
      end
    end

  end

end