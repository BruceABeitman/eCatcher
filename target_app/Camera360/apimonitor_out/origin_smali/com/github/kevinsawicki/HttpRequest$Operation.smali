.class public abstract Lcom/github/kevinsawicki/HttpRequest$Operation;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kevinsawicki/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest$Operation;->run()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_15
    .catch Lcom/github/kevinsawicki/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_4} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_1a

    move-result-object v2

    :try_start_5
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest$Operation;->done()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    :cond_8
    return-object v2

    :catch_9
    move-exception v0

    if-nez v1, :cond_8

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    :catch_12
    move-exception v0

    const/4 v1, 0x1

    :try_start_14
    throw v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    :try_start_16
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest$Operation;->done()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_22

    :cond_19
    throw v2

    :catch_1a
    move-exception v0

    const/4 v1, 0x1

    :try_start_1c
    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_15

    :catch_22
    move-exception v0

    if-nez v1, :cond_19

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method protected abstract done()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract run()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
