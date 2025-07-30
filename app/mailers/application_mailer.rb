# frozen_string_literal: true

# The base class for all ActionMailer implementations.
# Contains shared logic for inheriting classes and configuration settings.
class ApplicationMailer < ::ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
