# Nectarguide
Nectarguide is a Ruby on Rails engine (gem) that adds an autosuggest search feature to apps using the [Project Blacklight gem](http://projectblacklight.org/). It helps library users better find what they are looking for.

The engine is named for patterns found on flowers, called [nectar guides](https://en.wikipedia.org/wiki/Nectar_guide), that help pollinators find what they are looking for. Flower nectar guides are often visible under ultraviolet light (black light).

## Video demo
[![Nectarguide video demo](http://img.youtube.com/vi/J9Zo9bbPTlg/0.jpg)](http://www.youtube.com/watch?v=J9Zo9bbPTlg "Nectarguide")

## Usage
Nectarguide provides search suggestions based upon user-entered strings. The suggestsions are divided into Subject, Author, Location, Genres, etc.

Here is how it looks in action:
![Image of Nectarguide being used](https://raw.githubusercontent.com/LD4P/nectarguide/master/app/assets/images/nectarguide/usage.png)

Nectarguide is intended for any library catalog or repository app that uses Blacklight.

## Installation

### Get the code
You will have to add the Nectarguide gem to a gem source, or clone the repository into your filesystem.

### Add to Gemfile
Add this line to your application's Gemfile, somewhere above the line that installs Blacklight:

```ruby
gem 'nectarguide', :path => "../"
```
If you have cloned the gem, you will have to include the path to the location in which you cloned the gem. If not, you may omit the `:path` portion.

### Point to a Solr URL

In your project's .env file, specify a Solr endpoint that will produce requests according to the engine's expectations:
```
AUTOSUGGEST_URL=http://test.edu:8983/solr
```

### Add JavaScript
Add these lines to your app's app/assets/javascripts/applicaiton.js file:
```javascript
//= require blacklight/autosuggest.js
//= require jquery-ui/widgets/autocomplete
```
The second line, which adds a jQuery library, only need be added if not already present.


### Add the stylesheets
4. Add this to your app's app/assets/stylesheets/application.css.scss file:
```ruby
 /*
 *= require 'jquery-ui.min.css'
 */

  @import "search-form";
```
Once again, you don't need to add the jQuery part if your applicaiton is already using jQuery-


## Contributing
Get in touch with <http://ld4p.org/> to learn more. This repo was started by [John Skiles Skinner](https://johnskinnerportfolio.com/) using code written by Tim Worrall and Huda Khan as part of the LD4P grant, funded by the Andrew W. Mellon Foundation.

## License
Open source under the [MIT License](https://opensource.org/licenses/MIT).
