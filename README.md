About gmsh
==========

Home: http://geuz.org/gmsh/

Package license: GPL

Feedstock license: BSD 3-Clause

Summary: A three-dimensional finite element mesh generator with built-in pre- and post-processing facilities

Gmsh is a free 3D finite element grid generator with a build-in CAD
engine and post-processor. Its design goal is to provide a fast, light
and user-friendly meshing tool with parametric input and advanced
visualization capabilities. Gmsh is built around four modules:
geometry, mesh, solver and post-processing. The specification of any
input to these modules is done either interactively using the graphical
user interface or in ASCII text files using Gmsh's own scripting
language.


Current build status
====================

Linux: [![Circle CI](https://circleci.com/gh/conda-forge/gmsh-feedstock.svg?style=shield)](https://circleci.com/gh/conda-forge/gmsh-feedstock)
OSX: [![TravisCI](https://travis-ci.org/conda-forge/gmsh-feedstock.svg?branch=master)](https://travis-ci.org/conda-forge/gmsh-feedstock)
Windows: [![AppVeyor](https://ci.appveyor.com/api/projects/status/github/conda-forge/gmsh-feedstock?svg=True)](https://ci.appveyor.com/project/conda-forge/gmsh-feedstock/branch/master)

Current release info
====================
Version: [![Anaconda-Server Badge](https://anaconda.org/guyer/gmsh/badges/version.svg)](https://anaconda.org/guyer/gmsh)
Downloads: [![Anaconda-Server Badge](https://anaconda.org/guyer/gmsh/badges/downloads.svg)](https://anaconda.org/guyer/gmsh)

Installing gmsh
===============

Installing `gmsh` from the `guyer` channel can be achieved by adding `guyer` to your channels with:

```
conda config --add channels guyer
```

Once the `guyer` channel has been enabled, `gmsh` can be installed with:

```
conda install gmsh
```

It is possible to list all of the versions of `gmsh` available on your platform with:

```
conda search gmsh --channel guyer
```




Updating gmsh-feedstock
=======================

If you would like to improve the gmsh recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`guyer` channel, whereupon the built conda packages will be available for
everybody to install and use from the `guyer` channel.
Note that all branches in the conda-forge/gmsh-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](http://conda.pydata.org/docs/building/meta-yaml.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](http://conda.pydata.org/docs/building/meta-yaml.html#build-number-and-string)
   back to 0.