#!/bin/bash

# Function to set git alias
set_git_alias() {
  local alias_name=$1
  local use_emoji=$3
  
  if [ "$use_emoji" = true ]; then
    commit_prefix=$2;
  else
    commit_prefix="$(echo $2 | awk '{print $2}')"
  fi
  
  git config --global alias.$alias_name "!f() { 
    git add -A && 
    git commit -m \"$commit_prefix \$1\" && 
    branch=\$(git symbolic-ref --short HEAD) && 
    upstream=\$(git for-each-ref --format='%(upstream:short)' refs/heads/\$branch) && 
    if [ -z \"\$upstream\" ]; then 
      git push --set-upstream origin \$branch; 
    else 
      git push; 
    fi 
  }; f"
}

# Default to using emojis
USE_EMOJI=true

# Check for --no-emoji flag
for arg in "$@"
do
  if [ "$arg" == "--no-emoji" ]; then
    USE_EMOJI=false
  fi
done

# Setting up aliases
set_git_alias "feat" "✨" $USE_EMOJI
set_git_alias "fix" "🐛" $USE_EMOJI
set_git_alias "docs" "📚" $USE_EMOJI
set_git_alias "style" "💄" $USE_EMOJI
set_git_alias "refactor" "♻️" $USE_EMOJI
set_git_alias "perf" "⚡" $USE_EMOJI
set_git_alias "test" "✅" $USE_EMOJI
set_git_alias "chore" "🔧" $USE_EMOJI
set_git_alias "build" "🛠️" $USE_EMOJI
set_git_alias "ci" "👷" $USE_EMOJI

echo "Git aliases have been set up successfully."
