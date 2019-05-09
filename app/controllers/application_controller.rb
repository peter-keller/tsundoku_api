class ApplicationController < ActionController::API
  include Knock::Authenticable

  serialization_scope :view_context

end
