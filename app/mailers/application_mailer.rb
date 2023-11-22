# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'purchase@example.com'
  layout 'mailer'
end
