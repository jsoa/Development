
========
SNIPPETS
========

python
======

shebang
-------

::
    #!/usr/bin/env python
    # -*- coding: utf-8 -*-

django
======

django snippets are grouped into a couple different folders and some use the
same key for expansion.

model fields
------------

Includes all the possible model fields, i.e. ``models.CharField(...)``

All the model fields share the key ``models``

form fields
-----------

Inlcudes all the possible form fields, i.e. ``forms.IntegerField(..)``

All the form fields share the key ``forms``

form widgets
------------

Includes all the possible form wigets, i.e. ``forms.PasswordInput``

All the form widgets share the key ``forms`` (same as form fields)

common imports
--------------

Below is a list of all the common imports, which share the key ``django``.

*Note: any text below wrapped with [..] is optional*

* ``django.core.urlresolvers import reverse``
* ``django.db import models``
* ``django.http import [HttpResponse], [HttpResponseRedirect], [Http404]``
* ``django.utils.safestring import mark_safe``
* ``django.utils.translation import ugettext as _``

