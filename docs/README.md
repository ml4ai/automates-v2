# Adding a new OpenAPI doc

- Ensure you have sphinx; if not, `pip install sphinx`.

- Create .yaml file in source/
- Create .rst file in source/
- Add file item to source/index.rst
- Update Makefile with
  - Create a target (starts with `${SOURCEDIR}/`)
  - Add target to apidocs line
- Run `$ make apidocs`

Protip: use
```cat -e -t -v Makefile```
to ensure that all recipes start with `^I` (tab).
See: https://stackoverflow.com/questions/16931770/makefile4-missing-separator-stop

# On the CI side (e.g., Travis)

From the /docs/ directory:
- mkdir build
- make apidocs  # rebuilds the .html files under /docs/source
- make html     # populates build/

