class LoginController < ApplicationController
	def log
		profile = Profile.where(userName: params[:userName]).first
		if profile.password == params[:password]
			render json:{status:'SUCCESS', message:'Found Profile', data: profile}, status: :ok
		else
			render json:{status:'ERROR', message:'Wrong password'}, status: :unprocessable_entity
		end
	end
end
