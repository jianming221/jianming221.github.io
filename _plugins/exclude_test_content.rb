Jekyll::Hooks.register :site, :after_init do |site|
  if Jekyll.env == "production"
    paths = [
      "_posts/test/",
      "_projects/test/"
    ]

    site.exclude |= paths
    site.config["exclude"] = site.exclude
  end
end
