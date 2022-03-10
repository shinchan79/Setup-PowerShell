# <center> [`Set up PowerShell prompt with Oh My Posh on Windows 11`](https://youtu.be/gK-11Rejh5E) </center>

- How to make a pretty prompt in Windows Terminal with Powerline, Nerd Fonts, Cascadia Code, WSL, and oh-my-posh
- Patching the new Cascadia Code to include Powerline Glyphs and other Nerd Fonts for the Windows Terminal
- What's the difference between a console, a terminal, and a shell?
- Taking your PowerShell prompt to the next level with Windows Terminal and Oh my Posh 3

> I love my prompt 😘

![alt](https://link)

Follow me:

> **Step1:** **`GET WINDOWS TERMINAL AND SET A DEFAULT SHELL`**

-
    I don't mean Windows PowerShell (that's "classic" now) I mean the .NET Core-powered cross-platform PowerShell. There's a LOT of ways to get it but I'm a Store person usually so I can get PowerShell (and it'll auto update) from the Microsoft Store or just **`winget install Microsoft.PowerShell`** from the command line with winget.
>
![alt](https://link)

> **Step2:** **`UPGRADE YOUR TERMINAL/CONSOLE FONTS`**

![alt](https://link)

-   Link font: [font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/CascadiaCode.zip?WT.mc_id=-blog-scottha)

    Remember that Windows Terminal has a lovely Settings UI but you can always click "open JSON file" to manage the settings.json as text if you prefer. Here's mine. Yours will be different and you should customize it! [**`The Windows Terminal documentation is fantastic`**](https://docs.microsoft.com/en-us/windows/terminal/install?WT.mc_id=-blog-scottha). Again, see how PowerShell is in BOLD? That's because it's my default.
>
    Open terminal + Click "▽" + Choose "Setting"
    - Set default profile: PowerShell
    - Set default terminal appllication: Windows Terminal
    - Choose PowerShell on the left: Choose "Appearance"
        - Text color scheme: One Half Dark
            In file JSON: edit "One Half Dark"
                {
                "background": "#001B26",
                "black": "#282C34",
                "blue": "#61AFEF",
                "brightBlack": "#5A6374",
                "brightBlue": "#61AFEF",
                "brightCyan": "#56B6C2",
                "brightGreen": "#98C379",
                "brightPurple": "#C678DD",
                "brightRed": "#E06C75",
                "brightWhite": "#DCDFE4",
                "brightYellow": "#E5C07B",
                "cursorColor": "#FFFFFF",
                "cyan": "#56B6C2",
                "foreground": "#DCDFE4",
                "green": "#98C379",
                "name": "One Half Dark (modded)",
                "purple": "#C678DD",
                "red": "#E06C75",
                "selectionBackground": "#000000",
                "white": "#DCDFE4",
                "yellow": "#E5C07B"
            },
        - Font face: CaskaydiaCove NF
        - Enable acrylic: opacity 35%
    - Appearance: on the left
        - Theme: Dark
        - Click: Show acrylic in tab row...    
> Result <br>
![alt](https://link)

> **Step3:** **`A COMMAND-LINE INSTALLER FOR WINDOWS`**
### Get comfortable on the Windows command line 
Looking for familiar Unix tools? Tired of Powershell’s Verb-Noun verbosity? Scoop helps you get the programs you need, with a minimal amount of point-and-clicking.

    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

    # or shorter
    iwr -useb get.scoop.sh | iex

> **Step4:** **`SCOOP INSTALL NEOVIM`**
    
    Command-Line:
>
    Scoop install neovim
>
### After install neovim you need setup nvim with init.vim
    Create a folder: nvim || mkdir ~\AppData\Local\nvim
    After: 
    nvim ~\AppData\Local\nvim\init.vim
For Exam: [Nvim](https://google.com)     

> **Step5:** **`ADD "OH MY POSH" TO YOUR SHELL`**

### `EXCITING NOTE`: Oh My Posh is portable and works on any shell, so I use it on both my "Pwsh" (PowerShell) in Windows and my Bash shells on WSL running Ubuntu.
- You can install Oh My Posh with with PowerShell's "Install-Module" or with the platform-specific install instructions.
>
    winget install JanDeDobbeleer.OhMyPosh
> > > Please restart shell to reload PATH **`<`** **`<`** **`<`**

### Then edit $PROFILE and add the following line, remembering at this point that oh-my-posh is an executable on the PATH.

    echo $PROFILE
    ==> ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

**`After edit`**: 

    nvim $PROFILE   
    type: i ==> copy and paste
    oh-my-posh --init --shell pwsh --config ~/Documents/your-file-setup.json | Invoke-Expression
    type: :wq + enter
**`or`**

    echo "oh-my-posh --init --shell pwsh --config ~/Documents/your-file-setup.json | Invoke-Expression" | tee $PROFILE

### Once added, reload your profile for the changes to take effect, or restart your shell.

    . $PROFILE
### That .json file is filled with [**`segments`**](https://ohmyposh.dev/docs/) that are documented on the Oh My Posh site in a lot of detail.
>
## `Again`, note that your fonts will need the right glyphs or it will look weird.
==> Here's a GOOD prompt:

>I needed to turn on "display_stash_count" and "display_upstream_icon" in my config json, like this:

    {
        "type": "git",
        "style": "powerline",
        "powerline_symbol": "",
        "invert_powerline": false,
        "foreground": "#193549",
        "background": "#fffb38",
        "leading_diamond": "",
        "trailing_diamond": "",
        "properties": {
            "display_status": true,
            "display_stash_count": true,
            "display_upstream_icon": true
        }
    },

> **`Step6`**: **`TURN YOUR POWERSHELL DIRECTORIES UP TO 11 WITH TERMINAL-ICONS`**

    Install-Module -Name Terminal-Icons -Repository PSGallery
> And then add one line to my `$PROFILE` (edit with code $`PROFILE`):

    Import-Module -Name Terminal-Icons
>
For Exam: [PowerShell](https://google.com)

![alt](https://link)

> **`Step5`**: **`Alias`**
We need create a folder powershell from `.config` after create a file .ps1

    nvim ~\.config\powershell\user_profile.ps1
    type: if
    Set-Alias ll ls
    Set-Alias time date
    ...
    type: :wq + enter

# The End. THANK FOR READING MY REPO!!!
### Donate me if you want😘:
### `STK`: **`103868801400`** - **`ViettinBank`** 🥴

For Example: 

- [PowerShell](https://google.com) <br>
- [ohmyposhv3-v2.json]() <br>
- [Nvim](https://google.com) <br>
- [Alias](https://google.com) <br>
- [SettingJSON](https://google.com) <br>