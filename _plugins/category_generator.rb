module Jekyll
  class CategoryPage < Page
    def initialize(site, base, dir, category)
      @site = site
      @base = base
      @dir = dir
      @name = "index.html"

      process(@name)
      read_yaml(File.join(base, "_layouts"), "category.html")
      data["category"] = category
      data["title"] = "Posts in &#8220;#{category.capitalize}&#8221;"
    end
  end

  class CategoryPageGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key?("category")
        dir = site.config["categories_dir"] || "categories"
        site.categories.keys.each do |category|
          page = CategoryPage.new(site, site.source, File.join(dir, category.tr(" ", "-")), category)
          site.pages << page
        end
      end
    end
  end
end
