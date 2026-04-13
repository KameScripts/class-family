# 🔫 class-family（クラスファミリー）

## 概要

任侠の世界に生きる組員を管理し、仕事（シノギ）を斡旋するWebアプリケーションです。
新規組員の登録と、案件（シノギ）一覧の閲覧が可能です。

---

## 主な機能

- 🆕 **新規組員登録** — ユーザー名・メールアドレス・パスワード・紹介者を登録
- 💼 **シノギ一覧** — 案件をクラウドワーク風のカードUIで一覧表示
- 🎭 **隠し仕掛け** — トップページの"ある部分"をクリックするとシノギ一覧へ遷移

---

## 技術スタック

| カテゴリ | 技術 |
|--------|------|
| 言語 | Ruby 3.4.8 |
| フレームワーク | Ruby on Rails 7.2 |
| データベース | PostgreSQL |
| フロントエンド | Bootstrap 5 / esbuild / Stimulus |
| コンテナ | Docker / Docker Compose |
| デプロイ | Render |

---

## インフラ構成

```
ブラウザ
  └─ Render (Web Service)
       └─ Rails app (port 8930)
            └─ Render (PostgreSQL)
```

---

## セットアップ手順

```bash
# リポジトリをクローン
git clone git@github.com:KameScripts/class-family.git
cd class-family

# Dockerイメージをビルド
docker compose build

# アプリ起動（DB作成・マイグレーション・シード含む）
docker compose up
```

ブラウザで `http://localhost:8930` にアクセス。

---

## デプロイ（Render）

1. Renderダッシュボードで "New Web Service" を作成
2. このリポジトリを接続
3. 環境変数 `DATABASE_URL`・`RAILS_MASTER_KEY` を設定
4. `render.yaml` に従って自動デプロイ

---

## ER図

```
users
  - id
  - name
  - email (unique)
  - password_digest
  - referrer（紹介者）
  - created_at / updated_at

jobs
  - id
  - title
  - description
  - budget
  - category
  - deadline
  - created_at / updated_at
```
