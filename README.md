# refile_multipleupload_sample

## 複数ファイルアップロード
[データ更新時にファイルを保持する](https://qiita.com/akahito1006/items/1974ec7e1158273794cf)
ポイントは、以下の通り
```
accepts_attachments_for :post_images, attachment: :image, append: true
```
append: trueを指定する

## ファイルを消す場合
該当のレコードを消すことでrefileが良しなにしてくれる。
個別に消す場合は、該当テーブルのレコードを消す。
元記事から消す場合も考慮してPostモデルで以下を設定しておくと良い
```
has_many :post_images, dependent: :destroy
```