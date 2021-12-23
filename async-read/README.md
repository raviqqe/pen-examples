# Async-read bug

Async file read with the `os` package somtimes fail for no reason.

## Usage

```sh
./main.sh
```

## Example

```sh
> ./main.sh
801: 'Hello'
802: 'Hello'
803: 'Hello'
804: 'Hello'
805: ''
```
