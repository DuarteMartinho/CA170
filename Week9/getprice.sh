LINK="https://bigcharts.marketwatch.com/quickchart/quickchart.asp?symb="
SEARCH_LINK="$LINK$1"
 
wget -q -O tmp.html "$SEARCH_LINK"
cat tmp.html | tr -d '\r\n' > tmp2.html
cat tmp2.html | sed 's|.*Last:</span>||' | sed 's|</div>.*||' | sed 's|.*<div>||'
rm tmp*.html
