# dotfiles

## Approach

https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/

I'm using `~/.dfgit` ("dot files git") instead of `~/.cfg`
And my alias is `dfgit` instead of `config`

### Install / Setup on new system
```sh
git clone https://github.com/michael-dean-haynie/dotfiles.git
dfgit config --local status.showUntrackedFiles no
dfgit checkout
```

### Add/Update
```sh
dfgit add <files to add/update>
dfgit commit -m "<message>"
dfgit push
```
