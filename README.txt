= ruby-rapleaf

* http://github.com/grempe/ruby-rapleaf

== DESCRIPTION:

Rapleaf's goal is to make the internet safe and transparent, by allowing you
to evaluate your web footprint across a variety of user-generated sites.
See http://www.rapleaf.com for more information.

== FEATURES/PROBLEMS:

This library was inspired by the sample code provided by Rapleaf at:

http://trac.rapleaf.com/ruby-api-kit/wiki

The code was extensively re-written so it would work with the current
Rapleaf v2 API and is provided for your use.  Sorry that no support
for this library is currently available.  However, Git pull requests/patches
are accepted.

http://github.com/grempe/ruby-rapleaf

Glenn Rempe
glenn@rempe.us

== SYNOPSIS:

In order to use this API, you will need to get an API Key from Rapleaf. These
can be obtained free at http://www.rapleaf.com/.

To run the samples you will need to put your API Key in the
examples/person.rb file or the examples will fail.

To run any of the examples, simply run it like:

  cd examples
  ruby person.rb

== REQUIREMENTS:

The following gems are required for installation of the ruby-rapleaf gem.

* xml-simple
* builder

== INSTALL:

Install as a Ruby Gem with:

  Update to RubyGems 1.2.0 before proceeding!!

  gem sources -a http://gems.github.com (you only have to do this once)

  sudo gem install grempe-ruby-rapleaf

  # OR

  git clone git://github.com/grempe/ruby-rapleaf.git
  cd ruby-rapleaf
  rake gem
  rake install_gem

== LICENSE:

This software is distributed under the Ruby License.  A copy of which is
provided below.

RUBY LICENSE

Copyright (c) 2008 Glenn Rempe

http://www.ruby-lang.org/en/LICENSE.txt

Ruby is copyrighted free software by Yukihiro Matsumoto <matz@netlab.co.jp>.
You can redistribute it and/or modify it under either the terms of the GPL
(see COPYING.txt file), or the conditions below:

  1. You may make and give away verbatim copies of the source form of the
     software without restriction, provided that you duplicate all of the
     original copyright notices and associated disclaimers.

  2. You may modify your copy of the software in any way, provided that
     you do at least ONE of the following:

       a) place your modifications in the Public Domain or otherwise
          make them Freely Available, such as by posting said
          modifications to Usenet or an equivalent medium, or by allowing
          the author to include your modifications in the software.

       b) use the modified software only within your corporation or
          organization.

       c) rename any non-standard executables so the names do not conflict
          with standard executables, which must also be provided.

       d) make other distribution arrangements with the author.

  3. You may distribute the software in object code or executable
     form, provided that you do at least ONE of the following:

       a) distribute the executables and library files of the software,
          together with instructions (in the manual page or equivalent)
          on where to get the original distribution.

       b) accompany the distribution with the machine-readable source of
          the software.

       c) give non-standard executables non-standard names, with
          instructions on where to get the original software distribution.

       d) make other distribution arrangements with the author.

  4. You may modify and include the part of the software into any other
     software (possibly commercial).  But some files in the distribution
     are not written by the author, so that they are not under this terms.

     They are gc.c(partly), utils.c(partly), regex.[ch], st.[ch] and some
     files under the ./missing directory.  See each file for the copying
     condition.

  5. The scripts and library files supplied as input to or produced as
     output from the software do not automatically fall under the
     copyright of the software, but belong to whomever generated them,
     and may be sold commercially, and may be aggregated with this
     software.

  6. THIS SOFTWARE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR
     IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
     WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
     PURPOSE.
