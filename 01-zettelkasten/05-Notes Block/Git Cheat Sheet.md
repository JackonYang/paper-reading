# Git Cheat Sheet

Created: 2022-05-17 17:21

## Pull All Branch

```bash
git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
git fetch --all
git pull --all
```

## 批量删除分支

批量删除除了 master 的本地分支 

```bash
git branch | grep -v "master" | xargs git branch -D
```

## References

1.
