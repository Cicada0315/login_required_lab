class SecretsController < ApplicationController
  before_action :require_login, only: [:show]
  def new
  end

  def show
  end
    
  private
  def require_login
    if current_user==nil || current_user==' '
      redirect_to '/login'
    else
      @current_user=current_user
    end
    #redirect_to '/login' unless session.include? :name
  end
end
