FROM python:3.8.5

# 设置工作目录
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# 添加依赖（利用Docker 的缓存）
ADD . /usr/src/app

# 安装依赖
RUN pip install -r requirements.txt

# 添加应用
ADD . /usr/src/app

# 运行服务
CMD pwd;ls -al;cat project/__init__.py;python manage.py runserver -h 0.0.0.0
