The eomii.org website
=====================

This repository contains the website hosted at `<https://eomii.org>`_.

Setup
-----

Install the required python dependencies::

   pip install -r requirements.txt

Install the ``pre-commit`` hooks::

   pre-commit install

Verify that all tools pass without failure on the entire repository::

   pre-commit run --all-files

Rebuilding the website
----------------------

To trigger a rebuild of the website, execute the convenience script::

./build_website.sh

Changing dependencies
---------------------

We currently do not use bazel to generate the docs, but we use ``rules_python``
to generate hash-locked requirement files.

If you change dependencies in ``requirements.in``, rebuild
``requirements.txt``::

   bazel run //:requirements.update
