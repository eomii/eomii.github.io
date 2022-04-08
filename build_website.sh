#/bin/sh

# Build docs_source.
# bazel build //ll:docs
# chmod 644 bazel-bin/ll/*.md
# cp bazel-bin/ll/*.md docs_source

# Rebuild the Sphinx documentation.
rm -rd site
sphinx-build -b html src site

# Rerun the pre-commit hooks so that we do not need to stage everything twice.
git add site
pre-commit run --all-files
git add site

# Technically unnecessary, but we want to show users whether all tests pass.
echo ""
echo "**************************"
echo "RERUNNING PRE-COMMIT HOOKS"
echo "**************************"
echo ""
pre-commit run --all-files
