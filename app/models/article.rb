class Article < ApplicationRecord
    validates :header, :presence => { :message => "Новость должна иметь заголовок!" }
    validates :body, :presence => { :message => "Текст новости не должен быть пустым!" }

    def self.get_latest_articles
        articles = Article.order("articles.created_at DESC").select("id, header, created_at").limit(5)
    end

    def self.get_all_articles
        articles = Article.order("articles.created_at DESC").select("id, header, LEFT(body, 200) as body, created_at")
    end

    def self.get_article_by_name(id)
        article = Article.find_by_id(id)
    end
end
