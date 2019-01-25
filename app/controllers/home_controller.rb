class HomeController < ApplicationController
  def index
    @articles = Article.get_latest_articles
  end

  def mediation_law
    
  end

  def mediation_code
    
  end

  def scientific_activity
    
  end

  def mediation_courses
    
  end

  def mediation_register
    
  end

  def announcements
    @announcements = Announcement.get_all_announcements.page(params[:page]).per(3)
  end

  def announcement_index
    @announcement = Announcement.get_announcement_by_name(announcement_params)
    if @announcement.nil?
      redirect_to error_path
    end
  end

  def news
    @articles = Article.get_all_articles.page(params[:page]).per(3)
  end

  def news_index
    @article = Article.get_article_by_name(article_params)
    if @article.nil?
      redirect_to error_path
    end
  end

  def error_page
    
  end

  def questions

  end

  def archive
    
  end

  def send_mail
    result = "Произошла ошибка, повторите попытку позднее"
    status = 500
    begin
      UserMailer.send_mail(send_mail_params).deliver
      result = "Ваша заявка успешно отправлена!"
      status = 200
    rescue Net::SMTPAuthenticationError, Net::SMTPServerBusy, Net::SMTPSyntaxError, Net::SMTPFatalError, Net::SMTPUnknownError => e
      result = "Произошла ошибка, повторите попытку позднее"
    end

    respond_to do |format|
      format.json {
        render json: {status: status, result: result}
      }
    end
  end

  private
    def article_params
      params.require(:id)
    end

    def announcement_params
      params.require(:id)
    end

    def send_mail_params
      params.require(:mail).permit(:name, :email, :phone, :message)
    end
end
