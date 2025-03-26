(use-modules 
 (haunt asset)
 (haunt builder blog)
 (haunt builder atom)
 (haunt builder assets)
 (haunt reader commonmark)
 (haunt site)
)

(site #:title "Kzoo News"
      #:domain "kzoo.news"
      #:default-metadata
      '((author . "Morgan Kothman")
        (email  . "kzoo.news@proton.me"))
      #:build-directory "docs"
      #:readers (list commonmark-reader)
      #:builders (list (blog)
                       (atom-feed)
                       (atom-feeds-by-tag)
                       (static-directory "images")
		       (static-directory "static" "./")))
