class ErrorsController < ApplicationController
  def render_error
    @error = t("errors.not_found")

    render(:layout => "layouts/error")
  end
end
