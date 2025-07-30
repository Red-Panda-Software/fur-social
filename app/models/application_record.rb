# frozen_string_literal: true

# The base class for all ActiveRecord models.
# Contains the model agnostic configuration and defines functionality that is available
# to all inheriting classes.
class ApplicationRecord < ::ActiveRecord::Base
  primary_abstract_class
end
