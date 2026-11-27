Jekyll::Hooks.register :site, :after_init do |site|
  if Jekyll.env == "production"
    paths = [
      "_posts/test/",
      "_projects/test/",
      "_news/test/",
      "_books/test/"
    ]

    site.exclude |= paths
    site.config["exclude"] = site.exclude
  end
end
