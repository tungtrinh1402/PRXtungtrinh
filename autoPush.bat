:loop
python h.py
python s4.py
python s5.py
TIMEOUT 2
del outh.txt
del outs4.txt
del outs5.txt
TIMEOUT 2
python kiemtrah.py 50 h.txt socks
python kiemtras4.py 50 s4.txt socks
python kiemtras5.py 50 s5.txt socks
TIMEOUT 2
	:: Navigate to the directory you wish to push to GitHub
	::Change <path> as needed. Eg. C:\Users\rich\Desktop\Writings
	cd C:\Users\Administrator\Desktop\TOOL VIA ACC\CÀO PROXY\PRXtungtrinh
	
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
	
	::Alert user to script completion and relaunch.
	echo Complete. Relaunching...
	
	::Wait 900 seconds until going to the start of the loop.
	::Change as needed.
	TIMEOUT 3000
	
::Restart from the top.	
goto loop