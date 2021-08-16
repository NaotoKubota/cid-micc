# CID/MICC

Docker container for HiChIP analysis including,
- [CID](http://groups.csail.mit.edu/cgs/gem/cid/)
- [MICC](http://bioinfo.au.tsinghua.edu.cn/member/xwwang/MICCusage/)

## how to build

```sh
git clone git@github.com:NaotoKubota/cid-micc.git
cd cid-micc
docker build --rm -t kubotter123/cid-micc .
```

## running

```sh
docker run --rm -it kubotter123/cid-micc
```
