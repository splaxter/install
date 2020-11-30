from os.path import expanduser
home = expanduser("~")


theme = 'ZSH_THEME="agnoster"'
plugins = "plugins=(git zsh-autosuggestions zsh-syntax-highlighting)"
out = ""
with open(f"{home/}.zshrc" ,"r") as file:
    for line in file:
        if line.startswith("plugins"):
            out += plugins
        elif line.startswith("ZSH_THEME"):
            out += theme
        else:
            out += line
with open(f"{home/}.zshrc", "w") as file:
    file.write(out)
