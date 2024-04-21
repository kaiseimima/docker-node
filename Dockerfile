# Node.js の最新公式イメージを使用
FROM node:20

# アプリケーションディレクトリを設定
WORKDIR /node_project

# package.json と package-lock.json を生成
# 以下のコマンドで空のpackage.jsonを作成
RUN npm init -y
RUN npm install express
RUN npm install ejs

# アプリケーションのソースコードをコピー
COPY . .

# アプリが使用するポートを開放
EXPOSE 3000

# アプリケーションを起動
# CMD ["node", "app.js"]
