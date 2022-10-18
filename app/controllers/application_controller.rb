class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found


private

    def render_not_found invalid
        render json: { error: "#{invalid.model} not found"},  status: :not_found
    end
end
