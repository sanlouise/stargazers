class ProfilesController < ApplicationController  

  before_action :set_profile
  
  
  def show
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to @profile, notice: 'Profile was updated successfully.'
    else
      render :edit
    end
  end

  private

    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :nationality, :bio, :image)
    end

end