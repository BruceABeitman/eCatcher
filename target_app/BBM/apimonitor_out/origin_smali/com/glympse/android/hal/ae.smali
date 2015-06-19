.class Lcom/glympse/android/hal/ae;
.super Ljava/lang/Object;
.source "GlympseHttpConnection.java"

# interfaces
.implements Lcom/glympse/android/hal/GHttpConnection;


# instance fields
.field private bl:Ljava/net/HttpURLConnection;

.field private bm:I

.field private bn:[B

.field private bo:[B

.field private bp:Z

.field private bq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_d

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/glympse/android/hal/ae;->bo:[B

    iput-object v0, p0, Lcom/glympse/android/hal/ae;->bq:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/net/URL;Ljava/net/HttpURLConnection;)V
    .registers 4

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_16
    return-void
.end method

.method private p()Ljava/io/OutputStream;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_10

    :try_start_4
    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private q()Ljava/io/InputStream;
    .registers 6

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_4c

    :try_start_7
    iget-object v1, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_4d

    move-result-object v1

    :goto_d
    if-nez v1, :cond_31

    const-string v0, "Failed to get input stream.  Attempting to get error stream."

    invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :try_start_14
    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Error stream: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_53

    const-string v0, "null"

    :goto_26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_31} :catch_56

    :cond_31
    :goto_31
    :try_start_31
    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Encoding"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_4c} :catch_5b

    :cond_4c
    :goto_4c
    return-object v0

    :catch_4d
    move-exception v1

    invoke-static {v1, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    move-object v1, v0

    goto :goto_d

    :cond_53
    :try_start_53
    const-string v0, "not null"
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_55} :catch_56

    goto :goto_26

    :catch_56
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_31

    :catch_5b
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_5f
    move-object v0, v1

    goto :goto_4c
.end method

.method private r()Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/glympse/android/hal/ae;->bp:Z

    if-eqz v2, :cond_c

    :cond_a
    move v0, v1

    :cond_b
    :goto_b
    return v0

    :cond_c
    iput-boolean v0, p0, Lcom/glympse/android/hal/ae;->bp:Z

    const/4 v2, 0x0

    :try_start_f
    iget-object v3, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response content-length: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/glympse/android/hal/ae;->q()Ljava/io/InputStream;
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_9a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_2d} :catch_56

    move-result-object v2

    if-nez v2, :cond_3c

    if-eqz v2, :cond_35

    :try_start_32
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_37

    :cond_35
    :goto_35
    move v0, v1

    goto :goto_b

    :catch_37
    move-exception v0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_35

    :cond_3c
    :try_start_3c
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x200

    if-gt v3, v5, :cond_62

    const/16 v3, 0x400

    :goto_47
    new-array v3, v3, [B

    :goto_49
    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v2, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_6b

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_9a
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_55} :catch_56

    goto :goto_49

    :catch_56
    move-exception v0

    const/4 v3, 0x0

    :try_start_58
    invoke-static {v0, v3}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_9a

    if-eqz v2, :cond_60

    :try_start_5d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_95

    :cond_60
    :goto_60
    move v0, v1

    goto :goto_b

    :cond_62
    const/16 v5, 0x2000

    mul-int/lit8 v3, v3, 0x2

    :try_start_66
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_47

    :cond_6b
    const/4 v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response bytes read: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/glympse/android/hal/ae;->bo:[B
    :try_end_88
    .catchall {:try_start_66 .. :try_end_88} :catchall_9a
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_88} :catch_56

    if-eqz v2, :cond_b

    :try_start_8a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8d} :catch_8f

    goto/16 :goto_b

    :catch_8f
    move-exception v2

    invoke-static {v2, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto/16 :goto_b

    :catch_95
    move-exception v0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_60

    :catchall_9a
    move-exception v0

    if-eqz v2, :cond_a0

    :try_start_9d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a0} :catch_a1

    :cond_a0
    :goto_a0
    throw v0

    :catch_a1
    move-exception v2

    invoke-static {v2, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_a0
.end method


# virtual methods
.method public close()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1c

    :try_start_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1e

    invoke-static {}, Lcom/glympse/android/hal/GlympseThreadPool;->instance()Lcom/glympse/android/hal/GlympseThreadPool;

    move-result-object v0

    new-instance v1, Lcom/glympse/android/hal/af;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/glympse/android/hal/af;-><init>(Lcom/glympse/android/hal/ae;Lcom/glympse/android/hal/ae$1;)V

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GlympseThreadPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_23} :catch_26

    :goto_23
    iput-object v3, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    goto :goto_1c

    :catch_26
    move-exception v0

    goto :goto_23
.end method

.method public establish()V
    .registers 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {v1}, Lcom/glympse/android/hal/DebugBase;->logMemory(Landroid/content/Context;)V

    iget v0, p0, Lcom/glympse/android/hal/ae;->bm:I

    if-lez v0, :cond_6

    :try_start_e
    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    iget v2, p0, Lcom/glympse/android/hal/ae;->bm:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :cond_19
    invoke-direct {p0}, Lcom/glympse/android/hal/ae;->p()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bn:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/glympse/android/hal/ae;->bm:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_45
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2a} :catch_35

    :cond_2a
    if-eqz v1, :cond_6

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_6

    :catch_30
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_6

    :catch_35
    move-exception v0

    const/4 v2, 0x0

    :try_start_37
    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_45

    if-eqz v1, :cond_6

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_6

    :catch_40
    move-exception v0

    invoke-static {v0, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_6

    :catchall_45
    move-exception v0

    if-eqz v1, :cond_4b

    :try_start_48
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_4c

    :cond_4b
    :goto_4b
    throw v0

    :catch_4c
    move-exception v1

    invoke-static {v1, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_4b
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/glympse/android/hal/Helpers;->logTODO()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseCode()I
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_30

    :try_start_6
    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_d

    move-result v0

    :cond_c
    :goto_c
    return v0

    :catch_d
    move-exception v0

    move-object v2, v0

    :try_start_f
    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    const-string v3, "status"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    const/16 v3, 0x20

    invoke-static {v0, v3}, Lcom/glympse/android/hal/Helpers;->strSplit(Ljava/lang/String;C)Ljava/util/Vector;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_2d} :catch_4d

    move-result v0

    if-gtz v0, :cond_c

    :cond_30
    :goto_30
    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/io/IOException;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Received authentication challenge is null"

    invoke-static {v0, v3}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/16 v0, 0x191

    goto :goto_c

    :catch_4d
    move-exception v0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_30

    :cond_52
    const/4 v0, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GlympseHttpConnection.getResponseCode() threw "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :cond_69
    move v0, v1

    goto :goto_c
.end method

.method public getResponseData()[B
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/hal/ae;->bp:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/glympse/android/hal/ae;->r()Z

    :cond_7
    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bo:[B

    return-object v0
.end method

.method public getResponseDataLength()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/glympse/android/hal/ae;->getResponseData()[B

    move-result-object v1

    if-eqz v1, :cond_9

    array-length v0, v1

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget-object v1, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_14

    move-result v0

    goto :goto_8

    :catch_14
    move-exception v1

    invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_8
.end method

.method public getResponseDataString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bq:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bq:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/glympse/android/hal/ae;->getResponseData()[B

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/glympse/android/hal/ae;->bq:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bq:Ljava/lang/String;

    goto :goto_6

    :cond_17
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    :try_start_4
    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPost()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setConnectTimeout(I)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_9
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/glympse/android/hal/Helpers;->logTODO()V

    return-void
.end method

.method public setFollowRedirects(Z)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_9
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_9
    return-void
.end method

.method public setRequestData(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/hal/ae;->bn:[B

    iput v1, p0, Lcom/glympse/android/hal/ae;->bm:I

    if-eqz p1, :cond_15

    :try_start_8
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/hal/ae;->bn:[B

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bn:[B

    array-length v0, v0

    iput v0, p0, Lcom/glympse/android/hal/ae;->bm:I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_15
.end method

.method public setRequestData([BI)V
    .registers 3

    iput-object p1, p0, Lcom/glympse/android/hal/ae;->bn:[B

    iput p2, p0, Lcom/glympse/android/hal/ae;->bm:I

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setRequestMethod(Z)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_18

    :try_start_4
    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v1, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_19

    const-string v0, "POST"

    :goto_15
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    const-string v0, "GET"
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_15

    :catch_1c
    move-exception v0

    goto :goto_18
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/glympse/android/hal/ConnectivityChecker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    const-string v1, "[GlympseHttpConnection.setUrl] Not connected"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    invoke-static {v1, v0}, Lcom/glympse/android/hal/ae;->a(Ljava/net/URL;Ljava/net/HttpURLConnection;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3c} :catch_5a

    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_25

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to open URL: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_25

    :catch_5a
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/hal/ae;->bl:Ljava/net/HttpURLConnection;

    goto :goto_3c
.end method
