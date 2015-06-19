.class public Lch/boye/httpclientandroidlib/impl/client/cache/DefaultHttpCacheEntrySerializer;
.super Ljava/lang/Object;
.source "DefaultHttpCacheEntrySerializer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializer;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/InputStream;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .registers 7

    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_b} :catch_f

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    return-object v0

    :catch_f
    move-exception v0

    :try_start_10
    new-instance v2, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Class not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    throw v0
.end method

.method public writeTo(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/io/OutputStream;)V
    .registers 5

    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    return-void

    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    throw v1
.end method
