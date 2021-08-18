source=.
themeDir=themes/

.PHONY: dev, build, clean

dev:
	hugo server -D -v -s ${source} --themesDir ${themeDir}

build:
	hugo --gc --minify -s ${source} --themesDir ${themeDir}
	
clean:
	rm -r ${source}/public