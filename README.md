# Usage

## Build for Windows x64

```
docker run --rm -v `pwd`:/build pmjohann/crossnode windows
```

## Build for Darwin x64

```
docker run --rm -v `pwd`:/build pmjohann/crossnode darwin
```

## Build for Linux x64

```
docker run --rm -v `pwd`:/build pmjohann/crossnode linux
```

## Build for multiple platforms at once

You can include multiple targets separated by comma.
Make sure not to use spaces between them!

```
docker run --rm -v `pwd`:/build pmjohann/crossnode windows,linux,mac
```
