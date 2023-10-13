class UserMailer < ApplicationMailer
    default from 'notfications@radioclub.com'

    def welcome_email
        @user = params[:user]
        @url = 'http://localhost:3000/users/sign_in' #UPDATE WITH APP LINK
        mail(to: @user.email, subject: 'Welcome to the TAMU Amateur Radio Club Inventory')
    end

    def checkout_email
        @user = params[:user]
        @item = params[:item]
        mail(to: @user.email, subject: 'TAMU Amateur Radio Club Checkout Policy')
    end
end
