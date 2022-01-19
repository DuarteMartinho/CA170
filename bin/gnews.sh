wget https://www.rte.ie/news/
grep $1 index.html --color=auto
rm index.html
