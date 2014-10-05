html:
	udoc build

pdf:
	udoc build -p

gh-pages:
	make html
	make pdf
	git commit -am "build html"
	git push origin master
	git checkout gh-pages
	git pull origin gh-pages
	git pull origin master
	cp build/index.html index.html
	git commit -am "updated index file"
	git push origin gh-pages
	git checkout master
