---
title: Secure and Customize github pages with your own domain name
layout: post
category: website
tags:
  - jekyll
---

To setup a secured github page, I have basically followed [this steps](https://blog.cloudflare.com/secure-and-fast-github-pages-with-cloudflare/) with the free service from CloudFlare.
On step 3 of the instruction linked, I have used a more general setting to redirect naked (no www) DNS to the full path based on the trick pointed out by [CloudFlare](https://support.cloudflare.com/hc/en-us/articles/200172286-How-do-I-perform-URL-forwarding-or-redirects-with-CloudFlare-).
The `redirect.html` layout file should have set up the correct 301 permanent redirect to ensure all pages to use `https` protocols in my case, but if your website is hosted on a repo other than your username/organization's github pages repo, you may need to double check if the url is correct or not in the layout file. 
