# FontManagerUtils

## Manager fucker
A simple shell script that prevents Font Manager from overriding more fonts than necessary.

### Usage
Copy and paste the commands below into Termux.

```
pkg install wget
```

```
wget -q "https://github.com/rickastlee/FontManagerUtils/raw/refs/heads/main/manager_fucker.sh" && bash manager_fucker.sh && rm manager_fucker.sh
```

### Notes
Only run this script if you already have a custom font installed via Font Manager. Selecting a font and pressing confirm does NOT install it. You MUST reboot to apply the changes.