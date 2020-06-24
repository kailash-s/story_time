# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'kailashnathan29@gmail.com',
  :api_key => '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',
  :domain => 'yourdomain.com',
  :address => 'smtp.sendgrid.net',
  :port => 465,
  :authentication => :plain,
  :enable_starttls_auto => true
}