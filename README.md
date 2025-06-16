# zephyr_template

## Dependencies

Install the zephyr dependencies found at the following link:

https://docs.zephyrproject.org/latest/develop/getting_started/index.html

Install the Zephyr Toolchain found at the following link:

https://docs.zephyrproject.org/latest/develop/toolchains/zephyr_sdk.html

## Setting Up Project

All defaults can be found in `scripts/project.conf`.  Here you can set your default board type, project directory name, build directory name, and app target.

Feel free to rename the `project` directory to your desired project name.  The repo itself will act as a Zephyr workspace.  If changing the project or app target directory names, make sure to update the entries in `scripts/project.conf`.

Run `scripts/init_project.sh` to fetch the zephyr and modules sources. You can run this script any time to run `west update`.

## Building Project

Run `scripts/build.sh` to build your project. Any additional `west build` arguments can be appended to `scripts/build.sh`.
