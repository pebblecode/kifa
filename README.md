Knowledge is free again

[![Build Status](https://travis-ci.org/pebblecode/kifa.png?branch=master)](https://travis-ci.org/pebblecode/kifa)

## Data structure

### Lecture

has_one location
has_many users (attendees)
has_one lecturer (user)
has_many resources

id (required, numeric)
title (require, max 200)
lecturer_id (Class User)


### Resources

belongs_to lecture

id (required, numeric)
name (optional, max length xxx)
link (required, validate link)


### Location

has_many lectures

id 


### Users

has_many lectures

id
name





