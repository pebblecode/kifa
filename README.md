Knowledge is free again

[![Build Status](https://travis-ci.org/pebblecode/kifa.png?branch=master)](https://travis-ci.org/pebblecode/kifa)

## Data structure

### Lecture

has_one location
has_many users (attendees)
has_one lecturer (user)
has_many resources

### Resources

id (required, numeric)
name (optional, max length xxx)
link (required, validate link)

belongs_to lecture

### Location

has_many lectures

### Users

has_many lectures




