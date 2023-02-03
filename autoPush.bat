:loop
python h.py
python s4.py
python s4a.py
python s5.py
TIMEOUT 2
	::Initialize GitHub
	git init
	
	::Pull any external changes (maybe you deleted a file from your repo?)
	git pull
	
	::Add all files in the directory
	git add --all
	
	::Commit all changes with the message "auto push". 
	::Change as needed.
	git commit -m "auto push"
	
	::Push all changes to GitHub 
	git push

	::Wait 900 seconds until going to the start of the loop.
	::Change as needed.
	TIMEOUT 900
	
::Restart from the top.	
goto loop