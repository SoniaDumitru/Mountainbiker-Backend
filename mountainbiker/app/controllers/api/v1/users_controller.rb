class Api::V1::UsersController < ApplicationController
	def create
		@user = User.new(
			name: params[:name],
			email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      image: params[:image],
      location: params[:location]
		)

		if @user.save
			token = encode_token(@user.id)

			render json: {user: UserSerializer.new(@user), token: token}
		else
			render json: {errors: @user.errors.full_messages}
		end
	end

	def index
		render json: User.all
	end

	def show
		@user = User.find(params[:id])
		if @user
			if curr_user.id == @user.id
				render json: @user
			else
				render json: {errors: "This is not the page you are looking for!"}
			end
		else
			render json: {errors: "User not found!"}
		end
	end

	def destroy
    @user = User.find(params[:id])
    @user.delete
    render json: @user
  end

end
