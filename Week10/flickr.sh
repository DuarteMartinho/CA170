LINK="https://api.flickr.com/services/feeds/photos_public.gne?format=json&tags="
SEARCH_LINK="$LINK$1"

wget -q -O - "$SEARCH_LINK" |
    grep -i "\"description\": \" .*\"" |
    sed 's|/p>",|/p>|' |
    sed 's|.*\": \" <p>| <p>|' |
    tr -d '\\' > $HOME/flickr.html