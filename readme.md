# Git extensions

Install with 

    gem install mm-git-extend 

## git feature

    git feature [new_feature]

Creates feature branches with a feat/ prefix.

If a feature branch already exists, it checks it out.

Takes an argument --prefix to determin the prefix.

## Useful aliases

    git config --global alias.feat 'feature'
    git config --global alias.exp 'feature -p exp'
