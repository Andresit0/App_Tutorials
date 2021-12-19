import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_tex/flutter_tex.dart';

TeXViewWidget introduction(Color titleColor) {
  return _teXViewWidget(
      r"<h4> GIT </h4>",
      r""" <p>
      Git is an open-source distributed version control system (Git tracks changes to source code). It is fast, smart, flexible, safe, and distributed. As problems, we have that any developer could access at any file (git has no access control) and is heavy, but we could we able to copy the latest commit or divide our project into multiple Gits projects. However, it is not useful for binary files like videos that are heavy. 
      $$ \\ $$
      </p>""",
      titleColor);
}

TeXViewWidget terminalCommands(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Terminal Commands </h4>",
      r"""
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{pwd} 
          &
          \text{prints current directory}
          \\
          \hline 
          \texttt{cd [folderName]}
          &
          \text{moves between directories}
          \\
          \hline 
          \texttt{ls || dir}
          &
          \text{list of files in a directory}
          \\
          \hline 
          \texttt{mkdir [folderName]}
          &
          \text{creates a new folder}
          \\
          \hline 
          \texttt{touch [fileNAME]}
          &
          \text{creates new empty file}
          \\
          \hline 
          \texttt{git --help}
          &
          \text{gives the Git commands}
          \\
          \hline 
          \texttt{nano [fileNAME]}
          &
          \text{allows edit a file from terminal}
          \\
          \hline 
        \end{array}
      $$
      """,
      titleColor);
}

TeXViewWidget installation(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Installation </h4>",
      r""" <p>
      $$
        \begin{array}{|c|c|}
          \hline
          \text{OS} & \text{Command}  \\
          \hline \hline
          \text{Debian}    
          &
          \texttt{sudo apt-get install git}
          \\
          \hline
          \text{Fedora}
          &
          \texttt{sudo yum install git}
          \\
          \hline
          \text{Windows}
          &
          \text{https://git-scm.com/download/win}
          \\
          \hline
          \text{Mac}
          &
          \texttt{brew install git}
          \\
          \hline 
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget basicGitCommands(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Basic Git Commands </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git init}
          &
          \text{initializes git (creates a repository)}
          \\
          \hline
          \texttt{git add	.}
          &
          \text{we put all files in the launchpad called index}
          \\
          \hline
          \texttt{git commit -a -m "[message]"}
          &
          \text{creates snapshot that includes all files that are in the launchpad} 
          \\
          &
          \text{wit a message, the -a option automatically stages all changes}
          \\
          \hline
          \texttt{git log}
          &
          \text{gives the history of the project: commitHash, author, date}
          \\
          \hline 
          \texttt{git log -[number]}
          &
          \text{limit log for a specific number of commits}
          \\
          \hline
          \texttt{git status}
          &
          \text{gives the branch name and shows the files tracked (commit status)}
          \\
          \hline
          \texttt{git status  -s}
          &
          \text{M=modified, A=new file added to staging area, ??=new file untracked}
          \\
          &
          \text{by git}
          \\
          \hline
          \texttt{git rm [fileName]}
          &
          \text{remove file from tracked and project}
          \\
          \hline 
          \texttt{git rm --cached [fileName]}
          &
          \text{remove file from project but continues on tracked files}
          \\
          \hline
          \texttt{git --version}
          &
          \text{gives the git version}
          \\
          \hline 
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget filesTrackedByGit(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Files Tracked by Git </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Files Tracked} & \text{Definition}  \\
          \hline \hline
          \text{Committed}
          &
          \text{Unmodified changes from the last commit snapshot}
          \\
          \hline
          \text{Modified}
          &
          \text{Changes made to files since the last commit snapshot}
          \\
          \hline
          \text{Staged}
          &
          \text{Changes to be added into the next commit snapshot}
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget versionControl(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Version Control </h4>",
      r""" <p>
      Gives a historical detail of your project. It is not a backup. It allows tracking a project's history. Furthermore, allows working with different versions (branch).
      </p>""",
      titleColor);
}

TeXViewWidget versionControl2(Color titleColor) {
  return _teXViewWidget(
      r"<h4> </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git branch [branchName]}
          &
          \text{create a branch with the branchName}
          \\
          \hline
          \texttt{git branch}							
          &
          \text{returns the list of local branches}
          \\
          \hline
          \texttt{git branches -all}						
          &
          \text{returns all branches that exist in the server}
          \\
          \hline
          \texttt{git switch [branchName]}				
          &
          \text{move between branches}
          \\
          \hline 
          \texttt{git checkout [branchName]}				
          &
          \text{move between branches}
          \\
          \hline
          \texttt{git checkout -b [branchName]}				
          &
          \text{creates a new branch and move at this branch}
          \\
          \hline
          \texttt{git checkout -b [commitHash]}				
          &
          \text{works into a commit without branch, this commit go to be deleted}
          \\		
          &
          \text{by garbage collector if a branch is not created}
          \\
          \hline
          \texttt{git merge [branchName]}				
          &
          \text{to merge code between branches: go to the branch that needs the }
          \\
          &
          \text{code of another branch and use the command merge. After this could }
          \\
          &
          \text{be necessary resolve conflicts, because git does not the code that}
          \\
          &
          \text{ you need. Preserve history}
          \\
          \hline 
          \texttt{git rebase [branchName]}						
          &
          \text{insert commits of [branchName] downside of the current branch. After}
          \\
          &
          \text{this could be necessary resolve conflicts. Refactor project history}
          \\
          \hline
          \texttt{git tag [tagName]}						
          &
          \text{creates a tag}
          \\
          \hline
          \texttt{git tag [tagName] [gitCode]			}		
          &
          \text{annotated tag: reference a git code to use this tag or hash }
          \\
          &
          \text{(lightweight tag)}
          \\
          \hline
          \texttt{git log --graph --decorate --oneline }			
          &
          \text{show log using graph with colors} 
          \\
          \hline 
          \texttt{git log --patch}								
          &
          \text{shows exactly what changes were introduced in the commit}
          \\
          \hline
          \texttt{git log --grep [word] --online}				
          &
          \text{filter a log by word showing only one line for each founded word}
          \\
          \hline
          \texttt{git log HEAD} \sim \texttt{5..HEAD\^ --one line}				
          &
          \text{filter 5 last commits of the current branch	}
          \\
          \hline 
          \texttt{git log [currentBranch] [branch2] --online 	}	
          &
          \text{commits that are in the branch2 and not in our currentBranch}
          \\
          \hline
          \texttt{git show [commitHash]	}					
          &
          \text{detailed information about this commit}
          \\
          \hline
          \texttt{git blame [fileName]}						
          &
          \text{gives the commits information that has a file}
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget trackedError(Color titleColor) {
  return _teXViewWidget(
      r"<h4>  </h4>",
      r""" <p>
      Error: the following untracked working tree files would be overwritten…. Implies that we have a file remove from one branch. To add this file
      </p>""",
      titleColor);
}

TeXViewWidget addStash(Color titleColor) {
  return _teXViewWidget(
      r"<h4>  </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git add [fileName] }
          &
          \text{add the fileName}
          \\
          \hline
          \texttt{git stash}
          &
          \text{store changes in a dirty working directory away}
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget distributedVersion(Color titleColor) {
  return _teXViewWidget(
      r"<h4>  </h4>",
      r""" <p>
      Client-server version control: The information is in a server, the developer copy the project to works. When the developer finished updating, he download again the project merge and fixed the conflicts, and finally made the commit in the server.
      Distributed version control: The project is cloned with commits (we use git), developers could synchronize changes with the team. First of all, it is necessary to make a pull before updating changes, fixing conflict, and making a push.
      </p>""",
      titleColor);
}

TeXViewWidget distributedVersionCommands(Color titleColor) {
  return _teXViewWidget(
      r"<h4>  </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git clone [directory]}							
          &
          \text{allows to clone a repository that is called origin}
          \\
          \hline
          \texttt{git fork [directory]		}						
          &
          \text{allows to clone a repository and maintain relation with the third }
          \\
          &
          \text{party repository that is called upstream}
          \\
          \hline
          \texttt{git push 		}								
          &
          \text{allows to update developer changes}
          \\
          \hline
          \texttt{git push -f					}				
          &
          \text{force to copy exactly the branch given to the server. Delete information }
          \\
          &
          \text{of the server}
          \\
          \hline 
          \texttt{git push origin [tagName]		}				
          &
          \text{the tag go to be used as a release on Github}
          \\
          \hline
          \texttt{git fetch		}									
          &
          \text{copy the branch that has changed in the server to local repository, }
          \\
          &
          \text{we can marge and fix conflict before made changes}
          \\
          \hline
          \texttt{git pull			}							
          &
          \text{allows to synchronize the repository (git fetch + git merge)}
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget createNewRepo(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Create a new repository on GitHub (code hosting provider) </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{touch README.md		}		 
          &
          \text{creates new empty file called README.md }
          \\
          \hline
          \texttt{git init}										
          &
          \text{initializes git (creates a repository)}
          \\
          \hline
          \texttt{git add .}
          &
          \text{we put all files in the launchpad called index}
          \\
          \hline
          \texttt{git commit -m "[message]"	}				
          &
          \text{creates snapshot that includes all files that are in the launchpad }
          \\
          &
          \text{with a message}
          \\
          \hline 
          \texttt{git remote add origin [link]	}	
          &
          \text{connect with the GitHub repository}
          \\
          \hline
          \texttt{git push -u origin main}						
          &
          \text{update the information on Github using the remote name "origin" }
          \\
          &
          \text{and branch "main". The -u for every branch successfully pushed add }
          \\
          &
          \text{upstream (tracking) reference. If we use a fork we could	use "upstream" }
          \\
          &
          \text{instead of "origin" depending if interact with our project or third }
          \\
          &
          \text{party project}
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitTreeRules(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Git Three  Rules </h4>",
      r""" <p>
      The current branch tracks new commits
      When you move to another commit, Git updates our working directory
      Unreachable objects are garbage collected
      $$ \\ $$
      </p>""",
      titleColor);
}

TeXViewWidget fourGitAreas(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Four Git Areas </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Git Area} & \text{Definition}  \\
          \hline \hline
          \text{Working Area}								
          &
          \text{it is the location where we have our project}
          \\
          \hline
          \text{Repository	}								
          &
          \text{contains the entire history of the project (commits, trees and blobs)}
          \\
          \hline
          \text{Index (staging area)	}						
          &
          \text{the place where you put the files before a commit}
          \\
          \hline
          \text{Stash		}								
          &
          \text{temporary area. This area change only with stash commands. Help}
          \\
          &
          \text{saving documents for use in different branches.}
          \\
          \hline 
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget fourGitAreas2(Color titleColor) {
  return _teXViewWidget(
      r"<h4>  </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git diff	}									 
          &
          \text{compares working area with index }
          \\
          \hline
          \texttt{git dif --cached}								
          &
          \text{compares index with repository}
          \\
          \hline
          \texttt{git diff [commitHash1] [commitHash2]	}		
          &
          \text{shows changes between two commits}
          \\
          \hline
          \texttt{git diff --staged	}							
          &
          \text{shows changes resume}
          \\
          \hline 
          \texttt{git add [. or fileName]	}						
          &
          \text{copy to index }
          \\
          \hline
          \texttt{git add --patch [fileName]}						
          &
          \text{applies different commits for one filename that was changed. Use }
          \\
          &
          \text{To have more information: "n" to skip, "s" to obtain more hunks}
          \\
          \hline
          \texttt{git commit -m "[message]"		}				
          &
          \text{copy information to repository}
          \\
          \hline
          \texttt{git checkout		}							
          &
          \text{copy the information from repository to working area and index	}
          \\
          \hline 
          \texttt{git checkout HEAD [filename]	}				
          &
          \text{copy the repository file to index and working area}
          \\
          \hline
          \texttt{git rm [fileName]		}						
          &
          \text{remove file from working area and index}
          \\
          \hline
          \texttt{git rm --cached [fileName]}	 					
          &
          \text{remove file only from index, it is opposite to command git add }
          \\
          \hline
          \texttt{git mv [fileName] [newFileName]	}			
          &
          \text{rename a filename}
          \\
          \hline 
          \texttt{git reset --soft [commitHash]			}		
          &
          \text{go to a specific commits and copy from this commits: working area  }
          \\
          &
          \text{and index }
          \\
          \hline 
          \texttt{git reset --mixed [commitHash]		}			
          &
          \text{go to a specific commits and copy from this commits: index }
          \\
          \hline 
          \texttt{git reset --hard [commitHash]	}				
          &
          \text{go to a specific commits and copy from this commits: working area, }
          \\
          &
          \text{index and repository in that moment the garbage collector delete }
          \\
          &
          \text{information not used after --hard}
          \\
          \hline 
          \texttt{git reset --hard HEAD		}					
          &
          \text{returns at the current state of the repository and delete any }
          \\
          &
          \text{ change in working area and index}
          \\
          \hline 
          \texttt{git reset HEAD}				
          &
          \text{copy only the index from repository}
          \\
          \hline 
          \texttt{git stash --include-untracked			}		
          &
          \text{save files. The command --include-untracked specifies files that }
          \\
          &
          \text{are not added. By default git stash ignore untracked files. After }
          \\
          &
          \text{this command an git reset --hard HEAD	 is applied}
          \\
          \hline 
          \texttt{git stash list	}								
          &
          \text{list of stash}
          \\
          \hline 
          \texttt{git stash apply		}						
          &
          \text{copy information of the stage to the working area and index}
          \\
          \hline 
          \texttt{git stash clear		}						
          &
          \text{delete the stash}
          \\
          \hline 
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget fixingMistakesOfHistory(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Fixing Mistakes of History  </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git commit --amend	}						
          &
          \text{git copies the latest commit and join with the new commit}
          \\
          \hline
          \texttt{git rebase -I [commit]		}					
          &
          \text{it allows to edit history of this commit onward, but shows in opposite }
          \\
          &
          \text{order its commits use [wq] to write and quite. If there are a conflict: }
          \\
          &
          \text{go to conflict, resolve and execute: git add and git rebase --continue}
          \\
          \hline
          \texttt{git rebase --continue			}				
          &
          \text{continue executing a git rebase}
          \\
          \hline
          \texttt{git reflow [referenceName]	}					
          &
          \text{gives the information about commits instead of they could be erased }
          \\
          &
          \text{until garbage collector erase that information}
          \\
          \hline 
          \texttt{git filter-repo --path [fileName] --invert-paths	}
          &
          \text{delete all information and commit of the Filename}
          \\
          \hline
          \texttt{git revert		}								
          &
          \text{revert a commit creating a new commit that deletes that commits. }
          \\
          &
          \text{ Be careful reverting merges}
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget vocabulary(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Vocabulary: </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Word} & \text{Definition}  \\
          \hline \hline
          \texttt{Untracked	}								
          &
          \text{file is in the working area but not in the index or repository.   }
          \\
          &
          \text{Git does not what to do yet  }
          \\
          \hline
          \texttt{--patch	}									
          &
          \text{command to analyze hunk by hunk could be used with add, checkout, }
          \\
          &
          \text{stash, reset}
          \\
          \hline
          \texttt{HEAD\^ \^		}								
          &
          \text{\^  Refers to the parent of HEAD. If you use two \^ \^ you refers }
          \\
          &
          \text{to the parent of the parent of the HEAD}
          \\
          \hline
          \texttt{HEAD}		 \sim 2 := \texttt{HEAD\^ \^		}						
          &
          \text{if there are multiple commits you can specify the commit with } 
          \\
          &
          \text{HEAD} \sim  \text{2 \^ 2. The last 2 specify the commit }
          \\
          \hline 
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget confLevel(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Configuration Levels (local, global, or system) </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git config --local user.name "[name]"	}		
          &
          \text{repository (local): repsoitoryName/.git/config  }
          \\
          \hline
          \texttt{git config --global user.name "[name]"}			
          &
          \text{user account (global): userDirectory/.gitconfig}
          \\
          \hline
          \texttt{git config --system user.name "[name]"		}	
          &
          \text{git installation (system): /usr/local/etc/gitconfig}
          \\
          \hline
          \texttt{git config --list --show-origin			}		
          &
          \text{shows all configurations}
          \\
          \hline 
          \texttt{git config --global user.name "[name]"	}		
          &
          \text{config global name}
          \\
          \hline
          \texttt{git config --global user.email "[email]"		}	
          &
          \text{config global email}
          \\
          \hline
          \texttt{git config user.name		}					
          &
          \text{returns global name}
          \\
          \hline
          \texttt{git config user.email		}					
          &
          \text{returns global email}
          \\
          \hline 
          \texttt{git config --[level] --unset user.name		}	
          &
          \text{remove a  specific setting for a specific level}
          \\
          \hline
          \texttt{git config --[level] --edit	}					
          &
          \text{edit a specific level of config directly}
          \\
          \hline
          \texttt{git config --[level] --remove-section user		}	
          &
          \text{remove a section of config for a specific level }
          \\
          \hline
          \texttt{git config --[level] core.editor  	}	
          &
          \text{configure visual studio code as default windows that go to be opened }
          \\
          \text{"code --new-window --wait"}
          &
          \text{in a new window when it is necesssary}
          \\
          \hline 
          \texttt{git config --[level] core.editor "nano"	}			
          &
          \text{configure nano as default editor}
          \\
          \hline 
          \texttt{git config --[level] -e			}							
          &
          \text{review configuration in editor }
          \\
          \hline 
          \texttt{git config --[level] alias.[shortcut] [command]		}		
          &
          \text{create a shortcut cut of a command}
          \\
          \hline 
          \texttt{git config --[level] alias.[shortcut]	}
          &
          \text{create a shortcut of some commands}
          \\
          \texttt{'[command1 command2]'	}
          &
          \\
          \hline 
          \texttt{./positoryName/.gitattributes		}			
          &
          \text{folders where can specify what type of files you have when git }
          \\
          &
          \text{cannot  detect satisfactory them}
          \\
          \hline 
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewStyle _teXViewStyle(Color color) {
  return TeXViewStyle(
    textAlign: TeXViewTextAlign.Center,
    margin: TeXViewMargin.all(10),
    padding: TeXViewPadding.all(10),
    borderRadius: TeXViewBorderRadius.all(10),
    border: TeXViewBorder.all(
      TeXViewBorderDecoration(
          borderColor: color,
          borderStyle: TeXViewBorderStyle.Solid,
          borderWidth: 2),
    ),
  );
}

TeXViewWidget onTap(Color color) {
  return TeXViewInkWell(
      child: TeXViewDocument(r""" Click for more info """),
      style: _teXViewStyle(color),
      id: "inkwell_1",
      rippleEffect: true,
      onTap: (id) async {
        print(id);
        //Using url_launcher: ^6.0.8 (Flutter Package)
        const url =
            "https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token";
        if (await canLaunch(url))
          await launch(url);
        else
          throw "Could not launch $url";
      });
}

TeXViewWidget confGitToken(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Configure Github Token </h4>",
      r""" <p>
      $$ \\ $$
      </p>""",
      titleColor);
}

TeXViewWidget confGitToken2(Color titleColor) {
  return _teXViewWidget(
      r"<h4>  </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git config --global credential.helper cache  }
          &
          \text{after using your token, its goes to be stored}
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitTool(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Use a Tool with Git (exiftool, example for images) </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{brew install exiftool	}									
          &
          \text{install the tool in MAC  }
          \\
          \hline
          \texttt{mkdir repo		}										
          &
          \text{create a folder called repo}
          \\
          \hline
          \texttt{cd repo			}									
          &
          \text{go to inside the repo folder}
          \\
          \hline
          \texttt{git init }													
          &
          \text{initialize git }
          \\
          \hline 
          \texttt{echo "\# Git Attributes" >> .gitattributes			}			 
          &
          \text{creates the file gitattributes with the title "\# Git Attributes"}
          \\
          \hline
          \texttt{git config --global diff.exif.textconv exiftool	}				
          &
          \text{specify how git is going to utilize the exif strategy and what tools }
          \\
          &
          \text{ it is going to be leveraging}
          \\
          \hline
          \texttt{nano .gitattributes 		}								
          &
          \text{open with nano editor the file .gitattributes}
          \\
          
          \texttt{\# Git Attributes}
          &
          
          \\
          \texttt{*.jpg diff=exif			}									
          &
          \text{define the attribute that go to use exiftool when performing diffs}
          \\
          \hline
          \texttt{git diff		}											
          &
          \text{now when an .jpg image is edited we could have more detail about }
          \\
          &
          \text{changes that was made}
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitAttributes(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Git Attributes to Show in a zip of the Release </h4>",
      r""" <p>
      Filter to change some words to another depending if we are on local repository or origin repository
      $$ \\ $$
      git config --local filter.[filterName].smudge 'sed "s/{[ORIGIN_REPO_WORD]}/[LOCAL_WORD]/"' git config --local filter.[filterName].clean 'sed "s/[LOCAL_WORD]/{[ORIGIN_REPO_WORD]}/"'
      </p>""",
      titleColor);
}

TeXViewWidget gitAttributes2(Color titleColor) {
  return _teXViewWidget(
      r"<h4>  </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \texttt{nano .gitattributes 	}									
          &
          \text{edit the file according at your requeriments}
          \\
          \text{\# Git Attributes}
          &
          
          \\
          \text{.* filter=[filterName]}										
          &
          \text{location where we go to apply the filter}
          \\
          \hline
          \text{.* export-ignore	}										
          &
          \text{ignore all attributes that start with . in the repository. This }
          \\
          &
          \text{This files does not appear in the zip of release}
          \\
          \hline 
          \texttt{git push  -u origin main}									
          &
          \text{we made the push}
          \\
          \hline
          \texttt{git tag [tagName]	}									
          &
          \text{creates a tag }
          \\
          \hline
          \texttt{git push origin [tagName]		}							 
          &
          \text{put specific tag to origin. This appears in the Github releases option }
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitSubmodules(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Git Submodules </h4>",
      r""" <p>
      Two separate repositories are linked together within a project. Template iniside: repo/.gitmodules
      $$ \\ $$
      [submodule "external/[repoName]"] $$ \\ $$
	    path = external/[repoName] $$ \\ $$
	    url = [repoUrl]
      </p>""",
      titleColor);
}

TeXViewWidget gitSubmodulesCommands(Color titleColor) {
  return _teXViewWidget(
      r"<h4>  </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git --version}												
          &
          \text{greater than 2.09 to create submodules}
          \\
          \hline
          \texttt{cd [repositoryName]	}									
          &
          \text{go to repository}
          \\
          \hline
          \texttt{mkdir [submodelFolder]}									
          &
          \text{creates a folder name for submodules}
          \\
          \hline
          \texttt{git submodule add [url] [submodelFolder]/[submodelName]		}
          &
          \text{link submodule with external repository}
          \\
          \hline 
          \texttt{git configuration --global status.submoduleSummary true }		
          &
          \text{allows use git status command and obtain more details about }
          \\
          &
          \text{commits in submodules }
          \\
          \hline
          \texttt{git config --global diff.submodule log	}					
          &
          \text{to obtain more detail in submodules summaries } 
          \\
          \hline
          \texttt{git submodule init	}										
          &
          \text{initialize submodules}
          \\
          \hline
          \texttt{git submodule update}										
          &
          \text{grant the content of the submodules}
          \\
          \hline 
          \texttt{git submodule deinit external/[repoName]}					
          &
          \text{removing a submodule from repository temporarily }
          \\
          \hline
          \text{git fetch		}											
          &
          \text{specify that we go to work with specific submodule and we can  }
          \\
          &
          \text{use normal commands. 
														Firstly use cd  [submodelFolder]}
          \\
          \hline
          \texttt{git submodule deinit external/[repoName]}
          &
          \text{remove submodule permanently from the repository}
          \\
          \texttt{git rm external/[repoName]}
          &
          \\
          \texttt{git commit -m "[commitMessage] "}
          &
          \\
          \hline 
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitSubmodules2(Color titleColor) {
  return _teXViewWidget(
      r"<h4>  </h4>",
      r""" 
      <p>
    $$ 
     \begin{array}{l}
      - \text{Submodules are truly their own repository} &\\
      - \text{Do not automatically track to a branch but rather a specific commit} &\\
      - \text{Must be updated explicitly} &\\
      - \text{Can also contain other submodules} &\\
      - \text{Can be edited and updated just like a normal repository} &\\
    \end{array}
    $$
    </p>""",
      titleColor);
}

TeXViewWidget gitHook(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Git Hooks (optimize aspects of workflow) </h4>",
      r""" 
      <p>
    
     A script that is executed in response to a specific action within a Git repository. We have client-side hooks and server-side hooks. There are hooks inside /.git/hook.
    $$ \\ $$
    </p>""",
      titleColor);
}

TeXViewWidget actClientSide(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Activate Client-Side Hooks </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git config --local core.hooksPath .githooks		}			 
          &
          \text{configuration of folder .githooks to use hooks }
          \\
          \hline
          \texttt{mkdir .githooks	}										
          &
          \text{creates folder .githooks }
          \\
          \hline
          \texttt{mv .git/hooks/[fileName] .githooks	}						
          &
          \text{moves the hook that go to be used}
          \\
          \hline
          \texttt{chmod +x . githooks/[fileName]}								
          &
          \text{gives execution permission}
          \\
          \hline 
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget actServerSide(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Activate Server-Side Hooks </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git clone --bare url '[copyFolderName]'	}				
          &
          \text{clone --bare repository}
          \\
          \hline
          \texttt{chmod +x . githooks/[fileName]	}						
          &
          \text{gives execution permission at the file that represent your githook}
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget customGitCommand(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Custom Git Commands </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{mkdir git-scripts}									 
          &
          \text{creates a folder for our commands }
          \\
          \hline
          \texttt{cd git-scripts}												
          &
          \text{go to the folder}
          \\
          \hline
          \texttt{nano git-[scriptFileName]	}								
          &
          \text{create file to edit our script. Should start with git-}
          \\
          \hline
          \texttt{echo "Test Script is Working"	}							
          &
          \text{information inside [scriptFileName] to observe that our script is }
          \\
          &
          \text{working}
          \\
          \hline 
          \texttt{chmod + [scriptFileName]		}							
          &
          \text{gives execution permissions}
          \\
          \hline
          \texttt{echo 'export PATH="[path\_git-scripts]:\$ PATH"'} 				
          &
          \text{add commands of the git-scripts folder to execute in your computer. }
          \\
          >> \sim \texttt{/.bash\_profile}				
          &
          \text{Furthermore, add path in /etc/paths if you have a problem in MAC }
          \\
          \hline
          \texttt{source} \sim \texttt{/.bash\_profile}														
          &
          \text{update paths}
          \\
          \hline
          \texttt{git [scriptFileName]	}									
          &
          \text{if prints Test Script is Working. Then, all is correct}
          \\
          \hline 
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitBisect(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Git Bisect </h4>",
      r""" 
      <p>
    A tool included with Git that enables you to specify a start and end of a commit. Manually or automatically determine the point of failure within that range of commits.
    $$ \\ $$
    </p>""",
      titleColor);
}

TeXViewWidget gitBisectCommands(Color titleColor) {
  return _teXViewWidget(
      r"<h4>  </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git bisect start }											  
          &
          \text{initialize the bisect process}
          \\
          \hline
          \texttt{git bisect good [commitHash]}								
          &
          \text{specify good commit}
          \\
          \hline
          \texttt{git bisect bad [commitHash]}								
          &
          \text{specify bad commit}
          \\
          \hline
          \texttt{git bisect run npm test} 									
          &
          \text{automatically evaluate commits}
          \\
          \hline 
          \texttt{git bisect reset}											
          &
          \text{ending git bisect}
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitServer1(Color titleColor) {
  return _teXViewWidget(
      r"<h4>  Git Server  </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git clone [/var/repositories/project.git]	}			 
          &
          \text{example of clone using path }
          \\
          \hline
          \texttt{git clone [file:///var/repositories/project.git]}					
          &
          \text{example of clone file explicity}
          \\
          \hline
          \texttt{git clone ssh://andres@gitserver:/var/repositories/project.git}		
          &
          \text{example of clone using ssh}
          \\
          \hline
          \texttt{git clone andres@gitserver:/var/repositories/project.git}			
          &
          \text{example of clone using scp}
          \\
          \hline 
          \texttt{git clone https://gitserver/var/repositories/project.git}			
          &
          \text{example of clone using https}
          \\
          \hline
          \texttt{git clone git://gitserver/var/repositories/project.git	}			
          &
          \text{example of clone using git protocol}
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitClient1(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Client </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{sudo apt-get update \&\& sudo apt-get -y upgrade	}			
          &
          \text{updates to install latest version of programs}  
          \\
          \hline
          \texttt{sudo adduser [userName]	}								
          &
          \text{creates user in Linux}
          \\
          \hline
          \texttt{sudo usermod -aG sudo [userName]}							
          &
          \text{creates a group for that user}
          \\
          \hline
          \texttt{su - [userName]}											
          &
          \text{works as [userName]}
          \\
          \hline 
          \texttt{git config --global user.name "[name]"}						
          &
          \text{configures a global name}
          \\
          \hline
          \texttt{git config --global user.email "[email]"}						
          &
          \text{configures a global email}
          \\
          \hline
          \texttt{mkdir}  \sim \texttt{/.ssh}												
          &
          \text{creates an ssh directory for that user}
          \\
          \hline
          \texttt{chmod 700} \sim \texttt{/.ssh}											
          &
          \text{gives access permissions only to the owner}
          \\
          \hline 
          \texttt{ssh-keygen}												
          &
          \text{generates an ssh key}
          \\
          \hline
          \texttt{cat .ssh/id\_rsa.pub}										
          &
          \text{shows the public generated} 
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitServer2(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Server </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{sudo apt-get update \&\& sudo apt-get -y upgrade}				  
          &
          \text{updates to install latest version of programs}
          \\
          \hline
          \texttt{sudo adduser [userName]	}								
          &
          \text{creates user in Linux}
          \\
          \hline
          \texttt{sudo usermod -aG sudo [userName]}							
          &
          \text{creates a group for that user}
          \\
          \hline
          \texttt{su - [userName]	}										
          &
          \text{works as [userName]}
          \\
          \hline 
          \texttt{git config --global user.name "[name]"	}					
          &
          \text{configures a global name}
          \\
          \hline
          \texttt{git config --global user.email "[email]"}						
          &
          \text{configures a global email}
          \\
          \hline
          \texttt{mkdir} \sim\texttt{/.ssh}												
          &
          \text{creates an ssh directory for that user}
          \\
          \hline
          \texttt{chmod 700} \sim\texttt{/.ssh}											
          &
          \text{gives access permissions only to the owner}
          \\
          \hline 
          \texttt{nano} \sim\texttt{/.ssh/authorized\_keys}								
          &
          \text{we creates a file for people that could access at server and paste}
          \\
          &
          \text{results of "shows the public generated" command used in client}
          \\
          \hline
          \texttt{chmod 600} \sim\texttt{/.ssh/authorized\_keys}							
          &
          \text{gives permission for clients}
          \\
          \hline
          \texttt{mkdir [repoName].git}									
          &
          \text{creates our repository folder}
          \\
          \hline
          \texttt{cd [repoName].git}											
          &
          \text{go to the repository}
          \\
          \hline 
          \texttt{git --bare init	}											
          &
          \text{start the git server}
          \\
          \hline 
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitClient2(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Client </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git clone git:[serverIp] /home/git/[repoName].git}				
          &
          \text{The client could clone the repository from server} 
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitServer3(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Server </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{nano createUser.sh}										 
          &
          \text{creates commands that users need satisfies }
          \\
          \hline
          \texttt{nano populateUsers.sh	}									
          &
          \text{creates users calling before file}
          \\
          \hline
          \texttt{chmod 700 createUser.sh populateUsers.sh }						
          &
          \text{allows execution permissions}
          \\
          \hline
          \texttt{sudo ./populateUsers.sh	}									
          &
          \text{creates users after obtain its ssh public key and paste in }
          \\
          &
          \sim \text{/.ssh/authorized\_keys}
          \\
          \hline 
          \texttt{which git-shell	}											
          &
          \text{shows where is installed git shell}
          \\
          \hline
          \texttt{sudo nano [git-shell-PATH]	}									
          &
          \text{add as valid login git-shell}
          \\
          \hline
          \texttt{sudo chsh git -s \$(which git-shell)}								
          &
          \text{updates where is git-shell. Now people could connect wih their } 
          \\
          &
          \text{name and not use git user} 
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitClient3(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Client </h4>",
      r""" <p>
      $$
        \begin{array}{|l|l|}
          \hline
          \text{Command} & \text{Definition}  \\
          \hline \hline
          \texttt{git clone git:[serverIp] /home/git/[repoName].git}				
          &
          \text{The client could clone the repository from server} 
          \\
          \hline
        \end{array}
      $$
      </p>""",
      titleColor);
}

TeXViewWidget gitClient4(Color titleColor) {
  return _teXViewWidget(
      r"<h4>  </h4>",
      r""" <p>
      Note:  It is possible says what user can or cannot made "~/.ssh/authorized\_keys" adding before SSH\_USER\_KEY the correspondent code. For instance: no-port-forwarding,no-X11-forwarding,no-agent-forwarding,no-pty
      $$ \\ $$
      </p>""",
      titleColor);
}

TeXViewWidget gitolite(Color titleColor) {
  return _teXViewWidget(
      r"<h4> Gitolite </h4>",
      r""" <p>
      A tool that assists in managing our Git server and it is necessary to use HTTP access together with APACHE
      $$ \\ $$
      </p>""",
      titleColor);
}

TeXViewWidget _teXViewWidget(String title, String body, Color titleColor) {
  return TeXViewColumn(
    children: [
      TeXViewDocument(title,
          style: TeXViewStyle(
              contentColor: titleColor,
              textAlign: TeXViewTextAlign.Center,
              fontStyle: TeXViewFontStyle(fontSize: 20))),
      TeXViewDocument(body,
          style: TeXViewStyle(
            margin: TeXViewMargin.only(top: 10),
            textAlign: TeXViewTextAlign.Left,
          ))
    ],
  );
}

class TeXViewDocumentExamples extends StatelessWidget {
  final TeXViewRenderingEngine renderingEngine;
  TeXViewDocumentExamples(
      {this.renderingEngine = const TeXViewRenderingEngine.katex()});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColorDark;
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        height: double.infinity,
        child: TeXView(
          style: TeXViewStyle(
            contentColor: Colors.black,
            backgroundColor: Colors.white,
          ),
          renderingEngine: renderingEngine,
          child: TeXViewColumn(children: [
            introduction(primaryColor),
            terminalCommands(primaryColor),
            installation(primaryColor),
            basicGitCommands(primaryColor),
            filesTrackedByGit(primaryColor),
            versionControl(primaryColor),
            versionControl2(primaryColor),
            trackedError(primaryColor),
            addStash(primaryColor),
            distributedVersion(primaryColor),
            distributedVersionCommands(primaryColor),
            createNewRepo(primaryColor),
            gitTreeRules(primaryColor),
            fourGitAreas(primaryColor),
            fourGitAreas2(primaryColor),
            fixingMistakesOfHistory(primaryColor),
            vocabulary(primaryColor),
            confLevel(primaryColor),
            confGitToken(primaryColor),
            onTap(primaryColor),
            confGitToken2(primaryColor),
            gitTool(primaryColor),
            gitAttributes(primaryColor),
            gitAttributes2(primaryColor),
            gitSubmodules(primaryColor),
            gitSubmodulesCommands(primaryColor),
            gitSubmodules2(primaryColor),
            gitHook(primaryColor),
            actClientSide(primaryColor),
            actServerSide(primaryColor),
            customGitCommand(primaryColor),
            gitBisect(primaryColor),
            gitBisectCommands(primaryColor),
            gitServer1(primaryColor),
            gitClient1(primaryColor),
            gitServer2(primaryColor),
            gitClient2(primaryColor),
            gitServer3(primaryColor),
            gitClient3(primaryColor),
            gitClient4(primaryColor),
            gitolite(primaryColor),
          ]),
        ),
      ),
    );
  }
}
