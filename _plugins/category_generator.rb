module Jekyll
  class CategoryPage < Page
    def initialize(site, base, dir, category)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'category.html')
      self.data['category'] = category
      self.data['title'] = "Posts in &#8220;#{category.capitalize}&#8221;"
    end
  end

  class CategoryPageGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key?('category')
        dir = site.config['categories_dir'] || 'categories'
        site.categories.keys.each { |category| site.pages << CategoryPage.new(site, site.source, File.join(dir, category.tr(' ', '-')), category) }
      end
    end
  end
end
