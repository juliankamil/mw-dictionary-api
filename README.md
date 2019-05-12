# mw-dictionary-api
## Ruby binding for Merriam-Webster Dictionaries REST APIs

[![Gem Version](https://badge.fury.io/rb/mw-dictionary-api.svg)](http://badge.fury.io/rb/mw-dictionary-api)

The [mw-dictionary-api](http://rubygems.org/gems/mw-dictionary-api) is a Ruby gem that provides Ruby binding for the [Merriam-Webster Dictionaries REST APIs](https://dictionaryapi.com/).

## Installation

To install mw-dictionary-api, run:

    gem install mw-dictionary-api

If not present, the above command will also install rest-client and json gems.

## Usage

```
require 'mw-dictionary-api'

api_key = '...'
word = '...'

dictionary = MwDictionary::Api.new(api_key)

puts dictionary.lookup(word)
```

## Credits

Copyright (c) 2019 [Julian I. Kamil / @juliankamil](https://twitter.com/juliankamil)

## License

The mw-dictionary-api is released under the MIT license, see [LICENSE](https://github.com/juliankamil/mw-dictionary-api/blob/master/LICENSE) for details.
