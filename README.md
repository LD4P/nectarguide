# Nectarguide
Nectarguide is a Ruby on Rails gem / engine that adds an autosuggest search feature to apps using the [Project Blacklight gem](http://projectblacklight.org/).

## Usage
How to use my plugin.

## Installation
1. You will have to add the Nectarguide gem to a gem source, or clone the repository into your filesystem. 

2. Add this line to your application's Gemfile, somewhere above the line that installs Blacklight:

```ruby
gem 'nectarguide', :path => "../"
```
If you have cloned the gem, you will have to include the path to the location in which you cloned the gem. If not, you may omit the `:path` portion.

3. Add these lines to your app's app/assets/javascripts/applicaiton.js file:
```javascript
//= require blacklight/autosuggest.js
//= require jquery-ui/widgets/autocomplete
```
The second line only need be added if not already present.

4. Add this to your app's app/assets/stylesheets/application.css.scss file:
```ruby
 /*
 *= require 'jquery-ui.min.css'
 */

  @import "search-form";
```


## Contributing
Get in touch with <http://ld4p.org/> to learn more.

## License
Open source under the [MIT License](https://opensource.org/licenses/MIT).
