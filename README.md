# Vision

Visionエンジンはhttps://academist-cf.com/visionの表示に使っているRailsエンジンです。

将来的にacademist-cf.comをパブリックにしたいと思っています。
ただ、準備が整っていないので、試験的にvision以下のみ公開することにしました。

## 開発

academist-cf.comのソースはまだ開示できる状態にないので、実際のアプリケーションに組み込んで開発することはできません。
開発時にはかわりに、テスト用のDummyアプリケーションを使ってください。

### 開発用Dummyアプリケーション

Dummyアプリはtest/dummy以下で通常のRailsアプリケーションと同様に使うことができます。
(visionエンジンはvisionにマウントされています。)

#### セットアップ

```console
cd test/dummy
bundle
bin/rails db:reset
bin/rails db:schema:load
bin/rails db:seed
```

#### 起動

以下のコマンドで起動します。
http://localhost:3000/vision/researchers にアクセスすると、Visionエンジンのresearchers#indexが確認できます。

```console
cd spec/dummy
bin/rails server
```

#### テスト

```console
bundle exec rspec
```

## 貢献の仕方

(TODO)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
