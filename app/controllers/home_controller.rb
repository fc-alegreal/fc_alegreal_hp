class HomeController < ApplicationController
  before_action :header_content, only: [:index]

  def index
  end
end
