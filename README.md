# shipit

1. `cd directory_name` (github repos)
2. `git branch`
3. select `branch_name` & `command + c` (copy) to the clipboard
4. paste this into a terminal:

```bash
curl -s https://raw.githubusercontent.com/brianswisher/shipit/master/shipit.sh | bash
```

# issue

```bash
echo "bs_stub; 55555" | pbcopy && curl -s https://raw.githubusercontent.com/brianswisher/shipit/master/issue.sh | bash
```
