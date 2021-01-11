# Adding a new OpenAPI doc

- Create .yaml file in source/
- Create .rst file in source/
- Add file item to source/index.rst
- Update Makefile with
  - Create a target (starts with `${SOURCEDIR}/`)
  - Add target to apidocs line
- Run `$ make apidocs`


# On the CI side (e.g., Travis)

From the /docs/ directory:
- mkdir build
- make apidocs  # rebuilds the .html files under /docs/source
- make html     # populates build/

