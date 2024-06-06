# 使用一个基础的Node.js镜像
FROM node:20-alpine

# 设置工作目录
WORKDIR /app

# 将构建产物复制到镜像中
COPY dist/ .

# 安装一个简单的HTTP服务器来提供静态文件
RUN npm install -g http-server

# 暴露容器的端口
EXPOSE 8080

# 在容器启动时运行的命令
CMD [ "http-server", "-p", "8080" ]