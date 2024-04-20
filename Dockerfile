# Node.js の最新公式イメージを使用
FROM node:latest

# アプリケーションディレクトリを設定
WORKDIR /usr/src/app

# package.json と package-lock.json を生成
# 以下のコマンドで空のpackage.jsonを作成
RUN npm init -y

# 必要なパッケージをインストール
# 例: Express をインストール
RUN npm install express

# アプリケーションのソースコードをコピー
COPY . .

# アプリが使用するポートを開放
EXPOSE 3000

# アプリケーションを起動
# CMD ["node", "app.js"]
