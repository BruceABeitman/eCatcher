.class public final Lcom/facebook/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Lcom/facebook/internal/al;

.field private static c:Lcom/facebook/internal/al;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/internal/o;",
            "Lcom/facebook/internal/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/internal/al;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/internal/al;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/k;->b:Lcom/facebook/internal/al;

    new-instance v0, Lcom/facebook/internal/al;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/internal/al;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/k;->c:Lcom/facebook/internal/al;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    return-void
.end method

.method private static declared-synchronized a()Landroid/os/Handler;
    .registers 3

    const-class v1, Lcom/facebook/internal/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/k;->a:Landroid/os/Handler;

    if-nez v0, :cond_12

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/internal/k;->a:Landroid/os/Handler;

    :cond_12
    sget-object v0, Lcom/facebook/internal/k;->a:Landroid/os/Handler;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/facebook/internal/o;)Lcom/facebook/internal/n;
    .registers 3

    sget-object v1, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/n;

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/internal/t;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/facebook/internal/ah;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/o;Landroid/content/Context;)V
    .registers 13

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_3
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/facebook/internal/o;->a:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_ab
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_cf
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_14} :catch_bf

    const/4 v4, 0x0

    :try_start_15
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_e6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_b4
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_22} :catch_d4
    .catch Ljava/net/URISyntaxException; {:try_start_15 .. :try_end_22} :catch_c3

    move-result-object v5

    :try_start_23
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x80

    new-array v6, v6, [C

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_31
    const/4 v8, 0x0

    const/16 v9, 0x80

    invoke-virtual {v4, v6, v8, v9}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v8

    if-lez v8, :cond_93

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_b9
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3e} :catch_3f
    .catch Ljava/net/URISyntaxException; {:try_start_23 .. :try_end_3e} :catch_a0

    goto :goto_31

    :catch_3f
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    :goto_43
    invoke-static {v5}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/facebook/internal/ai;->a(Ljava/net/URLConnection;)V

    :goto_49
    if-eqz v1, :cond_4e

    invoke-static {p0, v0, v3, v2}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/o;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    :cond_4e
    return-void

    :sswitch_4f
    :try_start_4f
    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e2

    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/internal/o;->a:Ljava/net/URI;

    invoke-static {p1, v1, v4}, Lcom/facebook/internal/ah;->a(Landroid/content/Context;Ljava/net/URI;Ljava/net/URI;)V

    invoke-static {p0}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/o;)Lcom/facebook/internal/n;

    move-result-object v1

    if-eqz v1, :cond_7c

    iget-boolean v5, v1, Lcom/facebook/internal/n;->c:Z

    if-nez v5, :cond_7c

    iget-object v1, v1, Lcom/facebook/internal/n;->b:Lcom/facebook/internal/p;

    new-instance v5, Lcom/facebook/internal/o;

    iget-object v6, p0, Lcom/facebook/internal/o;->b:Ljava/lang/Object;

    invoke-direct {v5, v4, v6}, Lcom/facebook/internal/o;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-static {v1, v5, v4}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/p;Lcom/facebook/internal/o;Z)V
    :try_end_7c
    .catchall {:try_start_4f .. :try_end_7c} :catchall_b4
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_7c} :catch_db
    .catch Ljava/net/URISyntaxException; {:try_start_4f .. :try_end_7c} :catch_c9

    :cond_7c
    move v1, v2

    move-object v4, v3

    move-object v5, v3

    :goto_7f
    invoke-static {v5}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/net/URLConnection;)V

    move-object v0, v4

    goto :goto_49

    :sswitch_87
    :try_start_87
    invoke-static {p1, v0}, Lcom/facebook/internal/t;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_b4
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_d4
    .catch Ljava/net/URISyntaxException; {:try_start_87 .. :try_end_8a} :catch_c3

    move-result-object v5

    :try_start_8b
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_7f

    :cond_93
    invoke-static {v4}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V

    new-instance v4, Lcom/facebook/FacebookException;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_8b .. :try_end_9f} :catchall_b9
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_9f} :catch_3f
    .catch Ljava/net/URISyntaxException; {:try_start_8b .. :try_end_9f} :catch_a0

    goto :goto_7f

    :catch_a0
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    :goto_a4
    invoke-static {v5}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/facebook/internal/ai;->a(Ljava/net/URLConnection;)V

    goto :goto_49

    :catchall_ab
    move-exception v0

    move-object v1, v3

    :goto_ad
    invoke-static {v3}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/net/URLConnection;)V

    throw v0

    :catchall_b4
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_ad

    :catchall_b9
    move-exception v1

    move-object v3, v5

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_ad

    :catch_bf
    move-exception v0

    move-object v5, v3

    move-object v4, v3

    goto :goto_a4

    :catch_c3
    move-exception v4

    move-object v5, v3

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto :goto_a4

    :catch_c9
    move-exception v1

    move-object v5, v3

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto :goto_a4

    :catch_cf
    move-exception v0

    move-object v5, v3

    move-object v4, v3

    goto/16 :goto_43

    :catch_d4
    move-exception v4

    move-object v5, v3

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto/16 :goto_43

    :catch_db
    move-exception v1

    move-object v5, v3

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_43

    :cond_e2
    move v1, v2

    move-object v4, v3

    move-object v5, v3

    goto :goto_7f

    :sswitch_data_e6
    .sparse-switch
        0xc8 -> :sswitch_87
        0x12d -> :sswitch_4f
        0x12e -> :sswitch_4f
    .end sparse-switch
.end method

.method static synthetic a(Lcom/facebook/internal/o;Landroid/content/Context;Z)V
    .registers 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_46

    iget-object v1, p0, Lcom/facebook/internal/o;->a:Ljava/net/URI;

    invoke-static {p1, v1}, Lcom/facebook/internal/ah;->a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-static {v1, p1}, Lcom/facebook/internal/t;->a(Ljava/net/URI;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_16
    if-nez v1, :cond_1e

    iget-object v0, p0, Lcom/facebook/internal/o;->a:Ljava/net/URI;

    invoke-static {v0, p1}, Lcom/facebook/internal/t;->a(Ljava/net/URI;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    :cond_1e
    if-eqz v0, :cond_2b

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/io/Closeable;)V

    invoke-static {p0, v2, v3, v1}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/o;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-static {p0}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/o;)Lcom/facebook/internal/n;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-boolean v1, v0, Lcom/facebook/internal/n;->c:Z

    if-nez v1, :cond_2a

    iget-object v0, v0, Lcom/facebook/internal/n;->b:Lcom/facebook/internal/p;

    sget-object v1, Lcom/facebook/internal/k;->b:Lcom/facebook/internal/al;

    new-instance v2, Lcom/facebook/internal/m;

    invoke-virtual {v0}, Lcom/facebook/internal/p;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/facebook/internal/m;-><init>(Landroid/content/Context;Lcom/facebook/internal/o;)V

    invoke-static {v0, p0, v1, v2}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/p;Lcom/facebook/internal/o;Lcom/facebook/internal/al;Ljava/lang/Runnable;)V

    goto :goto_2a

    :cond_46
    move v1, v0

    move-object v0, v2

    goto :goto_16
.end method

.method private static a(Lcom/facebook/internal/o;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .registers 11

    invoke-static {p0}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/o;)Lcom/facebook/internal/n;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-boolean v1, v0, Lcom/facebook/internal/n;->c:Z

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/facebook/internal/n;->b:Lcom/facebook/internal/p;

    invoke-virtual {v1}, Lcom/facebook/internal/p;->c()Lcom/facebook/internal/r;

    move-result-object v5

    if-eqz v5, :cond_21

    invoke-static {}, Lcom/facebook/internal/k;->a()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/facebook/internal/k$1;

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/k$1;-><init>(Lcom/facebook/internal/p;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/r;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method

.method public static a(Lcom/facebook/internal/p;)V
    .registers 4

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v1, Lcom/facebook/internal/o;

    invoke-virtual {p0}, Lcom/facebook/internal/p;->b()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/p;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/internal/o;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    sget-object v2, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    monitor-enter v2

    :try_start_13
    sget-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/n;

    if-eqz v0, :cond_2c

    iput-object p0, v0, Lcom/facebook/internal/n;->b:Lcom/facebook/internal/p;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/internal/n;->c:Z

    iget-object v0, v0, Lcom/facebook/internal/n;->a:Lcom/facebook/internal/am;

    invoke-interface {v0}, Lcom/facebook/internal/am;->b()V

    :goto_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_29

    goto :goto_2

    :catchall_29
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Lcom/facebook/internal/p;->d()Z

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/p;Lcom/facebook/internal/o;Z)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    goto :goto_27
.end method

.method private static a(Lcom/facebook/internal/p;Lcom/facebook/internal/o;Lcom/facebook/internal/al;Ljava/lang/Runnable;)V
    .registers 7

    sget-object v1, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/facebook/internal/n;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/facebook/internal/n;-><init>(B)V

    iput-object p0, v0, Lcom/facebook/internal/n;->b:Lcom/facebook/internal/p;

    sget-object v2, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/facebook/internal/al;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/am;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/internal/n;->a:Lcom/facebook/internal/am;

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/facebook/internal/p;Lcom/facebook/internal/o;Z)V
    .registers 6

    sget-object v0, Lcom/facebook/internal/k;->c:Lcom/facebook/internal/al;

    new-instance v1, Lcom/facebook/internal/l;

    invoke-virtual {p0}, Lcom/facebook/internal/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/internal/l;-><init>(Landroid/content/Context;Lcom/facebook/internal/o;Z)V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/p;Lcom/facebook/internal/o;Lcom/facebook/internal/al;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Lcom/facebook/internal/p;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/internal/o;

    invoke-virtual {p0}, Lcom/facebook/internal/p;->b()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/p;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/facebook/internal/o;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    sget-object v4, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    monitor-enter v4

    :try_start_12
    sget-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/n;

    if-eqz v0, :cond_34

    iget-object v2, v0, Lcom/facebook/internal/n;->a:Lcom/facebook/internal/am;

    invoke-interface {v2}, Lcom/facebook/internal/am;->a()Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v0, Lcom/facebook/internal/k;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_2a
    monitor-exit v4

    return v0

    :cond_2c
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/facebook/internal/n;->c:Z
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_31

    move v0, v1

    goto :goto_2a

    :catchall_31
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_34
    move v0, v2

    goto :goto_2a
.end method
