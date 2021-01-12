Option 1: Copy and Paste

Start fresh from Github,
create new repo, 
initialize with a readme/gitignore/MIT license
Then clone the repo   <git clone <url.git>>
Then copy/move your existing files/folders into repo
<git add .> => the (.) is add all files
<git commit -m "useful message">
<git push -u origin main> => "-u origin main" sets default push to origin


Option 2: Add Remote
Initialize Github Repo
Inside your local dir run:  <git init>
Add remote upstream:        <git remote add [repo url from clone]>
<git add .>
<git commit -m "useful message">
<git push -u origin main> => "-u origin main" sets default push to origin


To save work to github:
<git add .>
<git commit -m "commit message">
<git push> 

If you want to add a add branch:
<git checkout -b [branch-name]>

Change Branch
<git checkout [branch-name]>

See List of Branches
<git branches>

Check status 
<git status>

<learn test> => <git add . && git commit -m "done" && git push fis/origin main>