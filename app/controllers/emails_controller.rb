class EmailsController < ApplicationController
  def create
    mail = Email.new
    if mail.update(email_params)
      redirect_to root_path
      flash[:notice] = "Succesvol geregistreerd"
    else
      redirect_to root_path
      flash[:alert] = "Vul het juiste e-mailadres in aub"
    end
  end

  private

  def email_params
    params.require(:email).permit(:name)
  end
end
