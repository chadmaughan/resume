Chad Maughan's Resume
=====================

My concise (single page), elegant (at least that's the intent), and light-on-fluff
LaTeX resume (no objective section, no filler). Built as a two-column layout.

📄 **[Download the latest PDF](https://github.com/chadmaughan/resume/releases/latest/download/resume.pdf)** (from the most recent release)

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

Releasing
---------

To publish a frozen, dated snapshot with the compiled PDF attached, cut a
release (requires the [`gh`](https://cli.github.com) CLI). Use a date-based tag:

```sh
git tag vYYYY.MM.DD && git push origin vYYYY.MM.DD
gh release create vYYYY.MM.DD resume.pdf \
  --title "Resume — Month YYYY" \
  --notes "Short changelog for this version."
```

The latest release's PDF is then always downloadable from a stable URL:

```
https://github.com/chadmaughan/resume/releases/latest/download/resume.pdf
```

Cover letter
------------

`cover-letter.tex` is a template stub. To include a cover letter in front of the
resume, build it separately (`pdflatex cover-letter.tex`) and then uncomment the
`\includepdf{cover-letter.pdf}` line near the top of `resume.tex`.
