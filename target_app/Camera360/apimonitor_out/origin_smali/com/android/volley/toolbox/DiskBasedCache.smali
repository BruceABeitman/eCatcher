.class public Lcom/android/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/android/volley/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;,
        Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    }
.end annotation


# static fields
.field private static final CACHE_MAGIC:I = 0x20120504

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x500000

.field private static final HYSTERESIS_FACTOR:F = 0.9f


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/high16 v0, 0x50

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    iput p2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    return-void
.end method

.method private getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private pruneIfNeeded(I)V
    .registers 16

    iget-wide v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v11, p1

    add-long/2addr v9, v11

    iget v11, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    sget-boolean v9, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v9, :cond_19

    const-string/jumbo v9, "Pruning old cache entries."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5b

    :goto_30
    sget-boolean v9, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v9, :cond_b

    const-string/jumbo v9, "pruned %d files, %d bytes, %d ms"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-wide v12, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    sub-long/2addr v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    :cond_5b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    iget-object v9, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_90

    iget-wide v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v11, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    :goto_7a
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v6, v6, 0x1

    iget-wide v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    int-to-long v11, p1

    add-long/2addr v9, v11

    long-to-float v9, v9

    iget v10, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    int-to-float v10, v10

    const v11, 0x3f666666

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2a

    goto :goto_30

    :cond_90
    const-string/jumbo v9, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7a
.end method

.method private putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    .registers 10

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v3, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    :goto_f
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v3, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-wide v5, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    goto :goto_f
.end method

.method private static read(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_d
    return v0
.end method

.method static readInt(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readLong(Ljava/io/InputStream;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v5, 0xff

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {p0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method static readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v3

    if-nez v3, :cond_e

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-lt v0, v3, :cond_14

    return-object v2

    :cond_e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_a

    :cond_14
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private removeEntry(Ljava/lang/String;)V
    .registers 7

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    if-eqz v0, :cond_16

    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-wide v3, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method private static streamToBytes(Ljava/io/InputStream;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p1, [B

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p1, :cond_e

    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_38

    :cond_e
    if-eq v2, p1, :cond_3a

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Expected "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes, read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_38
    add-int/2addr v2, v1

    goto :goto_3

    :cond_3a
    return-object v0
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static writeLong(Ljava/io/OutputStream;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    int-to-long v1, v1

    invoke-static {p0, v1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method static writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_31

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_18

    :goto_17
    return-void

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_11

    :cond_31
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    goto :goto_17
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 5

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_d

    array-length v3, v1

    :goto_b
    if-lt v2, v3, :cond_21

    :cond_d
    iget-object v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    const-string/jumbo v2, "Cache cleared."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_29

    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_29

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .registers 14

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v8, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_67

    if-nez v4, :cond_e

    :cond_c
    :goto_c
    monitor-exit p0

    return-object v7

    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_67

    move-result-object v5

    const/4 v0, 0x0

    :try_start_13
    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_60
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_3d

    :try_start_1e
    invoke-static {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    #getter for: Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRead:I
    invoke-static {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->access$1(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-static {v1, v8}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->toCacheEntry([B)Lcom/android/volley/Cache$Entry;
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_6c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_33} :catch_6f

    move-result-object v8

    if-eqz v1, :cond_39

    :try_start_36
    invoke-virtual {v1}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_67
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3b

    :cond_39
    move-object v7, v8

    goto :goto_c

    :catch_3b
    move-exception v6

    goto :goto_c

    :catch_3d
    move-exception v3

    :goto_3e
    :try_start_3e
    const-string/jumbo v8, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_60

    if-eqz v0, :cond_c

    :try_start_5a
    invoke-virtual {v0}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_67
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_c

    :catch_5e
    move-exception v6

    goto :goto_c

    :catchall_60
    move-exception v8

    :goto_61
    if-eqz v0, :cond_66

    :try_start_63
    invoke-virtual {v0}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_6a

    :cond_66
    :try_start_66
    throw v8
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v7

    monitor-exit p0

    throw v7

    :catch_6a
    move-exception v6

    goto :goto_c

    :catchall_6c
    move-exception v8

    move-object v0, v1

    goto :goto_61

    :catch_6f
    move-exception v3

    move-object v0, v1

    goto :goto_3e
.end method

.method public getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .registers 11

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v7, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_26

    iget-object v6, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_24

    const-string/jumbo v6, "Unable to create cache dir %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_66

    :cond_24
    monitor-exit p0

    return-void

    :cond_26
    :try_start_26
    iget-object v7, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_24

    array-length v7, v3

    :goto_2f
    if-ge v6, v7, :cond_24

    aget-object v2, v3, v6
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_66

    const/4 v4, 0x0

    :try_start_34
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_51

    :try_start_39
    invoke-static {v5}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-object v8, v1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-direct {p0, v8, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_6e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_48} :catch_71

    if-eqz v5, :cond_74

    :try_start_4a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_66
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_69

    move-object v4, v5

    :cond_4e
    :goto_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :catch_51
    move-exception v0

    :goto_52
    if-eqz v2, :cond_57

    :try_start_54
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5f

    :cond_57
    if-eqz v4, :cond_4e

    :try_start_59
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_66
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_4e

    :catch_5d
    move-exception v8

    goto :goto_4e

    :catchall_5f
    move-exception v6

    :goto_60
    if-eqz v4, :cond_65

    :try_start_62
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_6c

    :cond_65
    :goto_65
    :try_start_65
    throw v6
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception v6

    monitor-exit p0

    throw v6

    :catch_69
    move-exception v8

    move-object v4, v5

    goto :goto_4e

    :catch_6c
    move-exception v7

    goto :goto_65

    :catchall_6e
    move-exception v6

    move-object v4, v5

    goto :goto_60

    :catch_71
    move-exception v0

    move-object v4, v5

    goto :goto_52

    :cond_74
    move-object v4, v5

    goto :goto_4e
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    if-eqz v0, :cond_14

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    if-eqz p2, :cond_11

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    :cond_11
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v4, p2, Lcom/android/volley/Cache$Entry;->data:[B

    array-length v4, v4

    invoke-direct {p0, v4}, Lcom/android/volley/toolbox/DiskBasedCache;->pruneIfNeeded(I)V

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3d

    move-result-object v2

    :try_start_b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v1, p1, p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    invoke-virtual {v1, v3}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->writeHeader(Ljava/io/OutputStream;)Z

    iget-object v4, p2, Lcom/android/volley/Cache$Entry;->data:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0, p1, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_23} :catch_25

    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    :catch_25
    move-exception v4

    :try_start_26
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v4, "Could not clean up file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_3d

    goto :goto_23

    :catchall_3d
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V

    if-nez v0, :cond_21

    const-string/jumbo v1, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method
