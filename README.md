## 作用

自动生成java模型类需要的属性，以及测试数据csv

## 使用方法

拷贝此main.rb到rails项目tmp目录下，或在rails tmp目录下生成一个文件的链接

到rails项目根目录执行

```sh
table_name=your_table_name bundle exec rails runner tmp/main.rb
```

注意要把your_table_name替换为对应的表的名称

