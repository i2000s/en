---
title: Secure and Customize github pages with your own domain name
layout: post
category: website
tags:
  - jekyll
---

To setup a secured github page, I have basically followed [this steps](https://blog.cloudflare.com/secure-and-fast-github-pages-with-cloudflare/) with the free service from CloudFlare.
On step 3 of the instruction linked, I have used a more general setting to redirect naked (no www) DNS to the full path based on the trick pointed out by [CloudFlare](https://support.cloudflare.com/hc/en-us/articles/200172286-How-do-I-perform-URL-forwarding-or-redirects-with-CloudFlare-).
The `redirect.html` layout file should have set up the correct 301 permanent redirect to ensure all pages to use `https` protocols in my case, but if your website is hosted on a repo other than your username/organization's github pages repo, you may need to double check if the URL is correct or not in the layout file.

Redirect URLs:
=============
I use the `redirects.rb` plugin as illustrated on [this page](http://www.carlboettiger.info/2012/09/19/migrating-from-wordpress-to-jekyll.html).
Or, you can use the `Jekyll-redirect-from` [plugin](https://github.com/jekyll/jekyll-redirect-from) to forward a previous link to the current URL.
The other option is to simply add the original URL to the *permalinks*: item in the YAML header for each post, and then Jekyll would use that URL instead of the automatically generated permalink structure.
Some of the benefits of sticking to permanent links and more details on keeping links updated using this template can be found on [Carl Boettiger's labnotebook](http://www.carlboettiger.info/2013/05/31/notebook-features-digital-archiving.html).
