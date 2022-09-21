serve:
	quarto preview 

render:
	quarto render && python postrender.py

deploy:
	xcopy /s/e/h/y/v assets E:\OneDrive\Documents\Archive\others\quarto-jsk\assets && xcopy /s/e/h/y/v blog E:\OneDrive\Documents\Archive\others\quarto-jsk\blog && quarto render && quarto publish netlify --no-prompt --no-browser && python postrender.py

save:
	xcopy /s/e/h/y/v assets E:\OneDrive\Documents\Archive\others\quarto-jsk\assets && xcopy /s/e/h/y/v blog E:\OneDrive\Documents\Archive\others\quarto-jsk\blog && quarto render && python postrender.py
# robocopy assets E:\OneDrive\Documents\Archive\others\my-notes /s /mir /mt;