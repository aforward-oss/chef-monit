# Overview #
Chef cookbook for the [monit](http://mmonit.com/monit/) monitoring and
management tool.

# How to add to your cookbook repository #

## Track upstream changes via git ##
I use git submodules for my chef repos so I can push/pull changes with minimal
hassle.

For more info, check out the [Pro Git](http://progit.org/book/ch6-6.html) book.

#### Add the monit repo ####

    $ cd YOUR_REPO_ROOT
    $ git submodule add git://github.com/aforward/chef-monit.git cookbooks/monit

History
=======

2013-06-11
------------
Updated to use upstart, and the latest monit 5.5.1

version 0.7.1
-------------
 * add name to metadata.rb.  Thanks Chulki Lee (https://github.com/chulkilee)

version 0.7
-----------
 * create /etc/monit/conf.d.  Thanks Karel Minarik (https://github.com/karmi)

version 0.6
-----------
 * Released to github
 * Defaults no alert on ACTION event.
   When you manually stop/start a service, alerting me about what I just did isn't useful.

