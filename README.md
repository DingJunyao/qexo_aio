# Qexo AIO Image (Hexo as frontend engine)

## Introduction / 介绍

This image is an All in One environment for [Hexo](https://hexo.io/) users. It uses [Qexo](https://github.com/Qexo/Qexo) as admin backend, [Caddy](https://caddyserver.com/) as static file server so you can deploy it on your own server with simple configuration, and write, publish blog posts online with browser, like dynamic blog systems, e.g. WordPress and typecho.

I contributed a feature for Qexo so that it uses SQLite by default, so that building the AIO image easily.

This repo is only for building, go to <https://github.com/Qexo/Qexo/blob/dev/Dockerfile_aio_sqlite_hexo> for build script. If you have any problem except building, see the original projects.

本镜像为 [Hexo](https://hexo.io/) 用户提供了一个整合的环境。使用 [Qexo](https://github.com/Qexo/Qexo) 作为管理后端，[Caddy](https://caddyserver.com/) 作为静态文件服务器，可以通过简单的配置在你的服务器上部署整套环境，通过浏览器即可在线撰写发布文章，就像 WordPress、typecho 之类的动态博客系统一样。

我为 Qexo 增加了一项功能，默认情况下使用 SQLite 数据库，为构建该镜像提供了方便。

本存储库仅为方便构建镜像所用，构建脚本见 <https://github.com/Qexo/Qexo/blob/dev/Dockerfile_aio_sqlite_hexo>。如遇构建外的问题，请参照原项目。

## Usage / 用法

## Get the image / 获取

Pull from Docker Hub / 从 Docker Hub 下载镜像:

```bash
docker pull dingjunyao/qexo_aio
```

Or build from source / 或者从源码构建:

```bash
bash build.sh
```

## Run / 运行

```bash
docker run \
    -d \
    --name qexo \
    -v /your/hexo/path:/blog \
    -v /your/qexo/db/path:/db \
    -p hexo_port:3000 \
    -p qexo_port:8000 \
    dingjunyao/qexo_aio
```

Default Hexo static page server port is `3000`, while that of Qexo is `8000`.

Hexo directory is `/blog`，and database file is `/db/qexo_data.db`。If each of them doesn't exist, the container will create it by default.

Hexo 生成的静态文件可在 3000 端口访问，Qexo 服务在 8000 端口。

Hexo 目录为 `/blog`，数据库文件为 `/db/qexo_data.db`。启动容器时，如果未检测到对应的文件 / 目录，会自动以默认设置创建。

## Initialization and other steps / 初始化及后续操作

See [Qexo](https://github.com/Qexo/Qexo).

Select Local in Server, and fill in Blog Path with `/blog` in initialization.

详见 [Qexo](https://github.com/Qexo/Qexo)。

初始化时，“服务商”选“本地”，“博客路径”填写 `/blog`。

![fill in Blog Path with /blog](img/init.png)
