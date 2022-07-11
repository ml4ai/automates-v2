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

# ASKEM

${SOURCEDIR}/cast_v1.2.0.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/cast_v1.2.0.yaml $@

${SOURCEDIR}/gromet_FN_v0.1.1.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/gromet_FN_v0.1.1.yaml $@

${SOURCEDIR}/gromet_metadata_v0.1.0.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/gromet_metadata_v0.1.0.yaml $@

# Legacy ASKE

${SOURCEDIR}/air.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/air.yaml $@

${SOURCEDIR}/cast_v1.0.0.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/cast_v1.0.0.yaml $@

${SOURCEDIR}/grfn_v2.2.0.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_v2.2.0.yaml $@

${SOURCEDIR}/grfn_v3.0.0.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_v3.0.0.yaml $@

${SOURCEDIR}/grfn_metadata.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_metadata.yaml $@

${SOURCEDIR}/grfn_intersection_graph.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/gfrn_intersection_graph.yaml $@

${SOURCEDIR}/grfn_api_v1.0.0.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_api_v1.0.0.yaml $@

${SOURCEDIR}/gromet_v0.0.1.html:
	python3 swagger-yaml-to-html.py ${SOURCEDIR}/gromet_v0.0.1.yaml $@

apidocs: ${SOURCEDIR}/cast_v1.2.0.html ${SOURCEDIR}/gromet_FN_v0.1.1.html ${SOURCEDIR}/gromet_metadata_v0.1.0.html ${SOURCEDIR}/air.html ${SOURCEDIR}/cast_v1.0.0.html ${SOURCEDIR}/grfn_v2.2.0.html ${SOURCEDIR}/grfn_v3.0.0.html ${SOURCEDIR}/grfn_metadata.html ${SOURCEDIR}/grfn_intersection_graph.html ${SOURCEDIR}/gromet_v0.0.1.html ${SOURCEDIR}/grfn_api_v1.0.0.html
	rm -rf generated/
	sphinx-apidoc -o source ../src -f


# DEPRECATED
# ${SOURCEDIR}/grfn_openapi.html:
# 	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_openapi.yaml $@
# ${SOURCEDIR}/grfn_openapi_v2.1.0.html:
# 	python3 swagger-yaml-to-html.py ${SOURCEDIR}/grfn_openapi_v2.1.0.yaml $@

