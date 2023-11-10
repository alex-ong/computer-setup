echo off
git fetch -p

git for-each-ref --format="%%(if:equals=[gone])%%(upstream:track)%%(then)%%(refname:short)%%(end)" refs/heads

for /f "tokens=* delims=" %%b in (
    'git for-each-ref --format="%%(if:equals=[gone])%%(upstream:track)%%(then)%%(refname:short)%%(end)" refs/heads'
) do (
    git branch -d %%b
)