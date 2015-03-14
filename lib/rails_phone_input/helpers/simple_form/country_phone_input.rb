#
# при попытке вложить CountryPhoneInput в модули возникали ошибки в строке ( ```error``` )
# f.input :phone, ```as: :country_phone```
#

class CountryPhoneInput < SimpleForm::Inputs::Base

  def input(wrapper_options = nil)
    merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)
    @builder.rails_phone_field(attribute_name, merged_input_options)
  end

end