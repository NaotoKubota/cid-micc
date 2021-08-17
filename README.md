# Docker container for CID/MICC

Dockerfile for ChIA-PET and HiChIP analysis including:
- [CID](http://groups.csail.mit.edu/cgs/gem/cid/)
- [MICC](http://bioinfo.au.tsinghua.edu.cn/member/xwwang/MICCusage/)

It's on [dockerhub](https://hub.docker.com/r/naotokubota/cid-micc) and [github](https://github.com/NaotoKubota/cid-micc).

## tags and links
- `1.0` [(master/Dockerfile)](https://github.com/NaotoKubota/cid-micc/blob/master/Dockerfile)

## how to build

```sh
docker pull naotokubota/cid-micc:1.0
```

or

```sh
git clone git@github.com:NaotoKubota/cid-micc.git
cd cid-micc
docker build --rm -t naotokubota/cid-micc:1.0 .
```

## running

```sh
docker run --rm -it naotokubota/cid-micc
```
