.class Lcom/flurry/sdk/ek$1;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ek;->p()V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ek;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ek;)V
    .registers 2

    iput-object p1, p0, Lcom/flurry/sdk/ek$1;->a:Lcom/flurry/sdk/ek;

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentLength()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_17

    :try_start_6
    iget-object v0, p0, Lcom/flurry/sdk/ek$1;->a:Lcom/flurry/sdk/ek;

    invoke-static {v0, v1}, Lcom/flurry/sdk/ek;->a(Lcom/flurry/sdk/ek;Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_32

    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    return-void

    :catch_f
    move-exception v0

    move-object v1, v2

    :goto_11
    :try_start_11
    throw v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    :goto_13
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_17
    move-exception v0

    move-object v1, v2

    :goto_19
    :try_start_19
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_25

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_25
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_12

    :catchall_2f
    move-exception v0

    move-object v1, v2

    goto :goto_13

    :catch_32
    move-exception v0

    goto :goto_19

    :catch_34
    move-exception v0

    goto :goto_11
.end method
