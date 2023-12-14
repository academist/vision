# frozen_string_literal: true

module Vision
  module ApplicationHelper
    def sns_link_tag(sns_link)
      link_to sns_link.url, class: 'text-dark text-decoration-none mb-2', target: :_blank, rel: :noopener do
        tag.i(nil, class: sns_icon_class(sns_link))
      end
    end

    def sns_icon_class(sns_link)
      sns_icons = {
        twitter: 'fab fa-twitter',
        facebook: 'fab fa-facebook',
        instagram: 'fab fa-instagram',
        note: 'far fa-sticky-note',
        linkedin: 'fab fa-linkedin',
        researchmap: 'fas fa-map-marked-alt',
        youtube: 'fab fa-youtube',
        homepage: 'fas fa-globe',
        other: 'fas fa-external-link-alt'
      }
      sns_icons[sns_link.link_type.to_sym]
    end
  end
end
