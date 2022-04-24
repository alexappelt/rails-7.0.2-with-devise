# frozen_string_literal: true

class Usuarios::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  #

  #skip_before_action :require_no_authentication, only: :edit Apenas remover comentarios se precisar trocar a senha (Similar a rota do email, com token)
  #skip_before_action :assert_reset_token_passed, only: :edit

   def new
     super
   end

  # POST /resource/password
   def create
     super
   end

  # GET /resource/password/edit?reset_password_token=abcdef
  def edit
    super
  end

  # PUT /resource/password
   def update
     super
   end

   protected

   def after_resetting_password_path_for(resource)
     binding.pry
     super(resource)
   end

  # The path used after sending reset password instructions
   def after_sending_reset_password_instructions_path_for(resource_name)
     binding.pry
     super(resource_name)
   end
end
