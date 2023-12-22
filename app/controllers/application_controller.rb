class ApplicationController < ActionController::Base
  include Internationalization

  before_action :set_tags

  def set_tags
    set_meta_tags title: I18n.t('meta.application.title'),
                  description: I18n.t('meta.application.description'),
                  keywords: I18n.t('meta.application.keywords'),
                  og: {
                    title: I18n.t('meta.application.og.title'),
                    description: I18n.t('meta.application.og.description'),
                    type: I18n.t('meta.application.og.type'),
                    url: 'https://www.koun.online',
                    image: 'https://www.koun.online/favicon.png', # Remplacez par l'URL de votre image par défaut pour Open Graph
                    site_name: 'koun.online'
                  },
                  twitter: {
                    card: I18n.t('meta.application.twitter.card'),
                    site: '@koun_online', # Remplacez par votre handle Twitter si vous en avez un
                    title: I18n.t('meta.application.twitter.title'),
                    description: I18n.t('meta.application.twitter.description'),
                    image: 'https://www.koun.online/favicon.png' # Remplacez par l'URL de votre image Twitter par défaut
                  }
  end
end
