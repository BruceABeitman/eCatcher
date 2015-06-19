.class Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheHeader"
.end annotation


# instance fields
.field public etag:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serverDate:J

.field public size:J

.field public softTtl:J

.field public ttl:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->ttl:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    iget-wide v0, p2, Lcom/android/volley/Cache$Entry;->softTtl:J

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    return-void
.end method

.method public static readHeader(Ljava/io/InputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    invoke-direct {v0}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>()V

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    move-result v1

    const v2, 0x20120504

    if-eq v1, v2, :cond_14

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_14
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    :cond_2e
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public toCacheEntry([B)Lcom/android/volley/Cache$Entry;
    .registers 5

    new-instance v0, Lcom/android/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->data:[B

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->serverDate:J

    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public writeHeader(Ljava/io/OutputStream;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x20120504

    :try_start_5
    invoke-static {p1, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    iget-object v3, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;

    if-nez v3, :cond_2f

    const-string/jumbo v3, ""

    :goto_14
    invoke-static {p1, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->serverDate:J

    invoke-static {p1, v3, v4}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->ttl:J

    invoke-static {p1, v3, v4}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->softTtl:J

    invoke-static {p1, v3, v4}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

    iget-object v3, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->responseHeaders:Ljava/util/Map;

    invoke-static {v3, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :goto_2e
    return v1

    :cond_2f
    iget-object v3, p0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->etag:Ljava/lang/String;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_31} :catch_32

    goto :goto_14

    :catch_32
    move-exception v0

    const-string/jumbo v3, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_2e
.end method
