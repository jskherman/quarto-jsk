serve:
	quarto preview

render:
	quarto render

deploy:
	xcopy /s/e/h/y/v assets E:\OneDrive\Documents\Archive\others\quarto-jsk && quarto render

save:
	xcopy /s/e/h/y/v assets E:\OneDrive\Documents\Archive\others\my-notes && quarto render
	# robocopy assets E:\OneDrive\Documents\Archive\others\my-notes /s /mir /mt;