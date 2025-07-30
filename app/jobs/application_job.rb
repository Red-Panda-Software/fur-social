# frozen_string_literal: true

# The base class for all ActiveJob classes in the application.
# Contains shared configuration and functionality for implementing classes.
class ApplicationJob < ::ActiveJob::Base
  # Automatically retry jobs that encountered a deadlock
  retry_on ::ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  discard_on ::ActiveJob::DeserializationError
end
