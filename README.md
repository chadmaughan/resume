Chad Maughan's Resume
=====================

My concise (single page), elegant (at least that's the intent), and light-on-fluff
LaTeX resume (no objective section, no filler). Built as a two-column layout.

More about me at [chadmaughan.com](https://chadmaughan.com).

Building
--------

Requires a TeX distribution with a few extra packages. On macOS with
[BasicTeX](https://www.tug.org/mactex/morepackages.html):

```sh
brew install --cask basictex
# open a new shell so the TeX binaries are on your PATH, then:
sudo tlmgr update --self
sudo tlmgr install fontawesome6 tex-gyre sectsty pdfpages enumitem
```

Then build:

```sh
make            # produces resume.pdf
make clean      # removes intermediate build artifacts (keeps resume.pdf)
```

Cover letter
------------

`cover-letter.tex` is a template stub. To include a cover letter in front of the
resume, build it separately (`pdflatex cover-letter.tex`) and then uncomment the
`\includepdf{cover-letter.pdf}` line near the top of `resume.tex`.
