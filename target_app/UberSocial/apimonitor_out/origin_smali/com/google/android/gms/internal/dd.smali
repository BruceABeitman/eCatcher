.class public final Lcom/google/android/gms/internal/dd;
.super Lcom/google/android/gms/internal/da;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/internal/dd;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ad;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dd;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ad;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/da;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dd;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/dd;->d:Lcom/google/android/gms/internal/ad;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/ad;Lcom/google/android/gms/internal/cd;)Lcom/google/android/gms/internal/cf;
    .registers 7

    const-string v0, "Starting ad request from service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ad;->a()V

    new-instance v0, Lcom/google/android/gms/internal/dh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dh;-><init>(Landroid/content/Context;)V

    iget v1, v0, Lcom/google/android/gms/internal/dh;->l:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    const-string v0, "Device is offline."

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/cf;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cf;-><init>(I)V

    :goto_1d
    return-object v0

    :cond_1e
    new-instance v1, Lcom/google/android/gms/internal/df;

    iget-object v2, p2, Lcom/google/android/gms/internal/cd;->f:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/df;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/google/android/gms/internal/cd;->c:Lcom/google/android/gms/internal/z;

    iget-object v2, v2, Lcom/google/android/gms/internal/z;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_3e

    iget-object v2, p2, Lcom/google/android/gms/internal/cd;->c:Lcom/google/android/gms/internal/z;

    iget-object v2, v2, Lcom/google/android/gms/internal/z;->c:Landroid/os/Bundle;

    const-string v3, "_ad"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-static {p0, p2, v2}, Lcom/google/android/gms/internal/de;->a(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Ljava/lang/String;)Lcom/google/android/gms/internal/cf;

    move-result-object v0

    goto :goto_1d

    :cond_3e
    const-wide/16 v2, 0xfa

    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/internal/ad;->a(J)Landroid/location/Location;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/dh;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_51

    new-instance v0, Lcom/google/android/gms/internal/cf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cf;-><init>(I)V

    goto :goto_1d

    :cond_51
    sget-object v2, Lcom/google/android/gms/internal/dx;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/dd$1;

    invoke-direct {v3, p0, p2, v1, v0}, Lcom/google/android/gms/internal/dd$1;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/df;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/df;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6f

    new-instance v0, Lcom/google/android/gms/internal/cf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/df;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cf;-><init>(I)V

    goto :goto_1d

    :cond_6f
    iget-object v1, p2, Lcom/google/android/gms/internal/cd;->k:Lcom/google/android/gms/internal/db;

    iget-object v1, v1, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/dd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/cf;

    move-result-object v0

    goto :goto_1d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/cf;
    .registers 13

    const/16 v9, 0x12c

    const/4 v0, 0x0

    :try_start_3
    new-instance v3, Lcom/google/android/gms/internal/dg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/dg;-><init>()V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v2, v1

    move v1, v0

    :goto_13
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_b8

    const/4 v6, 0x0

    :try_start_1a
    invoke-static {p0, p1, v6, v0}, Lcom/google/android/gms/internal/ds;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    const/16 v8, 0xc8

    if-lt v6, v8, :cond_4b

    if-ge v6, v9, :cond_4b

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ds;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v2, v6}, Lcom/google/android/gms/internal/dd;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v3, v1, v7, v2}, Lcom/google/android/gms/internal/dg;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/dg;->a(J)Lcom/google/android/gms/internal/cf;
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_db

    move-result-object v1

    :try_start_46
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_b8

    move-object v0, v1

    :goto_4a
    return-object v0

    :cond_4b
    :try_start_4b
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v2, v7, v8, v6}, Lcom/google/android/gms/internal/dd;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    if-lt v6, v9, :cond_8f

    const/16 v2, 0x190

    if-ge v6, v2, :cond_8f

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v1, "No location header to follow redirect."

    invoke-static {v1}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/cf;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cf;-><init>(I)V
    :try_end_70
    .catchall {:try_start_4b .. :try_end_70} :catchall_db

    :try_start_70
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_b8

    move-object v0, v1

    goto :goto_4a

    :cond_75
    :try_start_75
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x5

    if-le v1, v6, :cond_b0

    const-string v1, "Too many redirects."

    invoke-static {v1}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/cf;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cf;-><init>(I)V
    :try_end_8a
    .catchall {:try_start_75 .. :try_end_8a} :catchall_db

    :try_start_8a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_b8

    move-object v0, v1

    goto :goto_4a

    :cond_8f
    :try_start_8f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received error HTTP response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/cf;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cf;-><init>(I)V
    :try_end_ab
    .catchall {:try_start_8f .. :try_end_ab} :catchall_db

    :try_start_ab
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_b8

    move-object v0, v1

    goto :goto_4a

    :cond_b0
    :try_start_b0
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/dg;->a(Ljava/util/Map;)V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_db

    :try_start_b3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b8

    goto/16 :goto_13

    :catch_b8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while connecting to ad server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/cf;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cf;-><init>(I)V

    goto/16 :goto_4a

    :catchall_db
    move-exception v1

    :try_start_dc
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e0} :catch_b8
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ad;)Lcom/google/android/gms/internal/dd;
    .registers 5

    sget-object v1, Lcom/google/android/gms/internal/dd;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/dd;->b:Lcom/google/android/gms/internal/dd;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/dd;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/dd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ad;)V

    sput-object v0, Lcom/google/android/gms/internal/dd;->b:Lcom/google/android/gms/internal/dd;

    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/dd;->b:Lcom/google/android/gms/internal/dd;

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .registers 9

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(I)Z

    move-result v0

    if-eqz v0, :cond_cc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Http Response: {\n  URL:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_82

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    goto :goto_5f

    :cond_82
    const-string v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_ab

    const/4 v0, 0x0

    :goto_8a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_b0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_8a

    :cond_ab
    const-string v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    :cond_b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Response Code:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->d(Ljava/lang/String;)V

    :cond_cc
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/cd;)Lcom/google/android/gms/internal/cf;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/dd;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/dd;->d:Lcom/google/android/gms/internal/ad;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/dd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ad;Lcom/google/android/gms/internal/cd;)Lcom/google/android/gms/internal/cf;

    move-result-object v0

    return-object v0
.end method
