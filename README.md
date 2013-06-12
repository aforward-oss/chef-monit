# Overview #
Chef cookbook for the [monit](http://mmonit.com/monit/) monitoring and management tool.

# How to add to your cookbook repository #

Use a git submodules so that you can monitor changes.

For more info, check out the [Pro Git](http://progit.org/book/ch6-6.html) book.

```
cd YOUR_CHEF_REPO_ROOT
git submodule add https://github.com/aforward/chef-monit.git cookbooks/monit
```

History
=======

2013-06-11
------------
Updated to use upstart, and the latest monit 5.5.1
