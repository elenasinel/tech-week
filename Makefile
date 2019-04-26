build:
	mkdocs build
	cp ./site/assets/stylesheets/application.*.css ./site/admin/preview.css
	cp ./site/assets/stylesheets/application-palette.*.css ./site/admin/preview-palette.css
deploy: build
	cd site && find -type f -exec curl -u ${FTP_USER}:${FTP_PASSWORD} --ftp-create-dirs -T {} ${FTP_HOST}{} \;