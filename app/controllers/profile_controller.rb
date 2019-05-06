class ProfileController < ApplicationController
	def register
		profile = Profile.new(profile_params)
		if profile.save
			render json:{status:'SUCCESS', message:'Saved Profile', data: profile}, status: :ok
		else
			render json:{status:'ERROR', message:'Not Saved', data: profile.errors}, status: :unprocessable_entity
		end

		private

		def profile_params
			params.permit(:userName, :address, :birthDate, :email, :name, :password)
		end
	end
end
