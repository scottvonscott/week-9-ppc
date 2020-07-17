module PartiesHelper

    def private?(party)
        party.private ? content_tag(:strong, "Private") : content_tag(:i, 'Public')
    end

end
