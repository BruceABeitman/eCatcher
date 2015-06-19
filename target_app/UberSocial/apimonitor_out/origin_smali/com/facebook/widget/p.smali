.class Lcom/facebook/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x8

.field private static final b:I = 0x2

.field private static final c:Landroid/os/Handler;

.field private static d:Lcom/facebook/widget/be;

.field private static e:Lcom/facebook/widget/be;

.field private static final f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/facebook/widget/p;->c:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/widget/be;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/widget/be;-><init>(I)V

    sput-object v0, Lcom/facebook/widget/p;->d:Lcom/facebook/widget/be;

    new-instance v0, Lcom/facebook/widget/be;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/widget/be;-><init>(I)V

    sput-object v0, Lcom/facebook/widget/p;->e:Lcom/facebook/widget/be;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/widget/p;->f:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/widget/t;)Lcom/facebook/widget/s;
    .registers 3

    sget-object v1, Lcom/facebook/widget/p;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/widget/p;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/s;

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method static synthetic a(Lcom/facebook/widget/t;Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/widget/p;->b(Lcom/facebook/widget/t;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/t;Landroid/content/Context;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/facebook/widget/p;->b(Lcom/facebook/widget/t;Landroid/content/Context;Z)V

    return-void
.end method

.method private static a(Lcom/facebook/widget/t;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .registers 11

    invoke-static {p0}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/t;)Lcom/facebook/widget/s;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-boolean v1, v0, Lcom/facebook/widget/s;->c:Z

    if-nez v1, :cond_1f

    iget-object v1, v0, Lcom/facebook/widget/s;->b:Lcom/facebook/widget/u;

    invoke-virtual {v1}, Lcom/facebook/widget/u;->c()Lcom/facebook/widget/w;

    move-result-object v5

    if-eqz v5, :cond_1f

    sget-object v6, Lcom/facebook/widget/p;->c:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/widget/p$1;

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/p$1;-><init>(Lcom/facebook/widget/u;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/widget/w;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    return-void
.end method

.method static a(Lcom/facebook/widget/u;)V
    .registers 4

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v1, Lcom/facebook/widget/t;

    invoke-virtual {p0}, Lcom/facebook/widget/u;->b()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/widget/u;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/widget/t;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/widget/p;->f:Ljava/util/Map;

    monitor-enter v2

    :try_start_13
    sget-object v0, Lcom/facebook/widget/p;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/s;

    if-eqz v0, :cond_2c

    iput-object p0, v0, Lcom/facebook/widget/s;->b:Lcom/facebook/widget/u;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/widget/s;->c:Z

    iget-object v0, v0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/bf;

    invoke-interface {v0}, Lcom/facebook/widget/bf;->c()V

    :goto_27
    monitor-exit v2

    goto :goto_2

    :catchall_29
    move-exception v0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Lcom/facebook/widget/u;->d()Z

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/u;Lcom/facebook/widget/t;Z)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    goto :goto_27
.end method

.method private static a(Lcom/facebook/widget/u;Lcom/facebook/widget/t;)V
    .registers 5

    sget-object v0, Lcom/facebook/widget/p;->d:Lcom/facebook/widget/be;

    new-instance v1, Lcom/facebook/widget/r;

    invoke-virtual {p0}, Lcom/facebook/widget/u;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/widget/r;-><init>(Landroid/content/Context;Lcom/facebook/widget/t;)V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/u;Lcom/facebook/widget/t;Lcom/facebook/widget/be;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Lcom/facebook/widget/u;Lcom/facebook/widget/t;Lcom/facebook/widget/be;Ljava/lang/Runnable;)V
    .registers 7

    sget-object v1, Lcom/facebook/widget/p;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/facebook/widget/s;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/facebook/widget/s;-><init>(Lcom/facebook/widget/p$1;)V

    iput-object p0, v0, Lcom/facebook/widget/s;->b:Lcom/facebook/widget/u;

    sget-object v2, Lcom/facebook/widget/p;->f:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/facebook/widget/be;->a(Ljava/lang/Runnable;)Lcom/facebook/widget/bf;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/bf;

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private static a(Lcom/facebook/widget/u;Lcom/facebook/widget/t;Z)V
    .registers 6

    sget-object v0, Lcom/facebook/widget/p;->e:Lcom/facebook/widget/be;

    new-instance v1, Lcom/facebook/widget/q;

    invoke-virtual {p0}, Lcom/facebook/widget/u;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/widget/q;-><init>(Landroid/content/Context;Lcom/facebook/widget/t;Z)V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/u;Lcom/facebook/widget/t;Lcom/facebook/widget/be;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Lcom/facebook/widget/t;Landroid/content/Context;)V
    .registers 13

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/widget/t;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_a2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_aa

    const/4 v4, 0x0

    :try_start_c
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_be

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_a5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_ae

    move-result-object v5

    :try_start_1a
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x80

    new-array v6, v6, [C

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_28
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v4, v6, v8, v9}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v8

    if-lez v8, :cond_89

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_96
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_34} :catch_35

    goto :goto_28

    :catch_35
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    :goto_39
    invoke-static {v5}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/facebook/b/p;->a(Ljava/net/URLConnection;)V

    move-object v4, v0

    :goto_40
    if-eqz v1, :cond_45

    invoke-static {p0, v4, v3, v2}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/t;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    :cond_45
    return-void

    :sswitch_46
    :try_start_46
    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ba

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/widget/t;->a:Ljava/net/URL;

    invoke-static {p1, v1, v4}, Lcom/facebook/widget/av;->a(Landroid/content/Context;Ljava/net/URL;Ljava/net/URL;)V

    invoke-static {p0}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/t;)Lcom/facebook/widget/s;

    move-result-object v1

    if-eqz v1, :cond_73

    iget-boolean v5, v1, Lcom/facebook/widget/s;->c:Z

    if-nez v5, :cond_73

    iget-object v1, v1, Lcom/facebook/widget/s;->b:Lcom/facebook/widget/u;

    new-instance v5, Lcom/facebook/widget/t;

    iget-object v6, p0, Lcom/facebook/widget/t;->b:Ljava/lang/Object;

    invoke-direct {v5, v4, v6}, Lcom/facebook/widget/t;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-static {v1, v5, v4}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/u;Lcom/facebook/widget/t;Z)V
    :try_end_73
    .catchall {:try_start_46 .. :try_end_73} :catchall_a5
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_73} :catch_b4

    :cond_73
    move v1, v2

    move-object v4, v3

    move-object v5, v3

    :goto_76
    invoke-static {v5}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/net/URLConnection;)V

    goto :goto_40

    :sswitch_7d
    :try_start_7d
    invoke-static {p1, v0}, Lcom/facebook/widget/y;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_a5
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_ae

    move-result-object v5

    :try_start_81
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_76

    :cond_89
    invoke-static {v4}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    new-instance v4, Lcom/facebook/t;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V
    :try_end_95
    .catchall {:try_start_81 .. :try_end_95} :catchall_96
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_95} :catch_35

    goto :goto_76

    :catchall_96
    move-exception v1

    move-object v3, v5

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_9b
    invoke-static {v3}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/net/URLConnection;)V

    throw v0

    :catchall_a2
    move-exception v0

    move-object v1, v3

    goto :goto_9b

    :catchall_a5
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_9b

    :catch_aa
    move-exception v0

    move-object v5, v3

    move-object v4, v3

    goto :goto_39

    :catch_ae
    move-exception v4

    move-object v5, v3

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto :goto_39

    :catch_b4
    move-exception v1

    move-object v5, v3

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto :goto_39

    :cond_ba
    move v1, v2

    move-object v4, v3

    move-object v5, v3

    goto :goto_76

    :sswitch_data_be
    .sparse-switch
        0xc8 -> :sswitch_7d
        0x12d -> :sswitch_46
        0x12e -> :sswitch_46
    .end sparse-switch
.end method

.method private static b(Lcom/facebook/widget/t;Landroid/content/Context;Z)V
    .registers 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_3b

    iget-object v1, p0, Lcom/facebook/widget/t;->a:Ljava/net/URL;

    invoke-static {p1, v1}, Lcom/facebook/widget/av;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-static {v1, p1}, Lcom/facebook/widget/y;->a(Ljava/net/URL;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_16
    if-nez v1, :cond_1e

    iget-object v0, p0, Lcom/facebook/widget/t;->a:Ljava/net/URL;

    invoke-static {v0, p1}, Lcom/facebook/widget/y;->a(Ljava/net/URL;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    :cond_1e
    if-eqz v0, :cond_2b

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/io/Closeable;)V

    invoke-static {p0, v2, v3, v1}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/t;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-static {p0}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/t;)Lcom/facebook/widget/s;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-boolean v1, v0, Lcom/facebook/widget/s;->c:Z

    if-nez v1, :cond_2a

    iget-object v0, v0, Lcom/facebook/widget/s;->b:Lcom/facebook/widget/u;

    invoke-static {v0, p0}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/u;Lcom/facebook/widget/t;)V

    goto :goto_2a

    :cond_3b
    move v1, v0

    move-object v0, v2

    goto :goto_16
.end method

.method static b(Lcom/facebook/widget/u;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/widget/t;

    invoke-virtual {p0}, Lcom/facebook/widget/u;->b()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/widget/u;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/facebook/widget/t;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    sget-object v4, Lcom/facebook/widget/p;->f:Ljava/util/Map;

    monitor-enter v4

    :try_start_12
    sget-object v0, Lcom/facebook/widget/p;->f:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/s;

    if-eqz v0, :cond_34

    iget-object v2, v0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/bf;

    invoke-interface {v2}, Lcom/facebook/widget/bf;->a()Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v0, Lcom/facebook/widget/p;->f:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_2a
    monitor-exit v4

    return v0

    :cond_2c
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/facebook/widget/s;->c:Z

    move v0, v1

    goto :goto_2a

    :catchall_31
    move-exception v0

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_31

    throw v0

    :cond_34
    move v0, v2

    goto :goto_2a
.end method

.method static c(Lcom/facebook/widget/u;)V
    .registers 4

    new-instance v0, Lcom/facebook/widget/t;

    invoke-virtual {p0}, Lcom/facebook/widget/u;->b()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/widget/u;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/widget/t;-><init>(Ljava/net/URL;Ljava/lang/Object;)V

    sget-object v1, Lcom/facebook/widget/p;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_10
    sget-object v2, Lcom/facebook/widget/p;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/s;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/bf;

    invoke-interface {v0}, Lcom/facebook/widget/bf;->c()V

    :cond_1f
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_21

    throw v0
.end method
