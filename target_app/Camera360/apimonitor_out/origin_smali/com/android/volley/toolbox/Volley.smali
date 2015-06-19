.class public Lcom/android/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;
    .registers 10

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "volley"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "volley/0"

    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_35} :catch_60

    move-result-object v5

    :goto_36
    if-nez p1, :cond_43

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_56

    new-instance p1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {p1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    :cond_43
    :goto_43
    new-instance v2, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v2, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    new-instance v4, Lcom/android/volley/RequestQueue;

    new-instance v6, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v6, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    invoke-virtual {v4}, Lcom/android/volley/RequestQueue;->start()V

    return-object v4

    :cond_56
    new-instance p1, Lcom/android/volley/toolbox/HttpClientStack;

    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v6

    invoke-direct {p1, v6}, Lcom/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    goto :goto_43

    :catch_60
    move-exception v6

    goto :goto_36
.end method
