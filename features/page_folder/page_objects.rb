class Survey
  include PageObject

  page_url 'bit.ly/manifest-watir-survey2'

  text_field(:name, :class => 'quantumWizTextinputPaperinputInput exportInput')
  select(:language, :id => 'Ruby')
  button(:submit, :name=> 'submit')
end

class SurveyResult
  include pageObject

  div(:response, :xpath => '//div[@class="ss-custom-resp"]')
end