# Aquatone Docker image
A Docker image of [Aquatone](https://github.com/michenriksen/aquatone), for enumerating subdomains.

Most of the image size is because of `aquatone-gather` and its dependency of Eletron (which also blocks using Alpine as base image...)

## Usage:

    docker run --rm fopina/aquatone <aquatone command>

## Example:

    ~: docker run --rm -ti fopina/aquatone aquatone-discover -d example.com
                               __
      ____ _____ ___  ______ _/ /_____  ____  ___
     / __ `/ __ `/ / / / __ `/ __/ __ \/ __ \/ _ \
    / /_/ / /_/ / /_/ / /_/ / /_/ /_/ / / / /  __/
    \__,_/\__, /\__,_/\__,_/\__/\____/_/ /_/\___/
            /_/  discover v0.5.0 - by @michenriksen

    Identifying nameservers for example.com... Done
    Using nameservers:

     - 199.43.133.53
     - 199.43.135.53

    Checking for wildcard DNS... Done
    ...
