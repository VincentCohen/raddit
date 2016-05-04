class ProfileController < ApplicationController

  before_action 'require_user'

  def index
    # displays user profile page http://guides.rubyonrails.org/active_record_querying.html#eager-loading-associations
    @user = User.includes(:posts).find(session[:user_id])
  end

end
