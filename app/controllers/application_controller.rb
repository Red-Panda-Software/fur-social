# frozen_string_literal: true

# The base class for all controllers in the application.
# Shared configuration and functionality should be placed here.
class ApplicationController < ::ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end
