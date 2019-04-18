build:
	mkdocs build
	cp -r ./admin/ ./site/
	cp ./site/assets/stylesheets/application.*.css ./site/admin/preview.css
	cp ./site/assets/stylesheets/application-palette.*.css ./site/admin/preview-palette.css