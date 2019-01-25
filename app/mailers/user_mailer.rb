class UserMailer < ApplicationMailer
    def send_mail(mail)
        @mail = mail
        # mail(to: "#{mail[:name]} <#{user[:email]}>", subject: "Тіркелуіңізді растаңыз")
        mail(:to => "solano.lifan2@bk.ru", :subject => mail[:message])

        # mail(:to => "margulannurtay@gmail.com", :subject => "Тіркелуіңізді растаңыз")
    end

    def resend_email_again(user)
        @user = user
        mail(to: "#{user[:name]} <#{user[:email]}>", subject: "Тіркелуіңізді қайта растаңыз")
    end

    def send_message_to_user(userParams, receiver)
        @userParams = userParams
        @receiver = receiver
        mail(to: "#{receiver[:name]} <#{receiver[:email]}>", subject: "Жаңа сауал")
    end
end
