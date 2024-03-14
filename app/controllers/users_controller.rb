class UsersController < ApplicationController
  def show
    @comment = Comment.new
    @user = User.find_by!(username: params.fetch(:username))
  end
end
