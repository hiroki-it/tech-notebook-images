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

drawio ファイル (`images/drawio` 配下、`images/platform-engineering-on-kubernetes` 配下) と、`images/drawio` 配下の svg ファイルは画像の編集元であるため、このルールの対象外とする。
