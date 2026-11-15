# tech-notebook-images

## ファイル名のルール

```
<トピック>_<サブトピック>_<詳細>.<拡張子>
```

- 小文字の英数字のみを使う (日本語、大文字、空白、記号は使わない)
- 階層 (トピック → サブトピック → 詳細) は `_` で区切る
- 階層内の複数単語は `-` でつなぐ
- 連番は末尾に `_<番号>` で付ける
- 拡張子は小文字の `png` `jpg` `gif` `svg` のいずれかにする (`jpeg` は `jpg` にする)

| 良い例                                 | 悪い例                         |
| -------------------------------------- | ------------------------------ |
| `aws_ecs_service-connect.png`          | `aws_ecs_service_connect.png`  |
| `vpc_peering_unavailable_1.png`        | `VPCピアリング接続不可の場合-1.png` |
| `quick-sort_10.jpg`                    | `クイックソート-10.JPG`        |
| `sql_left-join.png`                    | `LEFT_JOIN.png`                |

正規表現:

```
^[a-z0-9]+(-[a-z0-9]+)*(_[a-z0-9]+(-[a-z0-9]+)*)*\.(png|jpg|gif|svg)$
```

## ディレクトリ構成

```
images/
├── <カテゴリ>/          # tech-notebook の docs/<カテゴリ> から参照する画像
│   └── drawio/          # 画像の編集元の drawio ファイル
└── drawio/blog/<トピック>/  # はてなブログ (hiroki-it/hatenablog) から参照する画像
```

- tech-notebook から参照する画像は、参照元ノートと同じカテゴリのディレクトリに置く
- はてなブログから参照する画像は `images/drawio/blog/<トピック>/` に置く
- 公開済みのはてなブログ記事は URL を直接参照するため、`images/drawio/blog/` 配下と次の画像は移動や削除をしない
  - `images/admission-controllers_mutating-admission.png`
  - `images/canary_release_origin.png`
  - `images/istio_sidecar-mesh_architecture.png`
  - `images/kubernetes_admission-controllers_architecture.png`
  - `images/kubernetes_kube-apiserver_communication.png`

drawio ファイルと、`images/drawio/blog` 配下のファイルは、ファイル名のルールの対象外とする。
