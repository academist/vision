# frozen_string_literal: true

module Vision
  module ApplicationHelper
    def sns_link_tag(sns_link)
      link_to sns_link.url, class: 'text-dark text-decoration-none mb-2', target: :_blank, rel: :noopener do
        tag.i(nil, class: sns_icon_class(sns_link))
      end
    end

    def regular_format(text)
      sanitized_text = sanitize(text, tags: %w[a i b br], attributes: %w[href])
      html_options = {
        target: '_blank',
        rel: 'noopener',
        style: 'text-decoration: underline; overflow-wrap: anywhere; word-break: break-all;'
      }
      auto_link(simple_format(sanitized_text), html: html_options)
    end

    # rubocop:disable Metrics/MethodLength
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
    # rubocop:enable Metrics/MethodLength

    def research_output_category_label(research_output)
      category_label = I18n.t("vision.researchers.research_outputs.category.#{research_output.category}")
      if research_output.paper?
        review_status = research_output.review_status
        "#{category_label}(#{I18n.t("vision.researchers.research_outputs.review_status.#{review_status}")})"
      else
        category_label
      end
    end

    def research_funding_funder_label(research_funding)
      research_funding.funder || I18n.t("vision.researchers.research_fundings.category.#{research_funding.category}")
    end
  end
end
