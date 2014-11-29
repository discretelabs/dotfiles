#### Create gem
* Build gem
  *`gem build hola.gemspec`
* Install gem locally
  *`gem install ./hola-0.0.0.gem`
* Push gem to RubyGems.org
  *`gem push hola-0.0.0.gem`


#### Strings
* Convert breaking space to empty string `string.gsub(/\u00a0/, ' ')``
