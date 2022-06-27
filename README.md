# CRON Docker

Example of using cron to execute bash file inside docker

## Usage

Add any bash file inside `commands` folder to be executed by cron, or update `init-cron` for any customization you want to add. 

### Build

```
~$ docker build . -t cron
```

### Run

```
~$ docker run cron
```
