# What this?

エンジニアたるもの、あまりにくだらなさ過ぎる事や  
機密情報になるような事はTwitterに呟けないものです。

> 　　　　　　r;ｧ'N;:::::::::::::,ｨ／　　　　　 >::::::::::ヽ  
> .　　　 　 〃　　ヽﾙ1'´　　　 　 　 ∠:::::::::::::::::i  
> 　　 　 　 i′　　___,　-　,. = -一　 ￣ｌ:::::::::::::::ｌ  
> .　　　　　 ! , -＝=､´r'　　　　　　　 　 l::::::/,ﾆ.ヽ  
> 　　　　　　ｌ　　　　　　　　_,, -‐''二ゝ　 ｌ::::l fﾞヽ |、 ここはお前の日記帳じゃねえんだ  
> 　　　 　 　 ﾚー-- ､ヽヾﾆ-ｧ,ﾆ;＝、_　　 !:::l ） } ト  
> 　　　　　　 ヾ¨'７"ry､｀ 　 ｰﾞ='ニ,,,｀　 　 }::ヽ(ノ 　チラシの裏にでも書いてろ  
> :ｰゝヽ､ 　 　 !´ "￣ 'l,;;;;,,,.、　　　　　　　,i:::::::ﾐ  
> ::::::::::::::::ヽ.-‐ ﾄ、　r'_{　　 __)｀ニゝ、　 ,,iﾘ::::::::ﾐ  
> ::::::::::::::::::::Vi／l:::V'´;ｯ`ﾆ´ｰ-ｯ-,､:::::`"::::::::::::::;ﾞ　, 　な！  
> :::::::::::::::::::::::::N. ﾞ､::::ヾ,.｀二ﾆ´∠,,.i::::::::::::::::::::/／／  
> :::::::::::::::::::::::::::::l　ヽ;:::::::::::::::::::::::::::::::::::::::::::／　／  
> ::::::::::::::::::::::::::::::!　:|.＼;::::::::::::::::::::::::::::::／　／

ローカルのSQLiteファイルに呟ける Mutter を使ってみませんか？

## Dependences
- [LiveScript](http://livescript.net/)
- [commander](https://www.npmjs.com/package/commander)
- [sqlite3](https://www.sqlite.org/index.html)
- [node-cli](https://github.com/miyabisun/node-cli)

# Installation

```bash
$ git clone https://github.com/miyabisun/mutter-cli
$ cd mutter-cli
$ npm install -g
```

# Usage

```bash
$ mu -h

  Usage: mu [options] [things ...]

  Options:

    -h, --help                output usage information
    -V, --version             output the version number
    -a, --all                 Output allday's things.
    -y, --yesterday           Output yesterday's things.
    -d, --delete [id ...]     Delete things.
    -r, --rename <id> <name>  Rename things.
    --remove-all              Remove do-file at home directory.
```

