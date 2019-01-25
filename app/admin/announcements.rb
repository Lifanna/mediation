ActiveAdmin.register Announcement do
    permit_params do
        permitted = [
            :header,
            :body
        ]
        permitted
    end

    form title: "Изменить" do |f|
        inputs 'Details' do
            input :header, label: "Header"
            input :body, label: "Body"
            li "Created at #{f.object.created_at}" unless f.object.new_record?
        end
        # panel 'Markup' do
        #     "The following can be used in the content below..."
        # end
        para "Press cancel to return to the list without saving."
        actions
    end
end
