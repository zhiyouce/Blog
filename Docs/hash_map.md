## hash map
- map keys to values
- [hash function](https://en.wikipedia.org/wiki/Hash_function)

### hash function
> hash = hashfunc(key)

> index = hash % array_size

1. 开放地址法
    - 装载因子是关键
2. 拉链法
    - 数组加上链表
    - 计算哈希、定位桶和遍历链表三个过程是哈希表读写操作的主要开销

### Hash collisions
