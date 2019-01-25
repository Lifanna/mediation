class Announcement < ApplicationRecord
    validates :header, :presence => { :message => "Объявление должно иметь заголовок!" }
    validates :body, :presence => { :message => "Текст объявления не должен быть пустым!" }

    def self.get_all_announcements
        articles = Announcement.order("announcements.created_at DESC").select("id, header, body, created_at")
    end

    def self.get_announcement_by_name(id)
        article = Announcement.find_by_id(id)
    end
end
