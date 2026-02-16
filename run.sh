#!sh
DRAFTS=${DRAFTS:-'--drafts'}
HOST_ADDR=${HOST_ADDR:-'0.0.0.0'}
while [ $# -ge 1 ]; do
	if [ $1 = "renew" ]; then
		rm -rf _site .jekyll-metadata
	elif [ $1 = "renew_all" ]; then
		rm -rf Gemfile.lock vendor _site .jekyll-metadata
	elif [ $1 = "clean" ]; then
		DRAFTS=
	fi
	shift
done
bundle config set path 'vendor'
bundle install && \
	bundle exec jekyll serve $DRAFTS --host=$HOST_ADDR --incremental --watch --trace
