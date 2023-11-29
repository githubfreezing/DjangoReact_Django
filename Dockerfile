# Pythonのベースイメージを指定
FROM python:3.9

# 作業ディレクトリを設定
WORKDIR /usr/src/app

# 依存関係ファイルをコンテナにコピー
COPY requirements.txt ./

# 依存関係をインストール
RUN pip install --no-cache-dir -r requirements.txt

# プロジェクトのファイルをコンテナにコピー
COPY . .

# ポートを公開
EXPOSE 8000

# Djangoサーバーを起動
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]