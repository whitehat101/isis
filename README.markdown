# Run Your own Chat Bot on HipChat / Campfire

  Tested with:

  * 1.8.7-p371 (use xmpp4r ruby-1.8.7 branch / utf-8 exceptions)
  * 1.9.2-p320
  * 1.9.3-rc1
  * jruby-1.7.0
  * jruby-1.7.2

# Services

  * hipchat: xmppr4 works on **MRI/jRuby**
    * UTF-8 bugs recently fixed!
    * *Huge thanks to hoxworth for his work on xmpp4r!*

  * hipchat-smackr: **jRuby** only (experimental)
    * crashes network disconnects
    * works with UTF-8

  * campfire: MRI/? -- I don't think Campfire support has been tested in over a year.

# Instructions

1. Copy config.yml.example to config.yml

        # config.yml

        ## SERVICES ##
        # Supported values: hipchat, campfire, hipchat-smackr
        service: hipchat

        ## HIPCHAT SETTINGS ##
        hipchat:
          jid: DDDD_XXXXX@chat.hipchat.com
          name: Full Name
          password: <password>
          history: 3 # num of history fields to request
          rooms:
            - DDDD_room_name@conf.hipchat.com
            # - DDDD_second_room_name@conf.hipchat.com

        ## CAMPFIRE SETTINGS ##
        campfire:
          subdomain: subdomain  # from subdomain.campfirenow.com
          # auth_mode: Can use API key or username/password.
          # Supported values: api, username
          auth_mode: api
          api_key: api_key_goes_here  # enter if using "api" auth_mode
          username: username          # enter if using "username" auth_mode
          password: password          # also enter if using "username" auth_mode
          room: room_name             # only supports one room for campfire
          ssl: true

        ## BOT SETTINGS ##
        bot:
          hello: Mainframe: ONLINE
          goodbye: NO CARRIER

        ## PLUGIN SETTINGS ##
        enabled_plugins:
          - HipRepeater
          - RandomResponses

          - Archer
          - Bash
          - Futurama
          - LikeABoss
          - Olaf
          - PennyArcade
          - QuickMeme
          - WalMart
          - XKCD
          # - EpicFail
          # - FML
          # - TWSS

1. Add credentials to config.yml, configure plugins to load
1. [MRI] Start the ISIS Daemon in the foreground ``bin/isis run`` or in the background ``bin/isis start``

        Usage: isis <command> <options> -- <application options>

        * where <command> is one of:
          start         start an instance of the application
          stop          stop all instances of the application
          restart       stop all instances and restart them afterwards


1. [jRuby] Start the ISIS Daemon or in the foreground ``bundle exec bin/isis-run.rb`` or in the background ``bundle exec bin/isis`` (no args yet)

  * jRuby background/daemon support is new/minimal (early 2013)
