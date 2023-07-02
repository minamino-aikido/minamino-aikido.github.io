#!sh
DRAFTS=--drafts
if [ $# -gt 0 ] && [ $1 = "clean" ]; then
	DRAFTS=
fi
bundle exec jekyll serve $DRAFTS --host 0.0.0.0 --incremental --watch --trace
