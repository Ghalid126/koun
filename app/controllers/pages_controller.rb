class PagesController < ApplicationController

  def index
    set_meta_tags title: I18n.t('meta.home.title'),
                  description: I18n.t('meta.home.description'),
                  keywords: I18n.t('meta.home.keywords'),
                  og: {
                    title: I18n.t('meta.home.og.title'),
                    description: I18n.t('meta.home.og.description'),
                    type: I18n.t('meta.home.og.type'),
                    url: I18n.t('meta.home.og.url'),
                    image: 'https://www.koun.online/favicon.png', # Remplacez par l'URL de l'image que vous souhaitez afficher
                    site_name: 'koun.online'
                  },
                  twitter: {
                    card: I18n.t('meta.home.twitter.card'),
                    site: '@koun_online', # Remplacez par votre handle Twitter si vous en avez un
                    title: I18n.t('meta.home.twitter.title'),
                    description: I18n.t('meta.home.twitter.description'),
                    image: 'https://www.koun.online/favicon.png' # Remplacez par l'URL de l'image Twitter spécifique
                  }
  end

  def quote_step1
    set_meta_tags title: I18n.t('meta.quote.title'),
              description: I18n.t('meta.quote.description'),
              keywords: I18n.t('meta.quote.keywords'),
              og: {
                title: I18n.t('meta.quote.og.title'),
                description: I18n.t('meta.quote.og.description'),
                url: I18n.t('meta.quote.og.url'),
                type: I18n.t('meta.quote.og.type')
              },
              twitter: {
                card: I18n.t('meta.quote.twitter.card'),
                title: I18n.t('meta.quote.twitter.title'),
                description: I18n.t('meta.quote.twitter.description')
              }


  end

  def portfolio
    set_meta_tags title: I18n.t('meta.portfolio.title'),
    description: I18n.t('meta.portfolio.description'),
    keywords: I18n.t('meta.portfolio.keywords'),
    og: {
      title: I18n.t('meta.portfolio.og.title'),
      description: I18n.t('meta.portfolio.og.description'),
      type: I18n.t('meta.portfolio.og.type'),
      url: I18n.t('meta.portfolio.og.url'),
      image: 'https://www.koun.online/favicon.png', # Remplacez par l'URL de l'image que vous souhaitez afficher
      site_name: 'koun.online'
    },
    twitter: {
      card: I18n.t('meta.portfolio.twitter.card'),
      site: '@koun_online', # Remplacez par votre handle Twitter si vous en avez un
      title: I18n.t('meta.portfolio.twitter.title'),
      description: I18n.t('meta.portfolio.twitter.description'),
      image: 'https://www.koun.online/favicon.png' # Remplacez par l'URL de l'image Twitter spécifique
    }
  end

  def about
    set_meta_tags title: I18n.t('meta.about.title'),
              description: I18n.t('meta.about.description'),
              keywords: I18n.t('meta.about.keywords'),
              og: {
                title: I18n.t('meta.about.og.title'),
                description: I18n.t('meta.about.og.description'),
                url: I18n.t('meta.home.about.url'),
                type: I18n.t('meta.about.og.type')
              },
              twitter: {
                card: I18n.t('meta.about.twitter.card'),
                title: I18n.t('meta.about.twitter.title'),
                description: I18n.t('meta.about.twitter.description')
              }

  end

  def contact
    set_meta_tags title: I18n.t('meta.contact.title'),
              description: I18n.t('meta.contact.description'),
              keywords: I18n.t('meta.contact.keywords'),
              og: {
                title: I18n.t('meta.contact.og.title'),
                description: I18n.t('meta.contact.og.description'),
                url: I18n.t('meta.contact.og.url'),
                type: I18n.t('meta.contact.og.type')
              },
              twitter: {
                card: I18n.t('meta.contact.twitter.card'),
                title: I18n.t('meta.contact.twitter.title'),
                description: I18n.t('meta.contact.twitter.description')
              }

  end

  def faq
    set_meta_tags title: I18n.t('meta.faq.title'),
                  description: I18n.t('meta.faq.description'),
                  keywords: I18n.t('meta.faq.keywords'),
                  og: {
                    title: I18n.t('meta.faq.og.title'),
                    url: I18n.t('meta.home.faq.url'),
                    description: I18n.t('meta.faq.og.description'),
                    type: 'website'
                  },
                  twitter: {
                    card: 'summary_large_image',
                    title: I18n.t('meta.faq.twitter.title'),
                    description: I18n.t('meta.faq.twitter.description')
                }
      end

end
