#!/bin/bash
if [ -f magic.pdf ] ; then
    rm magic.pdf
fi
python -m SimpleHTTPServer 8600 &
pid=$!
phantomjs rasterize.js http://localhost:8600/coloring_states.html magic.pdf
kill $pid
open magic.pdf

