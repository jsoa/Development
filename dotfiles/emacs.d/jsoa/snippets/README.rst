
========
SNIPPETS
========

Snippets are grouped into a couple different folders and some use the
same key for expansion. Depending on the prompt you are using (im using
``yas/ido-prompt``) you will get something like the following..

.. image:: https://raw.github.com/jsoa/Development/master/dotfiles/emacs.d/jsoa/snippets/snip01.png

.. image:: https://raw.github.com/jsoa/Development/master/dotfiles/emacs.d/jsoa/snippets/snip02.png

Same as above using the drowndown prompt

.. image:: https://raw.github.com/jsoa/Development/master/dotfiles/emacs.d/jsoa/snippets/snip03.png

.. image:: https://raw.github.com/jsoa/Development/master/dotfiles/emacs.d/jsoa/snippets/snip04.png

python
======

Below is a list of key/description of the python-mode specific snippets

shebang
-------

outputs::

    #!/usr/bin/env python
    # -*- coding: utf-8 -*-

try
---

- A simple try .. except .. else statement.
- tab stops:
    - exception: lists out Exception, ValueError, KeyError, IOError and IndexError for you to choose.
    - exception variable: optional, default (, exc)
    - else: optional
    - body: snippet ends in the try body

setup
-----

- A common setup.py, asks for some basic information about the package
- Tab stops:
    - module name
    - package name
    - package url
    - author
    - author email

version
-------

- Common version code
- Tab stops:
    - doc string

exc
---

- Builtin exceptions, also includes common django exceptions


django
======

Below are django specific snippets

settings (settings<TAB>)
------------------------

Includes all django settings including a segment of the docs in comments, here
is an example output for `TEMPLATE_STRING_IF_INVALID`::

# Output, as a string, that the template system should use for invalid
# (e.g. misspelled) variables. See How invalid variables are handled.
TEMPLATE_STRING_IF_INVALID = ''

model fields (models<TAB>)
--------------------------

Includes all the possible model fields, i.e. ``models.CharField(...)``

All the model fields share the key ``models``

form fields (forms<TAB>)
------------------------

Inlcudes all the possible form fields, i.e. ``forms.IntegerField(..)``

All the form fields share the key ``forms``

form widgets (forms<TAB>)
-------------------------

Includes all the possible form wigets, i.e. ``forms.PasswordInput``

All the form widgets share the key ``forms`` (same as form fields)

views (views<TAB>)
------------------

View specific snippets

- imports: (includes a couple common view imports)
- basic view: a simple view function
- postview: a simple view function that only allows `POST`
- getview: a simple view function that only allows `GET`
- staffview: a simple view function that only allows staff members


other (django<TAB>)
-------------------

Below is a list of all the common snuppets, which share the key ``django``.

**common imports**

* ``django.core.urlresolvers import reverse``
* ``django.db import models``
* ``django.http import [HttpResponse], [HttpResponseRedirect], [Http404]``
* ``django.utils.safestring import mark_safe``
* ``django.utils.translation import ugettext as _``

**apps**

- key: ``settings`` - this outputs a common way to structure app settings, here is an example output

::

    #!/usr/bin/env python
    # -*- coding: utf-8 -*-
    import warnings

    from django.conf import settings

    DEFAULT_SETTINGS = {
        'DEBUG': False
    }

    USER_SETTINGS = getattr(settings, 'MYPACKAGE_SETTINGS', {})

    error_str = "settings.%s is deprecated; use settings.MYPACKAGE_SETTINGS instead."
    if hasattr(settings, 'MYPACKAGE_DEBUG'):
        warnings.warn(error_str % 'MYPACKAGE_DEBUG', DeprecationWarning)
        DEFAULT_SETTINGS['DEBUG'] = getattr(settings, 'MYPACKAGE_SETTING') or []

    DEFAULT_SETTINGS.update(USER_SETTINGS)
    globals().update(DEFAULT_SETTINGS)
