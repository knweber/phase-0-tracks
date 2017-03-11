# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

  Version control allows for the viewing of the entire revision history of a file. Version control might be likened to some degree as 'save as' on MS Word - the original document (or file, in this case) is left untouched while the changes to the document are saved as a separate file. Version control is useful because it allows multiple people to work on a project in GitHub simultaneously without modifying the original code. Through the development process, developers can look at each other's changes and merge them into the original branch on GitHub if desired. 

* What is a branch and why would you use one?

  A branch is a separate line of revisions to the original code, which is referred to as the 'master' branch. A developer would use a branch to make changes to and add/remove features from the original file without modifying the original file. If someone were to make a big mistake on their branch, the original file would be left intact.  

* What is a commit? What makes a good commit message?

  When a developer makes a commit, the modifications made to the original code are saved as a sort of 'snapshot' in the local repo. As a result, a developer can look back at the revision history of a particular file by examining the contents in each 'snapshot' from every commit. A good commit message gives someone else looking at the commit an idea of what was added or removed from the file.

* What is a merge conflict?

  A merge conflict occurs when the branches that the developer is trying to merge have modifications in the same part of the file. In this situation, Git doesn't know which version to use, and so it doesn't proceed with the merge commit.