Reevoo
======

Install
-------

    gem install reevoo

Usage
-----

    client = Reevoo::Client.new(YOUR_TRKREF, YOUR_PASWORD)
    client.products # return an array of all products with reviews

Each product has the following methods:

    client.products.each do |product|
      product.sku
      product.number_of_reviews
      product.summary.overall
      product.rating # returns an array of ratings for a product
      product.rating.each do |rating|
        rating.id
        rating.question
        rating.answer
        rating.answer.max
      end
    end

Note on Patches/Pull Requests
-----------------------------

 * Fork the project.
 * Make your feature addition or bug fix.
 * Add tests for it. This is important so I don't break it in a
   future version unintentionally.
 * Commit, do not mess with rakefile, version, or history.
   (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
 * Send me a pull request. Bonus points for topic branches.

Copyright
---------

Copyright (c) 2011 Andrew Nesbitt. See LICENSE for details.