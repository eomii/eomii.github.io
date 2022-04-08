#/bin/sh

# Rebuild the Sphinx documentation.
rm -rd docs
sphinx-build -b html src docs

# Rerun the pre-commit hooks so that we do not need to stage everything twice.
git add docs
pre-commit run --all-files
git add docs

# Technically unnecessary, but we want to show users whether all tests pass.
echo ""
echo "**************************"
echo "RERUNNING PRE-COMMIT HOOKS"
echo "**************************"
echo ""
pre-commit run --all-files
