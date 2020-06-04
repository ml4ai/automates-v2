# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)


air_openapi.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/air_openapi.yaml $@

grfn_openapi.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_openapi.yaml $@

apidocs:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/air_openapi.yaml ${SOURCEDIR}/air_openapi.html
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_openapi.yaml ${SOURCEDIR}/grfn_openapi.html
# air_openapi.html
# grfn_openapi.html
# rm -rf generated/
# sphinx-apidoc -o source <list of source roots> -f
