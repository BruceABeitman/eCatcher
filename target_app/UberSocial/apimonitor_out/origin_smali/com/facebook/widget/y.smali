.class Lcom/facebook/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;

.field private static volatile b:Lcom/facebook/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/widget/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/y;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/facebook/b/b;
    .registers 6

    const-class v1, Lcom/facebook/widget/y;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/widget/y;->b:Lcom/facebook/b/b;

    if-nez v0, :cond_19

    new-instance v0, Lcom/facebook/b/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/facebook/widget/y;->a:Ljava/lang/String;

    new-instance v4, Lcom/facebook/b/f;

    invoke-direct {v4}, Lcom/facebook/b/f;-><init>()V

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/f;)V

    sput-object v0, Lcom/facebook/widget/y;->b:Lcom/facebook/b/b;

    :cond_19
    sget-object v0, Lcom/facebook/widget/y;->b:Lcom/facebook/b/b;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_28

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v1}, Lcom/facebook/widget/y;->a(Ljava/net/URL;)Z

    move-result v2

    if-eqz v2, :cond_28

    :try_start_17
    invoke-static {p0}, Lcom/facebook/widget/y;->a(Landroid/content/Context;)Lcom/facebook/b/b;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/facebook/widget/z;

    invoke-direct {v3, v0, p1}, Lcom/facebook/widget/z;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-virtual {v2, v1, v3}, Lcom/facebook/b/b;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_27} :catch_29

    move-result-object v0

    :cond_28
    :goto_28
    return-object v0

    :catch_29
    move-exception v1

    goto :goto_28
.end method

.method static a(Ljava/net/URL;Landroid/content/Context;)Ljava/io/InputStream;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    invoke-static {p0}, Lcom/facebook/widget/y;->a(Ljava/net/URL;)Z

    move-result v1

    if-eqz v1, :cond_15

    :try_start_9
    invoke-static {p1}, Lcom/facebook/widget/y;->a(Landroid/content/Context;)Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/b/b;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_16

    move-result-object v0

    :cond_15
    :goto_15
    return-object v0

    :catch_16
    move-exception v1

    sget-object v2, Lcom/facebook/af;->d:Lcom/facebook/af;

    const/4 v3, 0x5

    sget-object v4, Lcom/facebook/widget/y;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/facebook/b/j;->a(Lcom/facebook/af;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method private static a(Ljava/net/URL;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fbcdn.net"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const-string v2, "fbcdn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "akamaihd.net"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_20
    const/4 v0, 0x0

    goto :goto_f
.end method
