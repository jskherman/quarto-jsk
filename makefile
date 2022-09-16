serve:
	quarto preview

render:
	quarto render

deploy:
	xcopy /s/e/h/y/v assets E:\OneDrive\Documents\Archive\others\quarto-jsk\assets && xcopy /s/e/h/y/v blog E:\OneDrive\Documents\Archive\others\quarto-jsk\blog && quarto render && quarto publish netlify --no-prompt --no-browser

save:
	xcopy /s/e/h/y/v assets E:\OneDrive\Documents\Archive\others\quarto-jsk\assets && xcopy /s/e/h/y/v blog E:\OneDrive\Documents\Archive\others\quarto-jsk\blog && quarto render
# robocopy assets E:\OneDrive\Documents\Archive\others\my-notes /s /mir /mt;