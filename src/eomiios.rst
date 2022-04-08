.. _eomiios:

eomiiOS
=======

In order to get the most out of your hardware, we created ``eomiiOS``, a
source-based operating system that is specifically built to run the ``Umii``
infrastructure.

.. image:: _static/eomiios_vs_conventionalos.png

Source-based means that every program you install is tailored to your hardware
and your requirements.

- Programs built for the specific hardware they run on are unconstrained by
  legacy compatibility requirements.
- Modern compilers produce faster, more secure code. We have seen performance
  improvements of up to 30% on the *exact same code*, just from using modern
  compilers that leverage hardware-specific optimizations.
- Being in control of the compilation process means we can easily use modern
  testing methodologies such as runtime sanitizers and automated fuzz testing.
- Compiling from source means being independent from intermediary third-party
  binary providers. Get the latest versions of the software that really matters
  to you months before third party providers update their binaries.


.. admonition:: Technical Details

   ``eomiiOS`` uses the ``GNU`` basline tools. We use the ``Portage`` package
   manager, configured to use a ``Clang/LLVM`` toolchain per default. An
   optional ``gcc`` toolchain is available for for incompatible targets such as
   ``glibc``.

   The ``Linux`` kernel is compiled from the latest stable mainline release,
   using a configuration that fulfills container-based virtualization and
   networking requirements.

   GPU drivers and CPU microcode are set up from binaries as they are only
   distributed in binary form by hardware vendors.

   System-wide SELinux integration is under construction.
