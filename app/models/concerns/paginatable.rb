module Paginatable
  extend ActiveSupport::Concern

  module ClassMethods
    def paginate(paginatable_params)
      if paginatable_params[:all]
        return self.all
      end

      return self
        .page(paginatable_params[:page])
        .per(paginatable_params[:per_page])
    end
  end
end
