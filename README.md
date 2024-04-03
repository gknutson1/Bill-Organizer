# Bill Organizer

## Project summary

Bill Organizer is a Python 3 program that pulls data from the Washington State Legislature and shows it in a convenient, easy to understand format that allows tracking, writing notes, and receiving notifications on bill updates. 

- View an up to date list of bills
- Create lists of bills to keep yourself organized
- Filter and sort bills using a wide range of options
- Write notes that will be attached to bills
- Get notifications for meetings on selected bills

## Installation

### Prerequisites
- Docker
- Docker Compose
- Any web browser

### Installation Steps
1. `git clone https://github.com/CSCD488-Winter2024/bill-organizer`
2. `cd bill organizer` 
3. `echo "DB_STORAGE_DIR: /put/storage/directory/here" > .env`
3. `docker compose up -d`
4. Open `http://localhost:53982` in your web browser.

## Functionality

## Known Problems
This project is in the very early stages of development and very few features are implemented yet.

## Contributing
Bill Organizer is a modular program - new information sources can be added easily. In Bill Organizer, every source of data is called a *handler*. New handlers (e.g. a handler for the Oregon State Legislature) can be contributed by anyone. To create, for example, a handler for the Oregon State Legislature:

1. Fork the repository
2. Create a new branch: `git checkout -b oregon-handler`
3. Create a new `.py` file in the `handlers` folder named after your handler: `oregon.py`
4. In `oregon.py`, import `mod` and create a class that inherits `mod.Module`: `class Oregon(mod.Module):`
5. Implement `mod.Module`. If you want to create additional files, you can create a folder that shares the same name as your python file (e.g `oregon.py` and `oregon/additional_file.py`) in the `handler` if necessary.
6. In `oregon.py`, instantiate and register your handler: `mod.handlers.append(Oregon())`
7. Commit and submit your pull request

## License
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License Version 3 as published by the Free Software Foundation.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License Version 3 for more details.

A copy of the GNU General Public License Version 3 is provided in this repository as the file `LICENSE` - see this file for more details. If `LICENSE` is not available, see [gnu.org/licenses/gpl-3.0](https://www.gnu.org/licenses/gpl-3.0.html#license-text).