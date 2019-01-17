# frozen_string_literal: true

# Applicationmailer class
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
