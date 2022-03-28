#!/bin/bash
if [ "$REPL_SLUG" == 'blog_dev' ]
then
  hugo serve --buildDrafts --buildFuture --bind 0.0.0.0 --port 443 --baseURL https://$REPL_SLUG.$REPL_OWNER.repl.co
else
  hugo serve --bind 0.0.0.0 --port 443 --baseURL https://$REPL_SLUG.$REPL_OWNER.repl.co
fi