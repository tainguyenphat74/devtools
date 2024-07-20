#!/bin/bash

# Function to set git alias
set_git_alias() {
  git config --global alias.$1 '!f() { 
    git add -A && 
    git commit -m "'"$2: \$1"'" && 
    branch=$(git symbolic-ref --short HEAD) && 
    upstream=$(git for-each-ref --format="%(upstream:short)" refs/heads/$branch) && 
    if [ -z "$upstream" ]; then 
      git push --set-upstream origin $branch; 
    else 
      git push; 
    fi 
  }; f'
}

# Setting up aliases
set_git_alias "feat" "✨ feat"
set_git_alias "fix" "🐛 fix"
set_git_alias "docs" "📚 docs"
set_git_alias "style" "💄 style"
set_git_alias "refactor" "♻️ refactor"
set_git_alias "perf" "⚡ perf"
set_git_alias "test" "✅ test"
set_git_alias "chore" "🔧 chore"
set_git_alias "build" "🛠️ build"
set_git_alias "ci" "👷 ci"

echo "Git aliases have been set up successfully."