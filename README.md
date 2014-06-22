my_places
=========

Mobile-friendly, self-hosted Ruby on Rails app for discovering and organizing places.

The main purpose is to keep places in mind which you see in your every days
life to check them out later. If you see an interesting place, you can easily
add it with your mobile device and put it in a list.

It works similar how the user defined Google Maps maps. But because you have to host
the application yourself, it respects your privacy. And it's easier to use on mobile
devices.

Live demo: http://my-places.naturtrunken.de/

Use case:

* You life in a large city and see sometimes interesting new places (Coffee shops,
  special interest stores, etc.).

* You want to save this places for checking them out later.

* You want a personal, categorized map of known places. Without such a map,
  you would quite often not find the places later anymore.

* You don't want to share this information with the whole world/Google/NSA/...,
  so you hosting the software and database on an own server.

Example:

* You see in the city a new coffee shop.

* You open the application on your mobile device in the browser and add this
  place with a name in a category.

* Later, if you need new beans again, you can find it on your map in the
  chosen category.


## Requirements

* Ruby 2.1

* Rails 4.1

(But it is a very simple project and should be running without problems under older versions.
If you experience some troubles, feel encouraged to open an issue.)


## Installation

* Fork this repository, eg. <code>git clone https://github.com/naturtrunken/my_places</code>.
* Change to the new directory.
* Install the gems with <code>bundle install</code>.
* Create the database with <code>rake db:migrate</code>.
* Start the app with <code>rails s</code>.
* Point your browser to <code>localhost:3000</code>.

Optionally you can change the default map position by changing the coordinates and the zoom
level in the file <code>config/initializers/global.rb</code>.

By default, a SQLite database will be used (stored in the <code>db</code> directory).
By changing <code>conf/databases.yml</code>, you can also use other databases.


## Contributing

* Fork this repository.
* Create a new branch from the <code>develop</code> branch. (Eg. <code>git checkout develop && git checkout -b my-cool-feature</code>.)
* Push it and open a pull request.

If you have the luck to life in Berlin, you can also come to a meetup of the
CodingAmigos @ co.up (http://www.meetup.com/CodingAmigos/). Andreas is quite
often there and would like to improve the app with you^^.


## Licence

2014 Andreas Marc Klingler (http://www.andreas-klingler.de/),
released under the MIT license
