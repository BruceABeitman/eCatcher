.class public Lco/vine/android/network/DefaultHttpOperationReader;
.super Ljava/lang/Object;
.source "DefaultHttpOperationReader.java"

# interfaces
.implements Lco/vine/android/network/HttpOperationReader;


# instance fields
.field private final mBuffer:[B

.field private final mOutputStream:Ljava/io/OutputStream;

.field private final mProgressListener:Lco/vine/android/network/ProgressListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lco/vine/android/network/DefaultHttpOperationReader;-><init>(Ljava/io/OutputStream;Lco/vine/android/network/ProgressListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lco/vine/android/network/ProgressListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mBuffer:[B

    iput-object p1, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mOutputStream:Ljava/io/OutputStream;

    iput-object p2, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mProgressListener:Lco/vine/android/network/ProgressListener;

    return-void
.end method


# virtual methods
.method public onHandleError(Lco/vine/android/network/HttpResult;)V
    .registers 2

    return-void
.end method

.method public final readInput(IILjava/io/InputStream;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, -0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v4, :cond_38

    iget-object v4, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mProgressListener:Lco/vine/android/network/ProgressListener;

    if-eqz v4, :cond_38

    new-instance v3, Lco/vine/android/network/CountingOutputStream;

    iget-object v4, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mOutputStream:Ljava/io/OutputStream;

    int-to-long v5, p2

    iget-object v7, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mProgressListener:Lco/vine/android/network/ProgressListener;

    invoke-direct {v3, v4, v5, v6, v7}, Lco/vine/android/network/CountingOutputStream;-><init>(Ljava/io/OutputStream;JLco/vine/android/network/ProgressListener;)V

    :goto_14
    iget-object v0, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mBuffer:[B

    if-gez p2, :cond_3b

    :cond_18
    :goto_18
    const/4 v4, 0x0

    :try_start_19
    array-length v5, v0

    invoke-virtual {p3, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-eq v1, v9, :cond_6d

    if-eqz v3, :cond_18

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_27

    goto :goto_18

    :catchall_27
    move-exception v4

    :cond_28
    array-length v5, v0

    invoke-virtual {p3, v0, v8, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v9, :cond_28

    if-eqz v3, :cond_37

    :try_start_31
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_37} :catch_7d

    :cond_37
    :goto_37
    throw v4

    :cond_38
    iget-object v3, p0, Lco/vine/android/network/DefaultHttpOperationReader;->mOutputStream:Ljava/io/OutputStream;

    goto :goto_14

    :cond_3b
    move v2, p2

    :cond_3c
    :goto_3c
    if-lez v2, :cond_6d

    const/4 v4, 0x0

    :try_start_3f
    array-length v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p3, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v9, :cond_63

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid content length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_63
    if-lez v1, :cond_3c

    sub-int/2addr v2, v1

    if-eqz v3, :cond_3c

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6c
    .catchall {:try_start_3f .. :try_end_6c} :catchall_27

    goto :goto_3c

    :cond_6d
    array-length v4, v0

    invoke-virtual {p3, v0, v8, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v9, :cond_6d

    if-eqz v3, :cond_7c

    :try_start_76
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7c} :catch_7f

    :cond_7c
    :goto_7c
    return-void

    :catch_7d
    move-exception v5

    goto :goto_37

    :catch_7f
    move-exception v4

    goto :goto_7c
.end method
