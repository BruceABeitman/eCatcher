.class Lcom/twidroid/net/a/c/a/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "Echofon/Android"

.field private static final e:Ljava/lang/String; = "StreamWorker"


# instance fields
.field protected a:Ljavax/net/ssl/HttpsURLConnection;

.field final synthetic b:Lcom/twidroid/net/a/c/a/d;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/twidroid/net/a/c/a/d;)V
    .registers 4

    iput-object p1, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/net/a/c/a/g;->d:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserStreamWorker @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/a/g;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_5c
    .catch Ld/a/c/d; {:try_start_1 .. :try_end_7} :catch_64
    .catch Ld/a/c/c; {:try_start_1 .. :try_end_7} :catch_6c
    .catch Ld/a/c/a; {:try_start_1 .. :try_end_7} :catch_74

    const/16 v1, 0x2710

    :try_start_9
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const-string v1, "User-Agent"

    const-string v2, "Echofon/Android"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    invoke-static {v1}, Lcom/twidroid/net/a/c/a/d;->d(Lcom/twidroid/net/a/c/a/d;)Lcom/ubermedia/net/b/c;

    move-result-object v1

    if-eqz v1, :cond_5b

    new-instance v1, Lcom/twidroid/net/a/c/a/e;

    iget-object v2, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v3, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    invoke-static {v3}, Lcom/twidroid/net/a/c/a/d;->d(Lcom/twidroid/net/a/c/a/d;)Lcom/ubermedia/net/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ubermedia/net/b/c;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    invoke-static {v4}, Lcom/twidroid/net/a/c/a/d;->d(Lcom/twidroid/net/a/c/a/d;)Lcom/ubermedia/net/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubermedia/net/b/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/twidroid/net/a/c/a/e;-><init>(Lcom/twidroid/net/a/c/a/d;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v2, v2, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v3, v3, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/twidroid/net/a/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/a/e;->a(Ljava/lang/Object;)Ld/a/d/b;
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_5b} :catch_82
    .catch Ld/a/c/d; {:try_start_9 .. :try_end_5b} :catch_80
    .catch Ld/a/c/c; {:try_start_9 .. :try_end_5b} :catch_7e
    .catch Ld/a/c/a; {:try_start_9 .. :try_end_5b} :catch_7c

    :cond_5b
    :goto_5b
    return-object v0

    :catch_5c
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_60
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    :catch_64
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_68
    invoke-virtual {v1}, Ld/a/c/d;->printStackTrace()V

    goto :goto_5b

    :catch_6c
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_70
    invoke-virtual {v1}, Ld/a/c/c;->printStackTrace()V

    goto :goto_5b

    :catch_74
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_78
    invoke-virtual {v1}, Ld/a/c/a;->printStackTrace()V

    goto :goto_5b

    :catch_7c
    move-exception v1

    goto :goto_78

    :catch_7e
    move-exception v1

    goto :goto_70

    :catch_80
    move-exception v1

    goto :goto_68

    :catch_82
    move-exception v1

    goto :goto_60
.end method

.method static synthetic a(Lcom/twidroid/net/a/c/a/g;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/net/a/c/a/g;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/twidroid/net/a/c/a/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/net/a/c/a/g;->d:Z

    return p1
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)V
    .registers 10

    const/4 v7, 0x0

    const-string v0, "StreamWorker"

    const-string v1, "Trying to read stream"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_12

    const-string v0, "StreamWorker"

    const-string v1, "something is terribly wrong, bacause input stream is null!!!"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    const/16 v0, 0x800

    new-array v0, v0, [B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_72

    iget-boolean v3, p0, Lcom/twidroid/net/a/c/a/g;->d:Z

    if-eqz v3, :cond_72

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "StreamWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/twidroid/net/a/c/a/d;->a(Lcom/twidroid/net/a/c/a/d;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_5c
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b .. :try_end_5c} :catch_5d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_5c} :catch_97
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_5c} :catch_a3
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_5c} :catch_af

    goto :goto_1b

    :catch_5d
    move-exception v0

    const-string v0, "StreamWorker"

    const-string v1, "timeout"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    invoke-static {v0, v7}, Lcom/twidroid/net/a/c/a/d;->a(Lcom/twidroid/net/a/c/a/d;I)I

    :goto_6a
    const-string v0, "StreamWorker"

    const-string v1, "Read stream finished"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_72
    :try_start_72
    const-string v0, "StreamWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/twidroid/net/a/c/a/g;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/net/SocketTimeoutException; {:try_start_72 .. :try_end_96} :catch_5d
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_96} :catch_97
    .catch Ljava/lang/NullPointerException; {:try_start_72 .. :try_end_96} :catch_a3
    .catch Ljava/lang/IllegalStateException; {:try_start_72 .. :try_end_96} :catch_af

    goto :goto_6a

    :catch_97
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "StreamWorker"

    const-string v1, "Error, disconnected!"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    :catch_a3
    move-exception v0

    const-string v1, "StreamWorker"

    const-string v2, "Got NullPointerException, stream read finished abnormally."

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V

    goto :goto_6a

    :catch_af
    move-exception v0

    const-string v0, "StreamWorker"

    const-string v1, "Attempt to use inflater after calling end"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a
.end method

.method public run()V
    .registers 9

    const/4 v3, 0x0

    const/16 v1, 0x191

    const/4 v7, 0x0

    :try_start_4
    new-instance v4, Ljava/net/URL;

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v0, v0, Lcom/twidroid/net/a/c/a/d;->d:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_d} :catch_100
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_108

    :try_start_d
    new-instance v2, Ljava/net/URL;

    const-string v0, "https://api.twitter.com/1.1/application/rate_limit_status.json"

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_14} :catch_17c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_177

    :try_start_14
    invoke-direct {p0, v4}, Lcom/twidroid/net/a/c/a/g;->a(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_1a} :catch_180
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_179

    :goto_1a
    :try_start_1a
    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_170
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_13a

    const/4 v0, -0x1

    :try_start_20
    iget-object v3, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_170
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_110

    move-result v0

    :cond_26
    :goto_26
    :try_start_26
    const-string v3, "StreamWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_184

    if-ne v0, v1, :cond_b3

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    invoke-static {v0}, Lcom/twidroid/net/a/c/a/d;->b(Lcom/twidroid/net/a/c/a/d;)Z

    move-result v0

    if-nez v0, :cond_b3

    invoke-direct {p0, v2}, Lcom/twidroid/net/a/c/a/g;->a(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    const-string v0, "Date"

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6c
    .catchall {:try_start_26 .. :try_end_6c} :catchall_170
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_6c} :catch_13a

    move-result v2

    if-nez v2, :cond_b0

    :try_start_6f
    invoke-static {}, Lcom/twidroid/net/a/c/a/d;->k()Ljava/text/SimpleDateFormat;

    move-result-object v2

    const-string v3, "GMT"

    const-string v5, "+0000"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTC"

    const-string v5, "+0000"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-static {v2, v3}, Lcom/twidroid/net/a/c/a/d;->a(J)J

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/twidroid/net/a/c/a/d;->a(Lcom/twidroid/net/a/c/a/d;Z)Z

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const-string v0, "StreamWorker"

    const-string v2, "Got 401, corrected timestamp and reconnected"

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/twidroid/net/a/c/a/g;->a(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_b0
    .catchall {:try_start_6f .. :try_end_b0} :catchall_170
    .catch Ljava/text/ParseException; {:try_start_6f .. :try_end_b0} :catch_16a
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_b0} :catch_13a

    :cond_b0
    :goto_b0
    :try_start_b0
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_b3
    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/twidroid/net/a/c/a/d;->a(Lcom/twidroid/net/a/c/a/d;I)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/twidroid/net/a/c/a/g;->d:Z

    iget-object v1, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v1, v1, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;

    if-eqz v1, :cond_d4

    iget-object v1, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v1, v1, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;

    iget-object v2, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v2, v2, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;

    invoke-interface {v1, v2}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;)V

    :cond_d4
    invoke-virtual {p0, v0}, Lcom/twidroid/net/a/c/a/g;->a(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/net/a/c/a/g;->d:Z

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v0, v0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v0, v0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;

    iget-object v1, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v1, v1, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;

    invoke-interface {v0, v1}, Lcom/twidroid/net/a/c/a/j;->b(Lcom/twidroid/model/twitter/c;)V
    :try_end_eb
    .catchall {:try_start_b0 .. :try_end_eb} :catchall_170
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_eb} :catch_13a

    :cond_eb
    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :goto_f0
    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    invoke-static {v0}, Lcom/twidroid/net/a/c/a/d;->c(Lcom/twidroid/net/a/c/a/d;)Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    invoke-static {v0}, Lcom/twidroid/net/a/c/a/d;->a(Lcom/twidroid/net/a/c/a/d;)V

    :cond_fd
    iput-boolean v7, p0, Lcom/twidroid/net/a/c/a/g;->d:Z

    :goto_ff
    return-void

    :catch_100
    move-exception v0

    move-object v2, v3

    :goto_102
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v4, v3

    goto/16 :goto_1a

    :catch_108
    move-exception v0

    move-object v4, v3

    :goto_10a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    goto/16 :goto_1a

    :catch_110
    move-exception v3

    :try_start_111
    const-string v3, "StreamWorker"

    const-string v5, "Using fallback method to detect 401 Unauthorized error"

    invoke-static {v3, v5}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_131

    invoke-static {v3}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    const-string v5, "401 Unauthorized"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v0, v1

    goto/16 :goto_26

    :cond_131
    const-string v3, "StreamWorker"

    const-string v5, "Can\'t get error message, something is wrong. Maybe there is no network connection."

    invoke-static {v3, v5}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_138
    .catchall {:try_start_111 .. :try_end_138} :catchall_170
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_138} :catch_13a

    goto/16 :goto_26

    :catch_13a
    move-exception v0

    :try_start_13b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13e
    .catchall {:try_start_13b .. :try_end_13e} :catchall_170

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_f0

    :pswitch_144
    :try_start_144
    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v0, v0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;

    if-eqz v0, :cond_157

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v0, v0, Lcom/twidroid/net/a/c/a/d;->g:Lcom/twidroid/net/a/c/a/j;

    iget-object v1, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    iget-object v1, v1, Lcom/twidroid/net/a/c/a/d;->e:Lcom/twidroid/model/twitter/c;

    sget-object v2, Lcom/twidroid/net/a/c/a/c;->a:Lcom/twidroid/net/a/c/a/c;

    invoke-interface {v0, v1, v2}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/a/c/a/c;)V

    :cond_157
    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    const v1, 0xea60

    invoke-static {v0, v1}, Lcom/twidroid/net/a/c/a/d;->a(Lcom/twidroid/net/a/c/a/d;I)I

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->b:Lcom/twidroid/net/a/c/a/d;

    invoke-static {v0}, Lcom/twidroid/net/a/c/a/d;->a(Lcom/twidroid/net/a/c/a/d;)V
    :try_end_164
    .catchall {:try_start_144 .. :try_end_164} :catchall_170
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_164} :catch_13a

    iget-object v0, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_ff

    :catch_16a
    move-exception v0

    :try_start_16b
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_16e
    .catchall {:try_start_16b .. :try_end_16e} :catchall_170
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_16e} :catch_13a

    goto/16 :goto_b0

    :catchall_170
    move-exception v0

    iget-object v1, p0, Lcom/twidroid/net/a/c/a/g;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    throw v0

    :catch_177
    move-exception v0

    goto :goto_10a

    :catch_179
    move-exception v0

    move-object v3, v2

    goto :goto_10a

    :catch_17c
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_102

    :catch_180
    move-exception v0

    move-object v3, v4

    goto :goto_102

    nop

    :pswitch_data_184
    .packed-switch 0x1a4
        :pswitch_144
    .end packed-switch
.end method
