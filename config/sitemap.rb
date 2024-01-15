# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.koun.online"
SitemapGenerator::Sitemap.compress = false


SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
  I18n.available_locales.each do |locale|
    if locale == I18n.default_locale
      add root_path, :changefreq => 'weekly', :priority => 1.0
    else
      add root_path(locale: locale), :changefreq => 'weekly', :priority => 1.0
      add request_quote_path(locale: locale), :changefreq => 'monthly'
      add portfolio_path(locale: locale), :changefreq => 'monthly'
      add about_us_path(locale: locale), :changefreq => 'monthly'
      add faq_path(locale: locale), :changefreq => 'monthly'
      add contact_path(locale: locale), :changefreq => 'monthly'
      # Ajoutez ici d'autres pages localisées
    end

    # add calendar_path(locale: locale), :changefreq => 'monthly'

    # Autres pages et ressources - ajoutez ici selon vos besoins
    # Par exemple, si vous avez des articles de blog ou des produits, ajoutez-les ici
  end
end
