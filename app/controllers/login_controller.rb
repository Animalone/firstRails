class LoginController < ApplicationController
	def log
		profile = Profile.where(userName: params[:userName]).first
		if profile.password == params[:password]
			render json:{status:'SUCCESS', message:'Found Profile', data: profile, headers:{
							"Content-Type":'application/json',
							"Access-Control-Allow-Origin":"*"
						}}, status: :ok
		else
			render json:{status:'ERROR', message:'Wrong password', headers:{
							"Content-Type":'application/json',
							"Access-Control-Allow-Origin":"*"
						}}, status: :unprocessable_entity
		end
	end
end
