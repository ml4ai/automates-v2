# Adding a new OpenAPI doc

- Create .yaml file in source/
- Create .rst file in source/
- Add file item to index.rst
- Update Makefile with
  - Create a target (starts with `${SOURCEDIR}/`)
  - Add target to apidocs line
- Run `$ make apidocs`

