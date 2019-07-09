class Api::V1::AuthController < ApplicationController

  def login
		@user = User.find_by(email: params[:email])

		if @user && @user.authenticate(params[:password])
			token = encode_token(@user.id)

			render json: {user: UserSerializer.new(@user), token: token}
		else
			render json: {errors: "Incorrect Password or Username!"}
		end
	end

	def get_user_from_token
			if curr_user
				render json: curr_user
			else
				render json: {errors: "User not found!"}
			end
	end
end
