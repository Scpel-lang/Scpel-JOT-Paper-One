# Template directory for Scpel JOT Paper 1.

This package provides the LaTeX files necessary to typeset the first paper of Scpel for submission to the [Journal of Object Technology (JOT)](http://www.jot.fm).

## Prerequisites and Paper generation.
 PDF generation depends on Lualatex: I can't seem to find the most appropriate tex module to install for proper generation without break
 however, you can simply just install all the latex packages (Well assuming space is not an issue!) by:

`$ sudo apt-get install texlive-full`

to install everything. Now from the root tree: (using GNU Make: `$ sudo apt-get install make`)

`$ make paper`

Which will generate the actual paper in the directory paper/ and:

`$ make realclean` 

to clean everything generated from the build.

### Remarks
To Joannah Nanjekye


