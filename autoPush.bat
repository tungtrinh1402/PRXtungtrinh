:loop
python h.py
python s4.py
python s5.py
TIMEOUT 2
del outh.txt
del outs4.txt
del outs5.txt
TIMEOUT 2
ktip.exe -file h.txt -type http -o outh.txt -timeout 15 -workers 900 -silent
ktip.exe -file s4.txt -type socks4 -o outs4.txt -timeout 15 -workers 900 -silent
ktip.exe -file s5.txt -type socks5 -o outs5.txt -timeout 15 -workers 900 -silent
TIMEOUT 2
python removeschema.py
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
	TIMEOUT 1500
	
::Restart from the top.	
goto loop