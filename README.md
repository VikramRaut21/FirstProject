Create Multiple Branches with Conflicting Commits
We know that merge conflicts come about when there are multiple commits on separate branches to the same sections of the same files. So, to practice resolving one, let’s set up a conflict.

From main, create a new branch (new-branch-1), make changes to the README.md file, and create a pull request:
Enter command: git checkout -b new-branch-1
Make changes to the README.md file in your repository. Make a note of which lines you change.
On new-branch-1, add and commit the changes:
Enter command: git add README.md 
Enter command: git commit -m "Changes to the README"
