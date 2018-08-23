echo "tag: 1.0.4, master" > .git_archival.txt;

"%PYTHON%" -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv
if errorlevel 1 exit 1
