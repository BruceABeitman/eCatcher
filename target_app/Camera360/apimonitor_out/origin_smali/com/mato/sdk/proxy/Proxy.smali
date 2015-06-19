.class public Lcom/mato/sdk/proxy/Proxy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mato/sdk/proxy/Proxy$a;,
        Lcom/mato/sdk/proxy/Proxy$b;,
        Lcom/mato/sdk/proxy/Proxy$c;
    }
.end annotation


# static fields
.field static a:Lcom/mato/sdk/proxy/Address; = null

.field private static b:Ljava/lang/String; = "MAA"

.field private static final c:I = 0xbb8

.field private static final d:I = 0x1770

.field private static e:Lcom/mato/sdk/proxy/i;

.field private static f:Landroid/webkit/WebView;

.field private static g:Landroid/content/Context;

.field private static h:I

.field private static i:Lcom/mato/sdk/proxy/Proxy$a;

.field private static j:Lcom/mato/sdk/proxy/Proxy$c;

.field private static k:Lcom/mato/sdk/utils/h$b;

.field private static l:Z

.field private static m:Z

.field private static n:Landroid/telephony/PhoneStateListener;

.field private static o:Z

.field private static p:Lcom/mato/sdk/proxy/Proxy$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/mato/sdk/proxy/Proxy;->i:Lcom/mato/sdk/proxy/Proxy$a;

    sput-object v1, Lcom/mato/sdk/proxy/Proxy;->j:Lcom/mato/sdk/proxy/Proxy$c;

    sput-boolean v0, Lcom/mato/sdk/proxy/Proxy;->l:Z

    sput-boolean v0, Lcom/mato/sdk/proxy/Proxy;->m:Z

    sput-object v1, Lcom/mato/sdk/proxy/Proxy;->n:Landroid/telephony/PhoneStateListener;

    sput-boolean v0, Lcom/mato/sdk/proxy/Proxy;->o:Z

    sget-object v0, Lcom/mato/sdk/proxy/Proxy$b;->a:Lcom/mato/sdk/proxy/Proxy$b;

    sput-object v0, Lcom/mato/sdk/proxy/Proxy;->p:Lcom/mato/sdk/proxy/Proxy$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Z)I
    .registers 2

    invoke-static {p0}, Lcom/mato/sdk/proxy/Proxy;->c(Z)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/mato/sdk/utils/h$b;)V
    .registers 1

    sput-object p0, Lcom/mato/sdk/proxy/Proxy;->k:Lcom/mato/sdk/utils/h$b;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "MAA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "show toast with:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/mato/sdk/a/b;->n()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/mato/sdk/a/b;->l()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {}, Lcom/mato/sdk/a/b;->c()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "should show"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mato/sdk/proxy/f;

    invoke-direct {v0, p0}, Lcom/mato/sdk/proxy/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mato/sdk/proxy/f;->start()V

    :cond_3e
    return-void
.end method

.method static synthetic a()Z
    .registers 1

    sget-boolean v0, Lcom/mato/sdk/proxy/Proxy;->m:Z

    return v0
.end method

.method static synthetic b()Lcom/mato/sdk/utils/h$b;
    .registers 1

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->k:Lcom/mato/sdk/utils/h$b;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "MAA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "show toast with:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    if-nez v0, :cond_1b

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-static {}, Lcom/mato/sdk/a/b;->n()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/mato/sdk/a/b;->l()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/mato/sdk/a/b;->c()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "should show"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mato/sdk/proxy/f;

    invoke-direct {v0, p0}, Lcom/mato/sdk/proxy/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mato/sdk/proxy/f;->start()V

    goto :goto_1a
.end method

.method private static declared-synchronized b(Z)V
    .registers 5

    const-class v1, Lcom/mato/sdk/proxy/Proxy;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/mato/sdk/proxy/Proxy;->l:Z

    if-eqz v0, :cond_21

    sget-boolean v0, Lcom/mato/sdk/proxy/Proxy;->m:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/mato/sdk/a/b;->d()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    if-eqz p0, :cond_1f

    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {v2, v0}, Lcom/mato/sdk/proxy/i;->a(Z)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_3e

    :cond_1d
    :goto_1d
    monitor-exit v1

    return-void

    :cond_1f
    const/4 v0, 0x1

    goto :goto_1a

    :cond_21
    :try_start_21
    const-string/jumbo v0, "MAA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "use proxy:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_41

    sget-object v0, Lcom/mato/sdk/proxy/Proxy$b;->b:Lcom/mato/sdk/proxy/Proxy$b;

    :goto_3b
    sput-object v0, Lcom/mato/sdk/proxy/Proxy;->p:Lcom/mato/sdk/proxy/Proxy$b;
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_3e

    goto :goto_1d

    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_41
    :try_start_41
    sget-object v0, Lcom/mato/sdk/proxy/Proxy$b;->c:Lcom/mato/sdk/proxy/Proxy$b;
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_3e

    goto :goto_3b
.end method

.method private static c(Z)I
    .registers 5

    const/4 v0, 0x0

    const-string/jumbo v1, "MAA"

    const-string/jumbo v2, "startService"

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/mato/sdk/utils/g;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {}, Lcom/mato/sdk/a/b;->p()Z

    move-result v1

    if-nez v1, :cond_80

    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "not use sdk in debug mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_c4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_21} :catch_48

    :goto_21
    if-eqz p0, :cond_36

    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "do final job"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->d(Z)V

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->o()V

    :cond_36
    const/4 v0, -0x7

    :cond_37
    :goto_37
    return v0

    :cond_38
    :try_start_38
    invoke-static {}, Lcom/mato/sdk/a/b;->q()Z

    move-result v1

    if-nez v1, :cond_80

    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "not use sdk in release mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_c4
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_47} :catch_48

    goto :goto_21

    :catch_48
    move-exception v0

    const/4 v1, 0x0

    :try_start_4a
    sput-boolean v1, Lcom/mato/sdk/proxy/Proxy;->m:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->r()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "service start failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12a

    const-string/jumbo v1, "MAA"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_4a .. :try_end_69} :catchall_c4

    if-eqz p0, :cond_7e

    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "do final job"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->d(Z)V

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->o()V

    :cond_7e
    const/4 v0, -0x2

    goto :goto_37

    :cond_80
    :try_start_80
    invoke-static {}, Lcom/mato/sdk/utils/h;->e()Lcom/mato/sdk/utils/h$b;

    move-result-object v1

    sput-object v1, Lcom/mato/sdk/proxy/Proxy;->k:Lcom/mato/sdk/utils/h$b;

    const-string/jumbo v1, "MAA"

    const-string/jumbo v2, "begin parse work"

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_80 .. :try_end_8f} :catchall_c4
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_8f} :catch_48

    :try_start_8f
    invoke-static {}, Lcom/mato/sdk/utils/d;->a()Lcom/mato/sdk/utils/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mato/sdk/utils/d;->b()V
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_c4
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_96} :catch_14b
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_96} :catch_48

    :goto_96
    :try_start_96
    invoke-static {}, Lcom/mato/sdk/b/e;->a()Lcom/mato/sdk/b/e;

    new-instance v1, Lcom/mato/sdk/proxy/c;

    invoke-direct {v1}, Lcom/mato/sdk/proxy/c;-><init>()V

    invoke-static {v1}, Lcom/mato/sdk/b/e;->b(Lcom/mato/sdk/b/d;)V

    invoke-static {}, Lcom/mato/sdk/utils/c;->e()V

    invoke-static {}, Lcom/mato/sdk/a/b$f;->a()I

    move-result v1

    invoke-static {v1}, Lcom/mato/sdk/a/b$e;->a(I)V

    new-instance v1, Lcom/mato/sdk/proxy/i;

    invoke-direct {v1}, Lcom/mato/sdk/proxy/i;-><init>()V

    sput-object v1, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    invoke-virtual {v1}, Lcom/mato/sdk/proxy/i;->start()V

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->q()Z

    move-result v1

    if-nez v1, :cond_db

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "service start failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c4
    .catchall {:try_start_96 .. :try_end_c4} :catchall_c4
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_c4} :catch_48

    :catchall_c4
    move-exception v0

    if-eqz p0, :cond_da

    const-string/jumbo v1, "MAA"

    const-string/jumbo v2, "do final job"

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/mato/sdk/proxy/Proxy;->d(Z)V

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->o()V

    :cond_da
    throw v0

    :cond_db
    :try_start_db
    new-instance v1, Lcom/mato/sdk/proxy/Address;

    const-string/jumbo v2, "127.0.0.1"

    invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/mato/sdk/proxy/Address;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    sget-boolean v1, Lcom/mato/sdk/proxy/Proxy;->o:Z

    if-eqz v1, :cond_fe

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    invoke-virtual {v2}, Lcom/mato/sdk/proxy/Address;->getHost()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    invoke-virtual {v3}, Lcom/mato/sdk/proxy/Address;->getPort()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/mato/sdk/proxy/h;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_fe
    invoke-static {}, Lcom/mato/sdk/b/e;->a()Lcom/mato/sdk/b/e;

    new-instance v1, Lcom/mato/sdk/proxy/d;

    invoke-direct {v1}, Lcom/mato/sdk/proxy/d;-><init>()V

    invoke-static {v1}, Lcom/mato/sdk/b/e;->c(Lcom/mato/sdk/b/d;)V

    invoke-static {}, Lcom/mato/sdk/b/e;->a()Lcom/mato/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mato/sdk/b/e;->b()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mato/sdk/proxy/Proxy;->m:Z
    :try_end_113
    .catchall {:try_start_db .. :try_end_113} :catchall_c4
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_113} :catch_48

    if-eqz p0, :cond_37

    const-string/jumbo v1, "MAA"

    const-string/jumbo v2, "do final job"

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/mato/sdk/proxy/Proxy;->d(Z)V

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->o()V

    goto/16 :goto_37

    :cond_12a
    :try_start_12a
    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "uncaught exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catchall {:try_start_12a .. :try_end_133} :catchall_c4

    if-eqz p0, :cond_148

    const-string/jumbo v0, "MAA"

    const-string/jumbo v1, "do final job"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->d(Z)V

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->o()V

    :cond_148
    const/4 v0, -0x6

    goto/16 :goto_37

    :catch_14b
    move-exception v1

    goto/16 :goto_96
.end method

.method static synthetic c()Z
    .registers 1

    sget-boolean v0, Lcom/mato/sdk/proxy/Proxy;->o:Z

    return v0
.end method

.method public static declared-synchronized connect(Ljava/lang/String;II)Ljava/net/Socket;
    .registers 12

    const/4 v0, 0x0

    const-class v3, Lcom/mato/sdk/proxy/Proxy;

    monitor-enter v3

    :try_start_4
    invoke-static {}, Lcom/mato/sdk/utils/g;->o()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_a1

    move-result v1

    if-nez v1, :cond_c

    :cond_a
    :goto_a
    monitor-exit v3

    return-object v0

    :cond_c
    :try_start_c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->getAddress()Lcom/mato/sdk/proxy/Address;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    new-instance v4, Ljava/net/InetSocketAddress;

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    invoke-virtual {v2}, Lcom/mato/sdk/proxy/Address;->getHost()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    invoke-virtual {v5}, Lcom/mato/sdk/proxy/Address;->getPort()I

    move-result v5

    invoke-direct {v4, v2, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_a4
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_32} :catch_a1

    :try_start_32
    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_41

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    :cond_41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "MAA"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bind local port is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(Ljava/lang/String;I)V

    invoke-virtual {v1, v4, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string/jumbo v4, "MATO"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_86
    .catchall {:try_start_32 .. :try_end_86} :catchall_a4
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_86} :catch_88
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_86} :catch_a1

    move-object v0, v1

    goto :goto_a

    :catch_88
    move-exception v1

    :try_start_89
    const-string/jumbo v2, "MAA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Socket connect fail"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_89 .. :try_end_9f} :catchall_a4
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_9f} :catch_a1

    goto/16 :goto_a

    :catch_a1
    move-exception v1

    goto/16 :goto_a

    :catchall_a4
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method static synthetic d()Lcom/mato/sdk/proxy/i;
    .registers 1

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    return-object v0
.end method

.method private static d(Z)V
    .registers 3

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->p:Lcom/mato/sdk/proxy/Proxy$b;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy$b;->a:Lcom/mato/sdk/proxy/Proxy$b;

    if-eq v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/mato/sdk/a/b$a;->a()I

    move-result v0

    if-nez v0, :cond_6

    if-eqz p0, :cond_14

    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/mato/sdk/a/b;->a(Z)V

    goto :goto_6

    :cond_14
    const/4 v0, 0x1

    goto :goto_10
.end method

.method static synthetic e()Z
    .registers 1

    sget-boolean v0, Lcom/mato/sdk/proxy/Proxy;->l:Z

    return v0
.end method

.method static synthetic f()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g()V
    .registers 3

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/mato/sdk/proxy/g;

    invoke-direct {v1}, Lcom/mato/sdk/proxy/g;-><init>()V

    sput-object v1, Lcom/mato/sdk/proxy/Proxy;->n:Landroid/telephony/PhoneStateListener;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->n:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static getAddress()Lcom/mato/sdk/proxy/Address;
    .registers 1

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    return-object v0
.end method

.method static synthetic h()V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v1, Lcom/mato/sdk/proxy/Proxy$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mato/sdk/proxy/Proxy$c;-><init>(B)V

    sput-object v1, Lcom/mato/sdk/proxy/Proxy;->j:Lcom/mato/sdk/proxy/Proxy$c;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->j:Lcom/mato/sdk/proxy/Proxy$c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic i()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/mato/sdk/a/b$a;->a()I

    move-result v2

    if-ne v2, v1, :cond_13

    invoke-static {}, Lcom/mato/sdk/a/b;->a()Lcom/mato/sdk/a/b$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mato/sdk/a/b$g;->a()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->p:Lcom/mato/sdk/proxy/Proxy$b;

    sget-object v3, Lcom/mato/sdk/proxy/Proxy$b;->a:Lcom/mato/sdk/proxy/Proxy$b;

    if-eq v2, v3, :cond_2d

    invoke-static {}, Lcom/mato/sdk/a/b;->d()Z

    move-result v2

    if-nez v2, :cond_12

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->p:Lcom/mato/sdk/proxy/Proxy$b;

    sget-object v3, Lcom/mato/sdk/proxy/Proxy$b;->b:Lcom/mato/sdk/proxy/Proxy$b;

    if-ne v2, v3, :cond_27

    move v0, v1

    goto :goto_12

    :cond_27
    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->p:Lcom/mato/sdk/proxy/Proxy$b;

    sget-object v3, Lcom/mato/sdk/proxy/Proxy$b;->c:Lcom/mato/sdk/proxy/Proxy$b;

    if-eq v2, v3, :cond_12

    :cond_2d
    invoke-static {}, Lcom/mato/sdk/a/b$a;->a()I

    move-result v2

    if-nez v2, :cond_38

    invoke-static {}, Lcom/mato/sdk/a/b;->j()Z

    move-result v0

    goto :goto_12

    :cond_38
    invoke-static {}, Lcom/mato/sdk/a/b$a;->a()I

    move-result v2

    if-ne v2, v1, :cond_49

    const-string/jumbo v0, "MAA"

    const-string/jumbo v2, "\u5168\u52a0\u901f"

    invoke-static {v0, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_12

    :cond_49
    invoke-static {}, Lcom/mato/sdk/a/b$a;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5a

    const-string/jumbo v1, "MAA"

    const-string/jumbo v2, "\u5168\u56de\u6e90"

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_5a
    invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z

    move-result v0

    goto :goto_12
.end method

.method private static j()V
    .registers 3

    new-instance v0, Lcom/mato/sdk/proxy/Address;

    const-string/jumbo v1, "127.0.0.1"

    invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->d()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mato/sdk/proxy/Address;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    sget-boolean v0, Lcom/mato/sdk/proxy/Proxy;->o:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    invoke-virtual {v1}, Lcom/mato/sdk/proxy/Address;->getHost()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    invoke-virtual {v2}, Lcom/mato/sdk/proxy/Address;->getPort()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/mato/sdk/proxy/h;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_23
    invoke-static {}, Lcom/mato/sdk/b/e;->a()Lcom/mato/sdk/b/e;

    new-instance v0, Lcom/mato/sdk/proxy/d;

    invoke-direct {v0}, Lcom/mato/sdk/proxy/d;-><init>()V

    invoke-static {v0}, Lcom/mato/sdk/b/e;->c(Lcom/mato/sdk/b/d;)V

    invoke-static {}, Lcom/mato/sdk/b/e;->a()Lcom/mato/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mato/sdk/b/e;->b()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mato/sdk/proxy/Proxy;->m:Z

    return-void
.end method

.method private static k()V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v1, Lcom/mato/sdk/proxy/Proxy$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mato/sdk/proxy/Proxy$a;-><init>(B)V

    sput-object v1, Lcom/mato/sdk/proxy/Proxy;->i:Lcom/mato/sdk/proxy/Proxy$a;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->i:Lcom/mato/sdk/proxy/Proxy$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static l()V
    .registers 2

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->i:Lcom/mato/sdk/proxy/Proxy$a;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->i:Lcom/mato/sdk/proxy/Proxy$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/mato/sdk/proxy/Proxy;->i:Lcom/mato/sdk/proxy/Proxy$a;

    :cond_e
    return-void
.end method

.method private static m()V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v1, Lcom/mato/sdk/proxy/Proxy$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mato/sdk/proxy/Proxy$c;-><init>(B)V

    sput-object v1, Lcom/mato/sdk/proxy/Proxy;->j:Lcom/mato/sdk/proxy/Proxy$c;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->j:Lcom/mato/sdk/proxy/Proxy$c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static n()V
    .registers 2

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->j:Lcom/mato/sdk/proxy/Proxy$c;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->j:Lcom/mato/sdk/proxy/Proxy$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_b
    const/4 v0, 0x0

    sput-object v0, Lcom/mato/sdk/proxy/Proxy;->j:Lcom/mato/sdk/proxy/Proxy$c;

    return-void
.end method

.method private static o()V
    .registers 4

    invoke-static {}, Lcom/mato/sdk/a/b$b;->a()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/mato/sdk/a/b$b;->b()Z

    move-result v0

    if-nez v0, :cond_39

    :cond_c
    invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->c()I

    move-result v0

    invoke-static {v0}, Lcom/mato/sdk/utils/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mato/sdk/a/b;->c(Ljava/lang/String;)V

    const-string/jumbo v1, "MAA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the fullsdk version is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mato/sdk/proxy/e;

    invoke-direct {v0}, Lcom/mato/sdk/proxy/e;-><init>()V

    invoke-static {}, Lcom/mato/sdk/b/e;->a()Lcom/mato/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mato/sdk/b/e;->a(Lcom/mato/sdk/b/d;)V

    :cond_39
    return-void
.end method

.method private static p()V
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->i:Lcom/mato/sdk/proxy/Proxy$a;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->i:Lcom/mato/sdk/proxy/Proxy$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-object v2, Lcom/mato/sdk/proxy/Proxy;->i:Lcom/mato/sdk/proxy/Proxy$a;

    :cond_e
    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->j:Lcom/mato/sdk/proxy/Proxy$c;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->j:Lcom/mato/sdk/proxy/Proxy$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_19
    sput-object v2, Lcom/mato/sdk/proxy/Proxy;->j:Lcom/mato/sdk/proxy/Proxy$c;

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->n:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->n:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_34
    return-void
.end method

.method private static q()Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    if-eqz v3, :cond_3b

    sget-object v3, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    invoke-virtual {v3}, Lcom/mato/sdk/proxy/i;->e()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    const-wide/16 v4, 0xbb8

    :try_start_12
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_5b
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_3c

    :try_start_15
    sget-object v4, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    invoke-virtual {v4}, Lcom/mato/sdk/proxy/i;->c()Z

    move-result v4

    if-eqz v4, :cond_5e

    const-string/jumbo v0, "MAA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "waitForWatchdogStart success time = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    const/4 v0, 0x1

    :cond_3b
    :goto_3b
    return v0

    :catch_3c
    move-exception v4

    const-string/jumbo v4, "MAA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "waitForWatchdogStart failed time = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/mato/sdk/utils/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_15 .. :try_end_5a} :catchall_5b

    goto :goto_3b

    :catchall_5b
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5e
    :try_start_5e
    const-string/jumbo v4, "MAA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "waitForWatchdogStartUp failed time = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/mato/sdk/utils/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_5e .. :try_end_7b} :catchall_5b

    goto :goto_3b
.end method

.method private static r()V
    .registers 4

    const/4 v3, 0x0

    :try_start_1
    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    invoke-virtual {v0}, Lcom/mato/sdk/proxy/i;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    invoke-virtual {v0}, Lcom/mato/sdk/proxy/i;->d()V

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Lcom/mato/sdk/proxy/i;->join(J)V

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    invoke-virtual {v0}, Lcom/mato/sdk/proxy/i;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    invoke-virtual {v0}, Lcom/mato/sdk/proxy/i;->interrupt()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_32

    :cond_26
    :goto_26
    sput-object v3, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    sput-object v3, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    :try_start_2a
    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/mato/sdk/proxy/h;->a(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_30

    :goto_2f
    return-void

    :catch_30
    move-exception v0

    goto :goto_2f

    :catch_32
    move-exception v0

    goto :goto_26
.end method

.method private static s()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/mato/sdk/a/b$a;->a()I

    move-result v2

    if-ne v2, v1, :cond_13

    invoke-static {}, Lcom/mato/sdk/a/b;->a()Lcom/mato/sdk/a/b$g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mato/sdk/a/b$g;->a()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->p:Lcom/mato/sdk/proxy/Proxy$b;

    sget-object v3, Lcom/mato/sdk/proxy/Proxy$b;->a:Lcom/mato/sdk/proxy/Proxy$b;

    if-eq v2, v3, :cond_2d

    invoke-static {}, Lcom/mato/sdk/a/b;->d()Z

    move-result v2

    if-nez v2, :cond_12

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->p:Lcom/mato/sdk/proxy/Proxy$b;

    sget-object v3, Lcom/mato/sdk/proxy/Proxy$b;->b:Lcom/mato/sdk/proxy/Proxy$b;

    if-ne v2, v3, :cond_27

    move v0, v1

    goto :goto_12

    :cond_27
    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->p:Lcom/mato/sdk/proxy/Proxy$b;

    sget-object v3, Lcom/mato/sdk/proxy/Proxy$b;->c:Lcom/mato/sdk/proxy/Proxy$b;

    if-eq v2, v3, :cond_12

    :cond_2d
    invoke-static {}, Lcom/mato/sdk/a/b$a;->a()I

    move-result v2

    if-nez v2, :cond_38

    invoke-static {}, Lcom/mato/sdk/a/b;->j()Z

    move-result v0

    goto :goto_12

    :cond_38
    invoke-static {}, Lcom/mato/sdk/a/b$a;->a()I

    move-result v2

    if-ne v2, v1, :cond_49

    const-string/jumbo v0, "MAA"

    const-string/jumbo v2, "\u5168\u52a0\u901f"

    invoke-static {v0, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_12

    :cond_49
    invoke-static {}, Lcom/mato/sdk/a/b$a;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5a

    const-string/jumbo v1, "MAA"

    const-string/jumbo v2, "\u5168\u56de\u6e90"

    invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_5a
    invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z

    move-result v0

    goto :goto_12
.end method

.method public static declared-synchronized start(Landroid/app/Activity;)I
    .registers 6

    const/4 v0, 0x0

    const-class v1, Lcom/mato/sdk/proxy/Proxy;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/mato/sdk/utils/g;->h()Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v0, "MAA"

    const-string/jumbo v2, "only support froyo and higher"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_b8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_13} :catch_3b

    const/4 v0, -0x5

    :goto_14
    monitor-exit v1

    return v0

    :cond_16
    :try_start_16
    invoke-static {}, Lcom/mato/sdk/utils/g;->o()Z

    move-result v2

    if-nez v2, :cond_27

    const-string/jumbo v0, "MAA"

    const-string/jumbo v2, "processors does not support"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    goto :goto_14

    :cond_27
    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    if-eqz v2, :cond_47

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->getAddress()Lcom/mato/sdk/proxy/Address;

    move-result-object v2

    if-eqz v2, :cond_47

    const-string/jumbo v2, "MAA"

    const-string/jumbo v3, "watchdog thread still alive or getaddress not null"

    invoke-static {v2, v3}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_b8
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_3a} :catch_3b

    goto :goto_14

    :catch_3b
    move-exception v0

    :try_start_3c
    const-string/jumbo v0, "MAA"

    const-string/jumbo v2, "uncaught exception"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_b8

    const/4 v0, -0x6

    goto :goto_14

    :cond_47
    const/4 v2, 0x1

    :try_start_48
    sput-boolean v2, Lcom/mato/sdk/proxy/Proxy;->l:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/mato/sdk/utils/i;->a(Landroid/content/Context;)V

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/mato/sdk/utils/h;->a(Landroid/content/Context;)V

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/mato/sdk/utils/g;->a(Landroid/content/Context;)V

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/mato/sdk/utils/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/mato/sdk/utils/a;->a()Lcom/mato/sdk/utils/a;

    move-result-object v2

    sget-object v3, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/mato/sdk/utils/a;->b()V

    invoke-static {p0}, Lcom/mato/sdk/utils/g;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const-string/jumbo v0, "MAA"

    const-string/jumbo v2, "not support 3gwap"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    goto :goto_14

    :cond_7c
    new-instance v2, Lcom/mato/sdk/proxy/b;

    invoke-direct {v2}, Lcom/mato/sdk/proxy/b;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v3, Lcom/mato/sdk/proxy/Proxy$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/mato/sdk/proxy/Proxy$a;-><init>(B)V

    sput-object v3, Lcom/mato/sdk/proxy/Proxy;->i:Lcom/mato/sdk/proxy/Proxy$a;

    sget-object v3, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    sget-object v4, Lcom/mato/sdk/proxy/Proxy;->i:Lcom/mato/sdk/proxy/Proxy$a;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/mato/sdk/utils/h;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_bb

    const-string/jumbo v2, "MAA"

    const-string/jumbo v3, "no network"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/mato/sdk/utils/h$b;->a:Lcom/mato/sdk/utils/h$b;

    sput-object v2, Lcom/mato/sdk/proxy/Proxy;->k:Lcom/mato/sdk/utils/h$b;
    :try_end_b6
    .catchall {:try_start_48 .. :try_end_b6} :catchall_b8
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_b6} :catch_3b

    goto/16 :goto_14

    :catchall_b8
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_bb
    const/4 v0, 0x1

    :try_start_bc
    invoke-static {v0}, Lcom/mato/sdk/proxy/Proxy;->c(Z)I
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_b8

    move-result v0

    goto/16 :goto_14
.end method

.method public static declared-synchronized stop()V
    .registers 5

    const/4 v0, 0x0

    const-class v1, Lcom/mato/sdk/proxy/Proxy;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/mato/sdk/utils/g;->o()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_60
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_1e

    move-result v2

    if-nez v2, :cond_c

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    :try_start_c
    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->getAddress()Lcom/mato/sdk/proxy/Address;

    move-result-object v2

    if-nez v2, :cond_20

    :cond_1a
    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->p()V

    goto :goto_a

    :catch_1e
    move-exception v0

    goto :goto_a

    :cond_20
    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->p()V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/mato/sdk/proxy/Proxy;->m:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/mato/sdk/proxy/Proxy;->l:Z

    const-string/jumbo v2, "MAA"

    const-string/jumbo v3, "call close server"

    invoke-static {v2, v3}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/proxy/Proxy;->r()V

    const-string/jumbo v2, "MAA"

    const-string/jumbo v3, "after close server"

    invoke-static {v2, v3}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "MAA"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "the watchdog is null?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/mato/sdk/proxy/Proxy;->e:Lcom/mato/sdk/proxy/i;

    if-nez v4, :cond_4e

    const/4 v0, 0x1

    :cond_4e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mato/sdk/b/e;->a()Lcom/mato/sdk/b/e;

    invoke-static {}, Lcom/mato/sdk/b/e;->c()V
    :try_end_5f
    .catchall {:try_start_c .. :try_end_5f} :catchall_60
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_5f} :catch_1e

    goto :goto_a

    :catchall_60
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static supportWebview(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mato/sdk/proxy/Proxy;->o:Z

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->f:Landroid/webkit/WebView;

    if-nez v0, :cond_29

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mato/sdk/proxy/Proxy;->f:Landroid/webkit/WebView;

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    invoke-virtual {v1}, Lcom/mato/sdk/proxy/Address;->getHost()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mato/sdk/proxy/Proxy;->a:Lcom/mato/sdk/proxy/Address;

    invoke-virtual {v2}, Lcom/mato/sdk/proxy/Address;->getPort()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/mato/sdk/proxy/h;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_29
    return-void
.end method

.method private static t()V
    .registers 3

    sget-object v0, Lcom/mato/sdk/proxy/Proxy;->g:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/mato/sdk/proxy/g;

    invoke-direct {v1}, Lcom/mato/sdk/proxy/g;-><init>()V

    sput-object v1, Lcom/mato/sdk/proxy/Proxy;->n:Landroid/telephony/PhoneStateListener;

    sget-object v1, Lcom/mato/sdk/proxy/Proxy;->n:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close(Ljava/net/Socket;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    invoke-static {v0}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->a(I)V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
