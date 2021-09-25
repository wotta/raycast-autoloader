# Raycast autoloader

raycast autoloader is a small bash script that helps with creating symlinks to a specific directory which then can be used by Raycast to "autoload" extensions.

## Installation

Use git to install the script to the `raycast-scripts` folder.

```bash
git clone git@github.com:wotta/raycast-autoloader.git 
```

Create a symlink that enabled you to use the autoloader in Raycast. You can use the following command:

```bash
cp -f "~/raycast-scripts/raycast-autoloader/autoload.sh" "~/raycast-scripts/autoload.sh"  
```

_Best practice:_ Create a folder called `raycast-scripts` and place all extensions in there.

## Usage

You can do the following if you use [Raycast](https://www.raycast.com/).

- open raycast
- type: `autoload`
- press enter and run the script

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)