### 📦 环境变量配置说明

| 变量名 | 类型 | 默认值 | 示例 | 功能说明 |
| :--- | :---: | :---: | :--- | :--- |
| **CR_CADDY_REAL_IP** | String | `X-Forwarded-For` | `CF-Connecting-IP` | 设置反代时识别真实 IP 的请求头（如使用 Cloudflare 时修改） |
| **CR_FPM_PM** | String | `static` | `dynamic` / `ondemand` | PHP-FPM 的进程管理模式 |
| **CR_PHP_TOTAL_MEM** | Integer | `512` | `1024` | PHP 与 FPM 可用的总内存基准大小 (MB)，用于自动计算各缓存与进程参数 |
| **CR_PHP_POST_MAX_SIZE** | String | `1024M` | `50M` | PHP 允许接收的 POST 数据最大体积 (`post_max_size`) |
| **CR_PHP_UPLOAD_MAX_FILESIZE** | String | `1024M` | `50M` | PHP 允许上传的最大单文件体积 (`upload_max_filesize`) |
| **CR_PHP_MAX_EXECUTION_TIME** | Integer | `300` | `60` | PHP 脚本最大执行超时时间，单位秒 (`max_execution_time`) |
| **CR_PHP_MAX_INPUT_TIME** | Integer | `300` | `60` | PHP 接收并解析输入数据的最大时间，单位秒 (`max_input_time`) |
| **CR_PHP_MAX_INPUT_VARS** | Integer | `9999` | `3000` | PHP 允许接收的最大表单变量数量 (`max_input_vars`) |
| **CR_PHP_OPCACHE_VALIDATE** | Integer | `0` | `1` | Opcache 是否检查文件更新。生产环境建议为 0 (最高性能)，开发环境设为 1 |
| **APP_NAME** | String | `Lsky Pro` | `My Gallery` | 应用程序名称 |
| **APP_ENV** | String | `production` | `local` | 应用程序运行环境（生产环境或本地开发等） |
| **APP_KEY** | String | `base64:X6mZ...` | | 应用程序的安全加密密钥，用于加密 Session 和其它数据 |
| **APP_DEBUG** | Boolean| `false` | `true` | 是否开启调试模式，生产环境强烈建议设为 false |
| **APP_URL** | String | `http://localhost`| `https://img.example.com` | 应用程序的访问根 URL |
| **DB_CONNECTION** | String | `mysql` | `pgsql` | 数据库连接驱动 |
| **DB_HOST** | String | `lskypro-db` | `127.0.0.1` | 数据库服务器地址 |
| **DB_PORT** | Integer| `3306` | `3306` | 数据库服务端口 |
| **DB_DATABASE** | String | `lsky_pro_db` | `lsky_pro` | 数据库名称 |
| **DB_USERNAME** | String | `lsky_pro_db_user` | `root` | 数据库用户名 |
| **DB_PASSWORD** | String | `lsky_pro_db_user_passwd` | `password` | 数据库密码 |
| **CACHE_DRIVER** | String | `file` | `redis` / `memcached`| 应用程序缓存驱动 |
| **REDIS_HOST** | String | `127.0.0.1` | `redis-server` | Redis 服务器地址 |
| **REDIS_PASSWORD** | String | `null` | `your_password` | Redis 连接密码 |
| **REDIS_PORT** | Integer| `6379` | `6379` | Redis 服务端口 |
| **REDIS_CACHE_DB** | Integer| `1` | `1` | 专门用于应用缓存的 Redis 数据库索引 |
| **REDIS_DB** | Integer| `0` | `0` | 默认的 Redis 数据库索引 |
| **SESSION_DRIVER** | String | `file` | `redis` / `database` | Session 会话存储驱动 |
| **SESSION_LIFETIME** | Integer| `1440` | `120` | Session 过期时间（通常单位为分钟） |
| **SESSION_CONNECTION** | String | `default` | | Session 使用的底层存储连接名称 |
| **QUEUE_CONNECTION** | String | `sync` | `redis` / `database` | 异步队列连接驱动（sync 表示同步执行不排队） |
| **LOG_CHANNEL** | String | `daily` | `single` / `stack` | 日志记录通道模式（daily 表示按天生成日志文件） |
| **LOG_DEPRECATIONS_CHANNEL**| String | `null` | | 记录弃用警告信息的日志通道 |
| **LOG_LEVEL** | String | `debug` | `error` / `warning` | 日志记录的最低级别 |
| **BROADCAST_DRIVER** | String | `log` | `pusher` / `redis` | 实时事件广播的驱动 |
| **FILESYSTEM_DISK** | String | `public` | `local` / `s3` | 默认的文件系统磁盘引擎 |
| **MEMCACHED_HOST** | String | `127.0.0.1` | `memcached-server` | Memcached 缓存服务器地址 |
| **IGNITION_SHARING_ENABLED**| Boolean| `false` | `true` | 是否允许共享 Ignition 错误页面（通常用于开发环境排错） |
| **PUSHER_APP_ID** | String | | `123456` | Pusher 服务的 APP ID（用于 WebSocket 实时通信） |
| **PUSHER_APP_KEY** | String | | `your_pusher_key` | Pusher 服务的 APP 密钥 |
| **PUSHER_APP_SECRET** | String | | `your_pusher_secret`| Pusher 服务的 APP 密钥安全码 |
| **PUSHER_APP_CLUSTER** | String | `mt1` | `ap1` | Pusher 服务的集群节点 |
| **MIX_PUSHER_APP_KEY** | String | `"${PUSHER_APP_KEY}"` | |  |
| **MIX_PUSHER_APP_CLUSTER** | String | `"${PUSHER_APP_CLUSTER}"`| |  |

---
