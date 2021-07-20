module Jekyll
  module CategoryFilter
    def category_url(category)
      site = @context.registers[:site]
      if site.config['categories_dir']
        "#{site.config['url']}/#{site.config['baseurl']}/#{site.config['categories_dir']}/#{category.tr(' ', '-')}/"
      else
        "#{site.config['url']}/#{site.config['baseurl']}/categories/#{category.tr(' ', '-')}/"
      end.gsub(/\/\/+/).with_index { |_, i| i.zero? ? '//' : '/' }
    end
  end
end

Liquid::Template.register_filter(Jekyll::CategoryFilter)
