# How to contribute

### Sign our Contributor License Agreement (CLA)

Even for small changes, we ask that you please sign the CLA electronically
[here](https://developers.google.com/open-source/cla/individual).
The CLA is necessary because you own the copyright to your changes, even
after your contribution becomes part of our codebase, so we need your permission
to use and distribute your code. You can find more details
[here](https://code.google.com/p/dart/wiki/Contributing). You'll only need to
do this once.

### Contribution Guidelines

We welcome your pull requests, issue reports and enhancement requests. To make
the process as smooth as possible, we request the following:

   * Sign the [CLA](https://cla.developers.google.com/about/google-individual)
     (see above) before sending your pull request. It's quick, we promise!
   * Have test cases for your changes and ensure that the existing ones pass in
     checked mode.
   * Run your changes through `dartfmt`. Follow the installation instructions
     in the [dart_style](https://github.com/dart-lang/dart_style) README for
     more info.
   * Squash your commits into a single commit with a good description. You can
     use `git rebase -i` for this. For more details on rebasing, check out
     Atlassian's
     [tutorial](https://www.atlassian.com/git/tutorials/rewriting-history).
   * During code review, go ahead and pile up commits addressing review
     comments. Once you get an LGTM (looks good to me) on the review, we'll ask
     you to squash your commits one last time, then we'll be good to merge!

### Adding new packages to QuiverDart GitHub org

* [Submit an issue](https://github.com/QuiverDart/quiver/issues/new) with your
  proposal.
* Discuss with QuiverDart owners whether the package belongs under QuiverDart.
  Generally we would accept a new package if:
  - There isn't a good one already in pub
  - The team is willing and able to maintain it
  - It solves a general programming problem, not framework-specific problems
  - It depends on Dart core libraries and/or another Quiver library and nothing
    else
* Have a team member create an empty repository for your package. The package
  must contain:
  - README.md
  - LICENSE containing Apache License version 2.0
  - Travis build configuration and scripts
  - Test coverage configuration and scripts
  - Standard pub directories at the root level and `pubspec.yaml`
  - .gitignore with commonly ignored files
