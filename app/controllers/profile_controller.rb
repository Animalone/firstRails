class ProfileController < ApplicationController
	def register
		if Profile.where(userName: params[:userName]).blank?
			profile = Profile.new(profile_params)
			if profile.save
				render json:{status:'SUCCESS', message:'Saved Profile', data: profile}, status: :ok
			else
				render json:{status:'ERROR', message:'Not Saved', data: profile.errors}, status: :unprocessable_entity
			end
		else
			render json:{status:'ERROR', message:'Exist user'}, status: :unprocessable_entity
		end
	end
	private

	def profile_params
		params.permit(:userName, :address, :birthDate, :email, :name, :password)
	end
end
