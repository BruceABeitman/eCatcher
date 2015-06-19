.class public final Lcom/coremedia/iso/k;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method public static a([B)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_a

    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_c

    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 3

    if-eqz p0, :cond_9

    :try_start_2
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_7} :catch_b

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)I
    .registers 2

    if-eqz p0, :cond_a

    :try_start_2
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_c

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    :catch_c
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
