# Nectarguide
Nectarguide is a Ruby on Rails gem / engine that adds an autosuggest search feature to apps using the [http://projectblacklight.org/](Project Blacklight gem).

## Usage
How to use my plugin.

## Installation
1. You will have to add the Nectarguide gem to a gem source, or clone the repository into your filesystem. 

2. Add this line to your application's Gemfile, somewhere above the line that installs Blacklight:

```ruby
gem 'nectarguide', :path => "/Users/username/Projects/"
```
If you have cloned the gem, you will have to include the path to the location in which you cloned the gem. If not, you may omit the `:path` portion.

3. Add these lines to your app's applicaiton.js file:
```javascript

```

4. Add this to your app's application.css.scss file:
```ruby
 /*
 *= require 'jquery-ui.min.css'
 */

  @import "search-form";
```


## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
