build:
	mkdocs build
	cp ./site/assets/stylesheets/application.*.css ./site/admin/preview.css
	cp ./site/assets/stylesheets/application-palette.*.css ./site/admin/preview-palette.css