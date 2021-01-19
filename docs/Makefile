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


${SOURCEDIR}/air_openapi.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/air_openapi.yaml $@

${SOURCEDIR}/cast_openapi_v1.0.0.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/cast_openapi_v1.0.0.yaml $@

# ${SOURCEDIR}/grfn_openapi.html:
# 	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_openapi.yaml $@

${SOURCEDIR}/grfn_openapi_v2.1.0.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_openapi_v2.1.0.yaml $@

${SOURCEDIR}/grfn_openapi_v2.2.0.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_openapi_v2.2.0.yaml $@

${SOURCEDIR}/grfn_openapi_v3.0.0.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_openapi_v3.0.0.yaml $@

${SOURCEDIR}/grfn_openapi_metadata.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_openapi_metadata.yaml $@

${SOURCEDIR}/grfn_intersection_graph.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/gfrn_intersection_graph.yaml $@

apidocs: ${SOURCEDIR}/air_openapi.html ${SOURCEDIR}/cast_openapi_v1.0.0.html ${SOURCEDIR}/grfn_openapi_v2.2.0.html ${SOURCEDIR}/grfn_openapi_v3.0.0.html ${SOURCEDIR}/grfn_openapi_metadata.html ${SOURCEDIR}/grfn_intersection_graph.html
	rm -rf generated/
	sphinx-apidoc -o source ../src -f
