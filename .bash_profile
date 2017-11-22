
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH



OFFCAMPUS="bryanhug@login-course-2fa.engin.umich.edu"
export OFFCAMPUS
ONCAMPUS="bryanhug@oncampus-course.engin.umich.edu"
export ONCAMPUS


# auto completion for git
# it runs with the completion script from:
# curl -OL https://github.com/git/git/raw/master/contrib/completion/git-completion.bash
if [ -f ~/.git-completion.bash ]; then
   source ~/.git-completion.bash
fi

# Set your prompt to: 
# user@host working_directory (current_branch)
# $
# Based on the one at https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt

#parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}
#export PS1="bryan@air \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "



# http://henrik.nyh.se/2008/12/git-dirty-prompt
# http://www.simplisticcomplexity.com/2008/03/13/show-your-git-branch-name-in-your-prompt/
#   username@Machine ~/dev/dir[master]$   # clean working directory
#   username@Machine ~/dev/dir[master*]$  # dirty working directory

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '





# Set your path, adding whatever your installed software needs.
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
export PATH=~/Library/Python/2.7/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH





