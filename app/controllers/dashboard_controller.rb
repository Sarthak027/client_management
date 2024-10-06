class DashboardController < ApplicationController
  before_action :require_user

  def receptionist
    @patients = Patient.all
  end

  def doctor
    @patients_by_day = Patient.group_by_day(:registered_on).count
  end

  private

  def require_user
    redirect_to root_path unless session[:user_id]
  end
end
