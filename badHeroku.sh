#!/bin/bash

# unsets the environment variable database_url that heroku uses
# use script if you are making a rails app on machine not on heroku
env --unset=DATABASE_URL "$@"
