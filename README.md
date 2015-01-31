# DynamicProxy
software design 2014/12月号にあったDockerサンプルアプリ(コンテナとして立ち上げたHTTPサイトを動的に検知してリバースプロキシするアプリ)

1. スクリプトからDynamicProxyを構成するコンテナ群を起動する

    $ ./scripts/start_dproxy_containers.sh
    
2. 任意のコンテナを起動する

    $ docker run -d -P --name devhub matsuu/devhub
    
3. コンテナ名をサブドメインとしてブラウザからアクセスが可能になる

    http://#{コンテナ名}.#{コンテナを起動しているホストIP}.xip.io/
    
    http://devhub.192.168.56.78.xip.io/
