module Jekyll
  class TagPage < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = "index.html"

      process(@name)
      read_yaml(File.join(base, "_layouts"), "tag.html")
      data["tag"] = tag
      data["title"] = "Posts tagged with &#8220;#{tag}&#8221;"
    end
  end

  class TagPageGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key?("tag")
        dir = site.config["tags_dir"] || "tags"
        site.tags.keys.each do |tag|
          page = TagPage.new(site, site.source, File.join(dir, tag.tr(" ", "-")), tag)
          site.pages << page
        end
      end
    end
  end
end
