.class Lcom/facebook/widget/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static volatile c:Lcom/facebook/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/facebook/widget/av;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/av;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/widget/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/av;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/facebook/b/b;
    .registers 6

    const-class v1, Lcom/facebook/widget/av;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/widget/av;->c:Lcom/facebook/b/b;

    if-nez v0, :cond_19

    new-instance v0, Lcom/facebook/b/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/facebook/widget/av;->a:Ljava/lang/String;

    new-instance v4, Lcom/facebook/b/f;

    invoke-direct {v4}, Lcom/facebook/b/f;-><init>()V

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/f;)V

    sput-object v0, Lcom/facebook/widget/av;->c:Lcom/facebook/b/b;

    :cond_19
    sget-object v0, Lcom/facebook/widget/av;->c:Lcom/facebook/b/b;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Landroid/content/Context;Ljava/net/URL;)Ljava/net/URL;
    .registers 11

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :goto_4
    return-object v1

    :cond_5
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_9
    invoke-static {p0}, Lcom/facebook/widget/av;->a(Landroid/content/Context;)Lcom/facebook/b/b;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_56
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_c} :catch_67
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_50

    move-result-object v4

    move-object v3, v2

    move-object v2, v1

    :goto_f
    :try_start_f
    sget-object v5, Lcom/facebook/widget/av;->b:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lcom/facebook/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_44

    const/4 v3, 0x1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_60
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_1d} :catch_6a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_64

    const/16 v2, 0x80

    :try_start_1f
    new-array v2, v2, [C

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_26
    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v0, v2, v6, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    if-lez v6, :cond_38

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_5c
    .catch Ljava/net/MalformedURLException; {:try_start_1f .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_32} :catch_62

    goto :goto_26

    :catch_33
    move-exception v2

    :goto_34
    invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :cond_38
    :try_start_38
    invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_5c
    .catch Ljava/net/MalformedURLException; {:try_start_38 .. :try_end_3e} :catch_33
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_62

    move-result-object v2

    move v8, v3

    move-object v3, v2

    move-object v2, v0

    move v0, v8

    goto :goto_f

    :cond_44
    if-eqz v0, :cond_6d

    :try_start_46
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_60
    .catch Ljava/net/MalformedURLException; {:try_start_46 .. :try_end_4b} :catch_6a
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4b} :catch_64

    :goto_4b
    invoke-static {v2}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    move-object v1, v0

    goto :goto_4

    :catch_50
    move-exception v0

    move-object v0, v1

    :goto_52
    invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_56
    move-exception v0

    move-object v2, v1

    :goto_58
    invoke-static {v2}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_5c
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_58

    :catchall_60
    move-exception v0

    goto :goto_58

    :catch_62
    move-exception v2

    goto :goto_52

    :catch_64
    move-exception v0

    move-object v0, v2

    goto :goto_52

    :catch_67
    move-exception v0

    move-object v0, v1

    goto :goto_34

    :catch_6a
    move-exception v0

    move-object v0, v2

    goto :goto_34

    :cond_6d
    move-object v0, v1

    goto :goto_4b
.end method

.method static a(Landroid/content/Context;Ljava/net/URL;Ljava/net/URL;)V
    .registers 8

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    invoke-static {p0}, Lcom/facebook/widget/av;->a(Landroid/content/Context;)Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/widget/av;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_23

    move-result-object v0

    :try_start_14
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_30
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_23

    invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catch_23
    move-exception v1

    invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_28
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2c
    invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_30
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2c
.end method
