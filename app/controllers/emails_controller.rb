class EmailsController < ApplicationController
  def create
    Email.create(email_params)
    redirect_to root_path
    flash[:notice] = "Succesvol geregistreerd"
  end

  private

  def email_params
    params.require(:email).permit(:name)
  end
end
